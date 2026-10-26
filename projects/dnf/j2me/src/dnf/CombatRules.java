package dnf;
/** Ordinary native damage branches 0x7c298/7bf58/7c8bc/7c544.
 * No learned passives, reinforcement, critical or on-hit status effects here. */
public final class CombatRules {
    public static int element(int player,int enemy){
        if(player<1||player>4||enemy<1||enemy>4)return 0;
        if(player==enemy)return -20;
        return (player==1&&enemy==2||player==2&&enemy==1||player==3&&enemy==4||player==4&&enemy==3)?20:0;
    }
    public static int damage(boolean fixed,boolean magic,int power,int attribute,int weapon,int bonus,int extra,int defence,int enemyLevel,int playerElement,int enemyElement,int span,int roll){
        int raw=fixed?power+bonus+attribute*power/200:power*(weapon+bonus)/100+attribute/2;
        int reduction=Math.max(1,100*defence/(80*enemyLevel+150));
        raw=raw*(100-reduction)/100+extra;
        raw+=element(playerElement,enemyElement)*raw/100;
        // The two fixed branches narrow AFTER random spread; magical percent narrows before it.
        if(fixed)raw=(raw+roll-span)&65535;
        else {if(magic)raw&=65535;raw+=roll-span;}
        return Math.max(1,raw);
    }
}
