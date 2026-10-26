int sub_39FF4()
{
  int v0; // r0
  int v1; // r7
  int v2; // r6
  int v3; // r7
  int v4; // r7
  int v5; // r0
  int v6; // r3
  int v7; // r7
  int v9; // [sp+10h] [bp-34h]
  int v10; // [sp+14h] [bp-30h]
  int i; // [sp+18h] [bp-2Ch]
  int j; // [sp+1Ch] [bp-28h]
  int v13; // [sp+20h] [bp-24h]
  int k; // [sp+24h] [bp-20h]
  char v15[16]; // [sp+28h] [bp-1Ch] BYREF
  int v16; // [sp+38h] [bp-Ch]
  int v17; // [sp+3Ch] [bp-8h] BYREF
  int v18; // [sp+40h] [bp-4h] BYREF
  _DWORD savedregs[5]; // [sp+44h] [bp+0h]

  strcpy(v15, "reactionData.bd");
  v16 = 0;
  v0 = ((int (*)(void))sub_66A76)();
  v9 = v0;
  if ( v0 )
  {
    sub_66A7A(&v17, v0 + 2, 4);
    sub_66A7A(&v18, v9 + 6, 4);
    v10 = sub_66A7C(v17 + 2);
    sub_66A78(v9 + 10, v10, v17, v18, 6);
    sub_66A7A(&byte_1534728, v10, 2);
    v1 = v10 + 2;
    dword_1534724 = sub_66A7C(8 * (unsigned __int8)byte_1534728 + 2);
    dword_153472C = dword_1534724;
    for ( i = 0; i < (unsigned __int8)byte_1534728; ++i )
    {
      sub_66A7A(8 * i + dword_153472C, v1, 2);
      sub_66A7A(8 * i + dword_153472C + 2, v1 + 2, 2);
      sub_66A7A(8 * i + dword_153472C + 4, v1 + 4, 1);
      v1 += 5;
    }
    sub_66A7A(&byte_1533BE8, v1, 2);
    v2 = v1 + 2;
    v3 = 0;
    dword_1533BE4 = sub_66A76(12 * (unsigned __int8)byte_1533BE8 + 2);
    dword_1533BEC = dword_1533BE4;
    for ( j = 0; j < (unsigned __int8)byte_1533BE8; ++j )
    {
      sub_66A7A(v3 + dword_1533BEC, v2, 2);
      sub_66A7A(v3 + dword_1533BEC + 2, v2 + 2, 1);
      sub_66A7A(v3 + dword_1533BEC + 4, v2 + 3, 1);
      sub_66A7A(v3 + dword_1533BEC + 6, v2 + 4, 1);
      sub_66A7A(v3 + dword_1533BEC + 7, v2 + 5, 1);
      sub_66A7A(v3 + dword_1533BEC + 8, v2 + 6, 1);
      v2 += 7;
      v3 += 12;
    }
    sub_66A7A(&byte_1534D94, v2, 2);
    v4 = v2 + 2;
    v5 = sub_66A76(4 * (unsigned __int8)byte_1534D94 + 2);
    v6 = 0;
    dword_1534D90 = v5;
    dword_1534D98 = v5;
    while ( 1 )
    {
      v13 = v6;
      if ( v6 >= (unsigned __int8)byte_1534D94 )
        break;
      sub_66A7A(4 * v6 + dword_1534D98, v4, 1);
      sub_66A7A(4 * v13 + dword_1534D98 + 1, v4 + 1, 1);
      v4 += 2;
      v6 = v13 + 1;
    }
    sub_66A7A(&byte_15340C8, v4, 2);
    v7 = v4 + 2;
    dword_15340C4 = sub_66A76(4 * (unsigned __int8)byte_15340C8 + 2);
    dword_15340CC = dword_15340C4;
    for ( k = 0; k < (unsigned __int8)byte_15340C8; ++k )
    {
      sub_66A7A(4 * k + dword_15340CC, v7, 1);
      sub_66A7A(4 * k + dword_15340CC + 1, v7 + 1, 1);
      v7 += 2;
    }
    if ( v10 )
      sub_66A76(v10);
    sub_66A76(v9);
  }
  return savedregs[4];
}
