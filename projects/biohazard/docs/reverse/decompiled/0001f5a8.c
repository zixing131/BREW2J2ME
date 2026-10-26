int __fastcall sub_1F5A8(int a1, int a2, int a3)
{
  bool v4; // zf
  bool v5; // cc
  bool v6; // zf
  int v7; // r2
  int v8; // r12
  int v9; // r3
  int v10; // r2
  bool v11; // zf
  int v12; // r1
  int v13; // r5
  bool v14; // cc
  int v15; // r0
  bool v16; // zf
  int v17; // r0
  unsigned int v18; // r0
  int v20; // [sp+0h] [bp-14h] BYREF
  unsigned __int8 v21; // [sp+Ch] [bp-8h]

  if ( a2 != 256 )
  {
    if ( a2 == 257 )
    {
      switch ( a3 )
      {
        case 57378:
          v18 = *(_DWORD *)(a1 + 2116) | 4;
          goto LABEL_60;
        case 57379:
        case 57393:
          v18 = *(_DWORD *)(a1 + 2116) | 1;
          goto LABEL_60;
        case 57380:
          v18 = *(_DWORD *)(a1 + 2116) | 8;
          goto LABEL_60;
        case 57381:
        case 57395:
          v18 = *(_DWORD *)(a1 + 2116) | 0x100;
          goto LABEL_60;
        case 57383:
        case 57396:
          v18 = *(_DWORD *)(a1 + 2116) | 0x200;
          goto LABEL_60;
        case 57385:
        case 57394:
          v18 = *(_DWORD *)(a1 + 2116) | 2;
LABEL_60:
          *(_DWORD *)(a1 + 2116) = v18;
          break;
        default:
          return 1;
      }
    }
    else if ( a2 == 258 )
    {
      switch ( a3 )
      {
        case 57378:
          v18 = *(_DWORD *)(a1 + 2116) & 0xFFFFFFFB;
          goto LABEL_60;
        case 57379:
        case 57393:
          v18 = *(_DWORD *)(a1 + 2116) & 0xFFFFFFFE;
          goto LABEL_60;
        case 57380:
          v18 = *(_DWORD *)(a1 + 2116) & 0xFFFFFFF7;
          goto LABEL_60;
        case 57381:
        case 57395:
          v18 = *(_DWORD *)(a1 + 2116) & 0xFFFFFEFF;
          goto LABEL_60;
        case 57383:
        case 57396:
          v18 = *(_DWORD *)(a1 + 2116) & 0xFFFFFDFF;
          goto LABEL_60;
        case 57385:
        case 57394:
          v18 = *(_DWORD *)(a1 + 2116) & 0xFFFFFFFD;
          goto LABEL_60;
        default:
          return 1;
      }
    }
    return 1;
  }
  v4 = a3 == 57344;
  v5 = a3 <= 57344;
  if ( a3 >= 57344 )
  {
    v4 = a3 == 57385;
    v5 = a3 - 57344 <= 41;
  }
  if ( v4 )
  {
LABEL_44:
    if ( *(_BYTE *)(a1 + 2160) == 1 )
    {
      *(_BYTE *)(a1 + 2160) = 0;
      sub_21FB4(a1, 0);
    }
    return 1;
  }
  if ( !v5 )
  {
    if ( a3 != 57394 )
    {
      if ( a3 != 57397 )
        return 1;
      goto LABEL_27;
    }
    goto LABEL_44;
  }
  if ( a3 == 57382 )
  {
LABEL_27:
    v11 = *(_BYTE *)(a1 + 2130) == 0;
    if ( !*(_BYTE *)(a1 + 2130) )
      v11 = *(_BYTE *)(a1 + 2125) == 0;
    if ( v11 )
    {
      v11 = *(_BYTE *)(a1 + 2129) == 0;
      if ( !*(_BYTE *)(a1 + 2129) )
      {
        v11 = *(_BYTE *)(a1 + 2124) == 0;
        if ( !*(_BYTE *)(a1 + 2124) )
          v11 = *(_BYTE *)(a1 + 2140) == 0;
      }
    }
    if ( v11 )
    {
      *(_BYTE *)(a1 + 2129) = 1;
      v12 = *(_DWORD *)(a1 + 2224);
      v13 = *(__int16 *)(dword_1F8B8 + v12);
      v14 = v13 <= 0;
      if ( v13 >= 0 )
        v14 = *(__int16 *)(v12 + 540) <= v13;
      if ( !v14 )
      {
        sub_12F30((int)&v20, v12, *(unsigned __int16 *)(dword_1F8B8 + v12));
        v15 = v21;
        v16 = v21 == 0;
        if ( !v21 )
        {
          v15 = *(_DWORD *)(a1 + 2224);
          v16 = *(_BYTE *)(v15 + 8 * v13 + 549) == 0;
        }
        if ( v16 && *(int *)(v15 + 36) <= 0 )
        {
          v17 = (*(int (**)(void))(*(_DWORD *)((char *)off_1F8BC + 0xFFFFFFFC + 128892) + 192))();
          sub_E00(*(_DWORD *)(v17 + 1888) + 544, 0, dword_1F8C0, 0);
        }
      }
    }
    return 1;
  }
  v6 = a3 == 57384;
  if ( a3 == 57384 )
    v6 = *(_BYTE *)(a1 + 2125) == 0;
  if ( v6 )
  {
    v6 = *(_BYTE *)(a1 + 2124) == 0;
    if ( !*(_BYTE *)(a1 + 2124) )
    {
      v6 = *(_BYTE *)(a1 + 2160) == 0;
      if ( !*(_BYTE *)(a1 + 2160) )
        v6 = *(_BYTE *)(a1 + 2140) == 0;
    }
  }
  if ( v6 )
  {
    v7 = *(_DWORD *)(a1 + 2224);
    v8 = v7 + 512;
    if ( *(__int16 *)(v7 + 540) > 0 )
    {
      v9 = (unsigned __int8)*(_WORD *)(v7 + 798);
      v10 = (unsigned __int8)(v9 + 1);
      *(_BYTE *)(a1 + 2126) = v9;
      *(_BYTE *)(a1 + 2127) = v10;
      if ( v10 >= *(__int16 *)(v8 + 28) )
        *(_BYTE *)(a1 + 2127) = 0;
      if ( v9 != *(unsigned __int8 *)(a1 + 2127) )
        *(_BYTE *)(a1 + 2124) = 1;
    }
  }
  return 1;
}

