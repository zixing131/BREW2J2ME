int __fastcall sub_D204(_DWORD *a1)
{
  __int16 v2; // r0
  int v3; // r2
  _WORD v5[4]; // [sp+14h] [bp-18h] BYREF
  __int16 v6; // [sp+1Ch] [bp-10h]
  __int16 v7; // [sp+1Eh] [bp-Eh]
  __int16 v8; // [sp+20h] [bp-Ch]
  __int16 v9; // [sp+22h] [bp-Ah]
  __int16 v10; // [sp+24h] [bp-8h] BYREF
  __int16 v11; // [sp+26h] [bp-6h]
  __int16 v12; // [sp+28h] [bp-4h]
  __int16 v13; // [sp+2Ah] [bp-2h]

  sub_14518(a1[1], (char *)a1 + 118, 0);
  v10 = *((_WORD *)a1 + 59) + 1;
  v11 = *((_WORD *)a1 + 60) + 1;
  v12 = *((_WORD *)a1 + 61) - 2;
  v13 = *((_WORD *)a1 + 62) - 2;
  sub_14518(a1[1], &v10, -256);
  v6 = v10 + 3;
  v7 = v11 + 1;
  v8 = v12 - 6;
  v9 = v13 - 2;
  (*(void (**)(void))(*(_DWORD *)a1[1] + 40))();
  sub_14464(a1[1], 0x8000);
  if ( *((_BYTE *)a1 + 12) )
  {
    if ( *((_BYTE *)a1 + 14) )
      v2 = v6;
    else
      v2 = (*(int (__fastcall **)(_DWORD, int, _DWORD *, int, int, _DWORD))(*(_DWORD *)a1[1] + 12))(
             a1[1],
             0x8000,
             a1 + 4,
             -1,
             -1,
             0)
         + v6;
    *((_WORD *)a1 + 78) = v2;
    v5[0] = v2;
    v5[1] = v7;
    v5[2] = 1;
    v5[3] = v9;
    if ( *((_BYTE *)a1 + 158) )
      v3 = -256;
    else
      v3 = 0;
    sub_14518(a1[1], v5, v3);
    (*(void (__fastcall **)(_DWORD, int, char *, _DWORD *))(*(_DWORD *)*a1 + 44))(
      *a1,
      1000,
      (char *)off_D3BC + 54160,
      a1);
  }
  return (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)a1[1] + 28))(a1[1], 1);
}

