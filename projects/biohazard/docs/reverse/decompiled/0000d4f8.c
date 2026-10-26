int __fastcall sub_D4F8(_WORD *a1, int a2, int a3, int a4, int a5, _DWORD *a6)
{
  bool v6; // zf
  int result; // r0
  int v10; // r4
  int v11; // r5
  unsigned __int16 v12; // r5
  unsigned __int16 v13; // r0
  unsigned int v14; // r10
  int v15; // r6
  unsigned int i; // r5
  char v17[4]; // [sp+18h] [bp-34h] BYREF
  char v18[4]; // [sp+1Ch] [bp-30h] BYREF
  __int16 v19; // [sp+20h] [bp-2Ch] BYREF
  __int16 v20; // [sp+22h] [bp-2Ah]
  unsigned __int16 v21; // [sp+24h] [bp-28h]
  unsigned __int16 v22; // [sp+26h] [bp-26h]
  __int16 v23; // [sp+28h] [bp-24h]
  __int16 v24; // [sp+2Ah] [bp-22h]
  unsigned __int16 v25; // [sp+2Ch] [bp-20h]
  unsigned __int16 v26; // [sp+2Eh] [bp-1Eh]
  int v27; // [sp+30h] [bp-1Ch] BYREF
  int v28; // [sp+34h] [bp-18h] BYREF
  _DWORD v29[3]; // [sp+38h] [bp-14h] BYREF
  int v30; // [sp+44h] [bp-8h]
  int v31; // [sp+48h] [bp-4h]

  v29[1] = a1;
  v29[2] = a2;
  v30 = a3;
  v31 = a4;
  v6 = a1 == 0;
  result = 0;
  v27 = 0;
  v29[0] = 0;
  v28 = 0;
  if ( !v6 )
    result = (int)a6;
  if ( !v6 )
  {
    v6 = result == 0;
    if ( result )
      v6 = a5 == 0;
  }
  if ( v6 )
    result = 14;
  v10 = 0;
  if ( !v6 )
  {
    v11 = (*(int (__fastcall **)(_DWORD, int, _DWORD *))(**(_DWORD **)a1 + 8))(*(_DWORD *)a1, dword_D79C, v29);
    if ( !v11 )
    {
      v10 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v29[0] + 60))(v29[0]);
      if ( v10 )
      {
        v12 = sub_14568(v29[0], a2, a5);
        v13 = (*(int (__fastcall **)(_DWORD, int, char *, char *))(*(_DWORD *)v29[0] + 8))(v29[0], a2, v18, v17);
        v23 = 0;
        v24 = 0;
        v25 = v12;
        v26 = v13;
        v19 = 0;
        v20 = 0;
        v21 = a1[2];
        v22 = a1[3];
        v11 = sub_14320(v10, &v28, v12, v13);
        if ( !v11 )
        {
          v11 = sub_14320(v10, &v27, v21, v22);
          if ( !v11 )
          {
            v11 = sub_145A0(v29[0], v27);
            if ( !v11 )
            {
              v14 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_D7A0 + 0xFFFFFFFC + 54824) + 48))(a5);
              v15 = 0;
              for ( i = 0; i < v14; ++i )
              {
                sub_144F4(v29[0], &v19, v30);
                sub_14594(v29[0], 1, v31);
                sub_1441C(v29[0], a2, a5 + 2 * i, 1, v19, v20, &v19, dword_D7A4);
                (*(void (__fastcall **)(int, int))(*(_DWORD *)v28 + 40))(v28, v15);
                v15 += (*(int (__fastcall **)(_DWORD, int, unsigned int, int, int, _DWORD))(*(_DWORD *)v29[0] + 12))(
                         v29[0],
                         a2,
                         a5 + 2 * i,
                         1,
                         -1,
                         0);
              }
              v11 = (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v29[0] + 56))(v29[0], v10);
              if ( !v11 )
              {
                *a6 = v28;
                v28 = 0;
              }
            }
          }
        }
      }
      else
      {
        v11 = 1;
      }
    }
    if ( v27 )
    {
      sub_14308();
      v27 = 0;
    }
    if ( v28 )
    {
      sub_14308();
      v28 = 0;
    }
    if ( v10 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v10 + 4))(v10);
    if ( v29[0] )
    {
      sub_14308();
      v29[0] = 0;
    }
    return v11;
  }
  return result;
}

