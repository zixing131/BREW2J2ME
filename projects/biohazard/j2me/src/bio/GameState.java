package bio;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/** Deterministic 20 Hz technology-demo simulation, deliberately not the original level. */
public final class GameState {
    public static final int UNIT = 1024;
    public static final int FORWARD = 1, BACK = 2, LEFT = 4, RIGHT = 8;
    public static final int FIRE = 16, STRAFE_LEFT = 32, STRAFE_RIGHT = 64;
    public static final int PLAYING = 0, WON = 1, DEAD = 2;
    public static final String[] MAP = {
        "1111111111111111", "1000000000000001", "1000000100000001", "1000000100000001",
        "1000000100000001", "1000000000000001", "1110111111001101", "1000000000000001",
        "1000000000000001", "1001100011100001", "1000100000100001", "1000100000100001",
        "1000000000000001", "1000000000000001", "1000000000000001", "1111111111111111"
    };
    public int x, y, angle, health, ammo, ticks, cooldown, hurt, flash, status, kills;
    public int[] enemyX = new int[4], enemyY = new int[4], enemyHealth = new int[4];
    public static final int EXIT_X = 14 * UNIT + UNIT / 2, EXIT_Y = 14 * UNIT + UNIT / 2;
    public GameState() { reset(); }
    public void reset() {
        x = 3 * UNIT + UNIT / 2; y = 3 * UNIT + UNIT / 2; angle = 0;
        health = 100; ammo = 48; ticks = cooldown = hurt = flash = kills = 0; status = PLAYING;
        int[] xs = {5, 10, 6, 12}, ys = {3, 5, 8, 12};
        for (int i = 0; i < 4; i++) { enemyX[i] = xs[i] * UNIT + UNIT / 2;
            enemyY[i] = ys[i] * UNIT + UNIT / 2; enemyHealth[i] = 3; }
    }
    public static boolean wall(int cx, int cy) {
        return cy < 0 || cy >= MAP.length || cx < 0 || cx >= MAP[0].length() || MAP[cy].charAt(cx) != '0';
    }
    public static boolean fits(int px, int py) {
        int r = 180;
        return !wall((px-r)>>10, (py-r)>>10) && !wall((px+r)>>10, (py-r)>>10)
            && !wall((px-r)>>10, (py+r)>>10) && !wall((px+r)>>10, (py+r)>>10);
    }
    public static int abs(int n) { return n < 0 ? -n : n; }
    public static int cos(int a) { return Trig.SIN[(a + 64) & 255]; }
    public static int sin(int a) { return Trig.SIN[a & 255]; }
    public static boolean visible(int ax, int ay, int bx, int by) {
        int dx = bx-ax, dy = by-ay, n = Math.max(abs(dx), abs(dy)) / 128 + 1;
        for (int i = 1; i <= n; i++)
            if (wall((ax + dx*i/n)>>10, (ay + dy*i/n)>>10)) return false;
        return true;
    }
    public void update(int input) {
        if (status != PLAYING) return;
        ticks++; if (cooldown > 0) cooldown--; if (hurt > 0) hurt--; if (flash > 0) flash--;
        if ((input & LEFT) != 0) angle = (angle - 4) & 255;
        if ((input & RIGHT) != 0) angle = (angle + 4) & 255;
        int f = ((input & FORWARD) != 0 ? 1 : 0) - ((input & BACK) != 0 ? 1 : 0);
        int s = ((input & STRAFE_RIGHT) != 0 ? 1 : 0) - ((input & STRAFE_LEFT) != 0 ? 1 : 0);
        int speed = f != 0 && s != 0 ? 58 : 82;
        int dx = (cos(angle)*f - sin(angle)*s)*speed / UNIT;
        int dy = (sin(angle)*f + cos(angle)*s)*speed / UNIT;
        if (fits(x+dx, y)) x += dx; if (fits(x, y+dy)) y += dy;
        if ((input & FIRE) != 0 && cooldown == 0 && ammo > 0) shoot();
        for (int i=0; i<enemyX.length; i++) {
            if (enemyHealth[i] <= 0) continue;
            dx=x-enemyX[i]; dy=y-enemyY[i]; int dist=Math.max(abs(dx),abs(dy));
            if (!visible(enemyX[i],enemyY[i],x,y)) continue;
            if (dist < 650) {
                if (hurt == 0) { health=Math.max(0,health-8); hurt=12; }
            } else {
                int nx=enemyX[i]+dx*24/dist, ny=enemyY[i]+dy*24/dist;
                if (fits(nx,enemyY[i])) enemyX[i]=nx;
                if (fits(enemyX[i],ny)) enemyY[i]=ny;
            }
        }
        if (health == 0) status=DEAD;
        else if (kills == 4 && abs(x-EXIT_X)<600 && abs(y-EXIT_Y)<600) status=WON;
    }
    private void shoot() {
        ammo--; cooldown=7; flash=2; int best=-1, nearest=12*UNIT;
        for (int i=0;i<enemyX.length;i++) {
            if (enemyHealth[i] <= 0) continue;
            int dx=enemyX[i]-x,dy=enemyY[i]-y;
            int forward=(dx*cos(angle)+dy*sin(angle))/UNIT;
            int side=abs((-dx*sin(angle)+dy*cos(angle))/UNIT);
            if (forward>0 && forward<nearest && side<280+forward/24 && visible(x,y,enemyX[i],enemyY[i])) {
                best=i; nearest=forward;
            }
        }
        if (best>=0 && --enemyHealth[best]==0) kills++;
    }
    public void write(DataOutputStream out) throws IOException {
        out.writeInt(0x42494f31); out.writeInt(1);
        out.writeInt(x);out.writeInt(y);out.writeInt(angle);out.writeInt(health);out.writeInt(ammo);
        out.writeInt(ticks);out.writeInt(kills);out.writeInt(status);
        for(int i=0;i<4;i++){out.writeInt(enemyX[i]);out.writeInt(enemyY[i]);out.writeInt(enemyHealth[i]);}
    }
    /** Validate a separate instance before replacing the active state. */
    public static GameState read(DataInputStream in) throws IOException {
        if(in.readInt()!=0x42494f31 || in.readInt()!=1)throw new IOException("Save version");
        GameState s=new GameState();
        s.x=in.readInt();s.y=in.readInt();s.angle=in.readInt();s.health=in.readInt();s.ammo=in.readInt();
        s.ticks=in.readInt();s.kills=in.readInt();s.status=in.readInt();
        int dead=0;
        for(int i=0;i<4;i++){
            s.enemyX[i]=in.readInt();s.enemyY[i]=in.readInt();s.enemyHealth[i]=in.readInt();
            if(s.enemyHealth[i]<0 || s.enemyHealth[i]>3 || !validPosition(s.enemyX[i],s.enemyY[i]))throw new IOException("Enemy state");
            if(s.enemyHealth[i]==0)dead++;
        }
        if(!validPosition(s.x,s.y) || s.angle<0 || s.angle>255 || s.health<0 || s.health>100
            || s.ammo<0 || s.ammo>48 || s.kills!=dead || s.ticks<0 || s.status<0 || s.status>2
            || (s.status==DEAD)!=(s.health==0) || (s.status==WON && (s.kills!=4
            || abs(s.x-EXIT_X)>=600 || abs(s.y-EXIT_Y)>=600)) || in.read()!=-1)throw new IOException("Invalid save");
        return s;
    }
    private static boolean validPosition(int px,int py){
        return px>0 && py>0 && px<16*UNIT && py<16*UNIT && fits(px,py);
    }
}
