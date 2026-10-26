int __fastcall sub_15BB8(int a1, int a2, _DWORD *a3)
{
  char *v5; // r10
  int v6; // r7
  __int16 v7; // r8
  int v8; // r9
  int v9; // r6
  int v10; // r10
  int result; // r0
  bool v12; // zf
  int v13; // r0
  int v14; // r0
  int v15; // r1
  unsigned int v16; // r1
  int v17; // r6
  int v18; // r1
  __int16 v19; // r0
  int v20; // r0
  bool v21; // zf
  bool v22; // cc
  int v23; // r0
  bool v24; // zf
  bool v25; // cc
  int v26; // r0
  int v27; // r11
  int v28; // r1
  __int16 v29; // r0
  int v30; // r6
  _DWORD v31[33]; // [sp+0h] [bp-8Ch] BYREF
  int v32; // [sp+84h] [bp-8h]
  _DWORD *v33; // [sp+88h] [bp-4h]

  v31[32] = a1;
  v32 = a2;
  v33 = a3;
  v5 = (char *)off_1618C + 89044;
  v6 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_1618C + 0xFFFFFFFC + 89044) + 192))() + 40);
  v7 = *(_WORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v5[-4] + 192))() + 1888) + dword_16190);
  v8 = *(__int16 *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v5[-4] + 192))() + 1888) + 448);
  v9 = *(__int16 *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v5[-4] + 192))() + 1888) + dword_16194);
  v10 = *(__int16 *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v5[-4] + 192))() + 1888) + 444);
  result = *(_DWORD *)(a1 + 64);
  if ( v32 == 18 )
  {
    *(_BYTE *)(a1 + 5) = 18;
    result = *(unsigned __int16 *)(a1 + 62) + 1;
    *(_WORD *)(a1 + 62) = result;
    *(_BYTE *)(a1 + 20) = 0;
    *(_BYTE *)(a1 + 21) = 0;
    return result;
  }
  if ( v32 <= 18 )
  {
    v12 = v32 == 1;
    if ( v32 != 1 )
      v12 = v32 == 2;
    if ( v12 )
    {
      *(_WORD *)(a1 + 46) = a3[1];
      *(_WORD *)(a1 + 44) = a3[2];
      *(_WORD *)(a1 + 42) = 0;
      *(_BYTE *)(a1 + 5) = v32;
      goto LABEL_68;
    }
    if ( v32 != 4 )
    {
      if ( v32 == 17 )
      {
        sub_EE4(*(_DWORD *)(a1 + 12), a3[6], (unsigned __int16)a3[4], a3[5], a3[2]);
        *(_BYTE *)(a1 + 5) = 17;
LABEL_68:
        result = *(unsigned __int16 *)(a1 + 62) + 1;
        *(_WORD *)(a1 + 62) = result;
        return result;
      }
      return result;
    }
    *(_BYTE *)(a1 + 5) = 4;
    sub_602C(*(_DWORD *)(a1 + 8));
    *(_BYTE *)(*(_DWORD *)(a1 + 8) + 300) = 1;
    *(_BYTE *)(*(_DWORD *)(a1 + 8) + 292) = 1;
    *(_WORD *)(*(_DWORD *)(a1 + 8) + 302) = 1;
    *(_WORD *)(*(_DWORD *)(a1 + 8) + 158) = 2;
    v13 = a3[3];
    if ( v13 == 1 )
    {
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 306) = 1;
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 150) = v9;
      v16 = v9 - 98;
      v17 = *(_DWORD *)(a1 + 8);
      sub_104(0xEu, v16);
      *(_WORD *)(v17 + 154) = v18 / 2 + 14;
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 156) = 1;
      if ( (int)a3[4] > 0 )
        v19 = 34;
      else
        v19 = 50;
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 152) = v19;
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 146) = v7 + 70;
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 148) = v8 + (v10 - *(__int16 *)(*(_DWORD *)(a1 + 8) + 152)) / 2;
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 288) = 16;
      *(_DWORD *)(*(_DWORD *)(a1 + 8) + 124) = -1;
      v20 = (__int16)a3[4];
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 304) = v20;
      if ( v20 > 0 )
      {
        LOWORD(v31[0]) = 0;
        sub_19618(v6, *(__int16 *)(*(_DWORD *)(a1 + 8) + 304), v31, 128);
        v21 = LOWORD(v31[0]) == 29696;
        v22 = LOWORD(v31[0]) <= 0x7400u;
        if ( LOWORD(v31[0]) >= 0x7400u )
        {
          v21 = LOWORD(v31[0]) == 29790;
          v22 = LOWORD(v31[0]) - 29696 <= 94;
        }
        if ( v21 )
        {
          v23 = dword_16198;
        }
        else if ( v22 )
        {
          if ( LOWORD(v31[0]) == 20811 )
          {
            v23 = dword_1619C;
          }
          else
          {
            if ( LOWORD(v31[0]) != 26705 )
              goto LABEL_65;
            v23 = dword_161A0;
          }
        }
        else if ( LOWORD(v31[0]) == 35946 )
        {
          v23 = dword_161A4;
        }
        else
        {
          if ( LOWORD(v31[0]) != 36798 )
            goto LABEL_65;
          v23 = dword_161A8;
        }
        *(_DWORD *)(*(_DWORD *)(a1 + 8) + 124) = v23;
      }
LABEL_65:
      *(_DWORD *)(*(_DWORD *)(a1 + 8) + 16) = -1;
      result = sub_19618(v6, a3[6], 0, 0);
      v30 = result;
      if ( result >= 0 )
      {
        result = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_161AC + 0xFFFFFFFC + 90424) + 104))(result);
        *(_DWORD *)(*(_DWORD *)(a1 + 8) + 160) = result;
        if ( result )
        {
          sub_19618(v6, a3[6], result, v30);
          *(_WORD *)(*(_DWORD *)(a1 + 8) + 290) = 1;
          goto LABEL_68;
        }
      }
      return result;
    }
    if ( v13 != 2 )
    {
      if ( v13 == 3 )
      {
        *(_WORD *)(*(_DWORD *)(a1 + 8) + 306) = 0;
        *(_WORD *)(*(_DWORD *)(a1 + 8) + 154) = 4;
        *(_WORD *)(*(_DWORD *)(a1 + 8) + 156) = 4;
        *(_WORD *)(*(_DWORD *)(a1 + 8) + 152) = 24;
        *(_WORD *)(*(_DWORD *)(a1 + 8) + 150) = v9 / 2;
        *(_WORD *)(*(_DWORD *)(a1 + 8) + 146) = v7 + v9 / 4;
        v14 = *(_DWORD *)(a1 + 8);
        v15 = v8 + (v10 - *(__int16 *)(v14 + 152)) / 2;
LABEL_64:
        *(_WORD *)(v14 + 148) = v15;
        *(_WORD *)(*(_DWORD *)(a1 + 8) + 288) = 16;
        goto LABEL_65;
      }
      goto LABEL_65;
    }
    *(_WORD *)(*(_DWORD *)(a1 + 8) + 304) = a3[4];
    *(_WORD *)(*(_DWORD *)(a1 + 8) + 306) = 2;
    *(_DWORD *)(*(_DWORD *)(a1 + 8) + 124) = -1;
    if ( *(__int16 *)(*(_DWORD *)(a1 + 8) + 304) <= 0 )
    {
LABEL_60:
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 150) = v9;
      v27 = *(_DWORD *)(a1 + 8);
      sub_104(0xEu, v9 - 20);
      *(_WORD *)(v27 + 154) = v28 / 2 + 10;
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 156) = 1;
      if ( (int)a3[4] > 0 )
        v29 = 34;
      else
        v29 = 50;
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 152) = v29;
      *(_WORD *)(*(_DWORD *)(a1 + 8) + 146) = v7;
      v14 = *(_DWORD *)(a1 + 8);
      LOWORD(v15) = v8 + v10 - *(_WORD *)(v14 + 152) - 7;
      goto LABEL_64;
    }
    LOWORD(v31[0]) = 0;
    sub_19618(v6, *(__int16 *)(*(_DWORD *)(a1 + 8) + 304), v31, 128);
    v24 = LOWORD(v31[0]) == 29696;
    v25 = LOWORD(v31[0]) <= 0x7400u;
    if ( LOWORD(v31[0]) >= 0x7400u )
    {
      v24 = LOWORD(v31[0]) == 29790;
      v25 = LOWORD(v31[0]) - 29696 <= 94;
    }
    if ( v24 )
    {
      v26 = dword_16198;
LABEL_58:
      *(_DWORD *)(*(_DWORD *)(a1 + 8) + 124) = v26;
      goto LABEL_60;
    }
    if ( v25 )
    {
      if ( LOWORD(v31[0]) == 20811 )
      {
        v26 = dword_1619C;
        goto LABEL_58;
      }
      if ( LOWORD(v31[0]) == 26705 )
      {
        v26 = dword_161A0;
        goto LABEL_58;
      }
    }
    else
    {
      if ( LOWORD(v31[0]) == 35946 )
      {
        v26 = dword_161A4;
        goto LABEL_58;
      }
      if ( LOWORD(v31[0]) == 36798 )
      {
        v26 = dword_161A8;
        goto LABEL_58;
      }
    }
    *(_DWORD *)(*(_DWORD *)(a1 + 8) + 124) = -1;
    goto LABEL_60;
  }
  switch ( v32 )
  {
    case 19:
      *(_BYTE *)(a1 + 5) = 19;
      *(_WORD *)(a1 + 32) = a3[1];
      *(_WORD *)(a1 + 22) = a3[2];
      *(_WORD *)(a1 + 28) = 32 * *((_WORD *)a3 + 6) + 16;
      *(_WORD *)(a1 + 30) = 32 * *((_WORD *)a3 + 8) + 16;
      *(_WORD *)(a1 + 24) = **(_DWORD **)(result + 804);
      *(_WORD *)(a1 + 26) = **(_DWORD **)(result + 808);
      *(_WORD *)(a1 + 34) = 0;
      goto LABEL_68;
    case 20:
      *(_BYTE *)(a1 + 5) = 20;
      *(_WORD *)(a1 + 22) = a3[1];
      *(_BYTE *)(a1 + 36) = a3[2];
      goto LABEL_68;
    case 21:
      *(_BYTE *)(a1 + 5) = 21;
      *(_BYTE *)(a1 + 20) = 0;
      *(_WORD *)(a1 + 48) = *(_WORD *)(a1 + 74);
      goto LABEL_68;
  }
  return result;
}

