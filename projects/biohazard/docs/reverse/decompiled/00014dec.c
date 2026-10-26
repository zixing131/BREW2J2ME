int __fastcall sub_14DEC(_DWORD *a1, int a2, int a3, int a4)
{
  bool v5; // zf
  bool v6; // cc
  bool v7; // zf
  bool v8; // cc
  __int16 v9; // r5
  bool v10; // zf
  int v11; // r1
  int v12; // r0
  unsigned int v13; // r1
  int v16; // [sp+Ch] [bp-Ch] BYREF
  int v17; // [sp+10h] [bp-8h] BYREF
  int v18; // [sp+14h] [bp-4h] BYREF

  v16 = a2;
  v17 = a3;
  v18 = a4;
  if ( !*((_BYTE *)a1 + 12) )
    return 0;
  if ( !*((_BYTE *)a1 + 15) )
    sub_21E14(a1, &v16, &v17, &v18);
  if ( (unsigned __int16)v16 != 256 )
    return 0;
  v5 = (unsigned __int16)v17 == 57344;
  v6 = (unsigned __int16)v17 <= 0xE000u;
  if ( (unsigned __int16)v17 >= 0xE000u )
  {
    v5 = (unsigned __int16)v17 == 57384;
    v6 = (unsigned __int16)v17 - 57344 <= 40;
  }
  if ( v5 )
    goto LABEL_26;
  if ( v6 )
  {
    switch ( (unsigned __int16)v17 )
    {
      case 0xE021u:
      case 0xE022u:
      case 0xE023u:
      case 0xE024u:
      case 0xE025u:
      case 0xE026u:
      case 0xE027u:
        goto LABEL_26;
      default:
        return 0;
    }
  }
  v7 = (unsigned __int16)v17 == 57344;
  v8 = (unsigned __int16)v17 <= 0xE000u;
  if ( (unsigned __int16)v17 >= 0xE000u )
  {
    v7 = (unsigned __int16)v17 == 57388;
    v8 = (unsigned __int16)v17 - 57344 <= 44;
  }
  if ( v7 )
  {
    v9 = 35;
LABEL_34:
    if ( *((_BYTE *)a1 + 14) )
    {
      *((_WORD *)a1 + 58) = 0;
      *((_BYTE *)a1 + 14) = 0;
    }
    v13 = *((unsigned __int16 *)a1 + 58);
    if ( v13 >= *((unsigned __int16 *)a1 + 57) )
      return 1;
    *((_WORD *)a1 + 58) = v13 + 1;
    *((_WORD *)a1 + v13 + 8) = v9;
    v11 = *((unsigned __int16 *)a1 + 58);
    goto LABEL_39;
  }
  if ( !v8 )
  {
    switch ( (unsigned __int16)v17 )
    {
      case 0xE030u:
        if ( *((_BYTE *)a1 + 14) )
        {
          *((_WORD *)a1 + 58) = 0;
          *((_BYTE *)a1 + 14) = 0;
          *((_WORD *)a1 + 8) = 0;
LABEL_40:
          sub_D204(a1);
          return 1;
        }
        if ( *((_WORD *)a1 + 58) )
        {
          v11 = (unsigned __int16)(*((_WORD *)a1 + 58) - 1);
          *((_WORD *)a1 + 58) = v11;
LABEL_39:
          *((_WORD *)a1 + v11 + 8) = 0;
          goto LABEL_40;
        }
        break;
      case 0xE035u:
        if ( !*((_BYTE *)a1 + 15) )
        {
          v12 = (*(int (**)(void))(*(_DWORD *)((char *)off_14FE8 + 0xFFFFFFFC + 85836) + 192))();
          (*(void (__fastcall **)(_DWORD, int, _DWORD, int, _DWORD, _DWORD, _DWORD *))(*(_DWORD *)*a1 + 84))(
            *a1,
            3,
            *(_DWORD *)(v12 + 4),
            dword_14FEC,
            0,
            0,
            a1);
          return 1;
        }
        break;
      case 0xE045u:
        v9 = 46;
        goto LABEL_34;
    }
    return 0;
  }
  v10 = (unsigned __int16)v17 == 57385;
  if ( (unsigned __int16)v17 != 57385 )
    v10 = (unsigned __int16)v17 == 57386;
  if ( v10 )
  {
LABEL_26:
    v9 = v17 + 8207;
    goto LABEL_34;
  }
  if ( (unsigned __int16)v17 == 57387 )
  {
    v9 = 42;
    goto LABEL_34;
  }
  return 0;
}

