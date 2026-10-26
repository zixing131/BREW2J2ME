int __fastcall sub_687E0(_DWORD *a1, int a2, _WORD *a3, unsigned __int8 *a4, int a5, int a6)
{
  int v9; // r0
  __int16 v10; // r0
  int v11; // r1
  int v12; // r4
  int v13; // r0
  int v14; // r12
  int v15; // r2
  int v16; // r4
  unsigned int v17; // r2
  __int16 v18; // r1
  unsigned int v19; // r3
  _DWORD *v21; // [sp+0h] [bp-40h] BYREF
  int v22; // [sp+4h] [bp-3Ch]
  int v23; // [sp+8h] [bp-38h]
  int v24; // [sp+Ch] [bp-34h]
  _BYTE v25[24]; // [sp+10h] [bp-30h] BYREF
  _BYTE v26[24]; // [sp+28h] [bp-18h] BYREF
  _DWORD savedregs[5]; // [sp+40h] [bp+0h]

  v21 = a1;
  sub_68DD0(v26, dword_97370, 24);
  sub_68DD0(v25, dword_97358, 24);
  v22 = *(_DWORD *)(*(_DWORD *)(v21[1] + 4) + 4);
  v9 = 2 * a5;
  if ( *(_DWORD *)(*v21 + 36) == 0x7FFF )
    v10 = *(_WORD *)((char *)&v21 + v9 + 16);
  else
    v10 = *(_WORD *)((char *)&v21 + v9 + 40);
  if ( a5 )
  {
    v11 = (32 - a6) * (v10 & 0x7E0);
    v23 = (32 - a6) * (v10 & 0xF81F);
    v12 = (32 - a6) * (v10 & 0x7C1F);
    v13 = (32 - a6) * (v10 & 0x3E0);
    v14 = v12;
    v24 = v11;
    while ( a2 > 0 )
    {
      v16 = *(unsigned __int16 *)(2 * *a4 + v22);
      --a3;
      if ( v16 != *(_DWORD *)(*v21 + 32) )
      {
        if ( *(_DWORD *)(*v21 + 36) == 0x7FFF )
        {
          v17 = (((v16 & 0x7C1Fu) * a6 + v14) >> 5) & 0x7C1F;
          v18 = 992;
          v19 = (v16 & 0x3E0) * a6 + v13;
        }
        else
        {
          v17 = (((v16 & 0xF81Fu) * a6 + v23) >> 5) & 0xF81F;
          v18 = 2016;
          v19 = (v16 & 0x7E0) * a6 + v24;
        }
        *a3 = v17 | (v19 >> 5) & v18;
      }
      ++a4;
      --a2;
    }
  }
  else
  {
    while ( a2 > 0 )
    {
      v15 = *(unsigned __int16 *)(2 * *a4 + v22);
      --a3;
      if ( v15 != *(_DWORD *)(*v21 + 32) )
        *a3 = v15;
      ++a4;
      --a2;
    }
  }
  return savedregs[4];
}
