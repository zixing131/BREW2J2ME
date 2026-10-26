int __fastcall sub_21884(int a1)
{
  int v2; // r0
  int v3; // r5
  __int16 *v4; // r7
  int v5; // r0
  __int16 v6; // r2
  int v7; // r0
  int v8; // r1
  unsigned int v9; // r5
  __int16 v11; // [sp+14h] [bp-38h] BYREF
  __int16 v12; // [sp+16h] [bp-36h]
  __int16 v13; // [sp+18h] [bp-34h]
  __int16 v14; // [sp+1Ah] [bp-32h]
  _WORD v15[4]; // [sp+1Ch] [bp-30h] BYREF
  __int16 v16; // [sp+24h] [bp-28h] BYREF
  __int16 v17; // [sp+26h] [bp-26h]
  __int16 v18; // [sp+28h] [bp-24h]
  __int16 v19; // [sp+2Ah] [bp-22h]
  __int16 v20; // [sp+2Ch] [bp-20h] BYREF
  __int16 v21; // [sp+2Eh] [bp-1Eh]
  __int16 v22; // [sp+30h] [bp-1Ch]
  __int16 v23; // [sp+32h] [bp-1Ah]
  _WORD v24[3]; // [sp+34h] [bp-18h] BYREF
  __int16 v25; // [sp+3Ah] [bp-12h]
  _WORD v26[3]; // [sp+3Ch] [bp-10h] BYREF
  __int16 v27; // [sp+42h] [bp-Ah]
  _WORD v28[3]; // [sp+44h] [bp-8h] BYREF
  __int16 v29; // [sp+4Ah] [bp-2h]

  v2 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  v28[0] = 0;
  v28[1] = 0;
  v3 = v2;
  v28[2] = *(_WORD *)(a1 + 4);
  v29 = sub_104(5u, 3 * *(_DWORD *)(a1 + 68));
  sub_144D0(*(_DWORD *)(v3 + 12), (int)v28, dword_21B88);
  v26[0] = 0;
  v26[1] = v29;
  v26[2] = *(_WORD *)(a1 + 4);
  v27 = *(_DWORD *)(a1 + 68);
  sub_144D0(*(_DWORD *)(v3 + 12), (int)v26, dword_21B8C);
  v24[0] = 0;
  v24[1] = 0;
  v24[2] = *(_WORD *)(a1 + 4);
  v25 = v29 + v27;
  (*(void (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v3 + 12) + 40))(*(_DWORD *)(v3 + 12), 1, -256);
  sub_143D4(*(_DWORD *)(v3 + 12), 0x8000, (int)(off_21B94 + 68782), -1, 0, 0, (int)v24, dword_21B90);
  v16 = 0;
  v17 = *(_WORD *)(a1 + 6) - *(_DWORD *)(a1 + 68);
  v18 = *(_WORD *)(a1 + 4);
  v19 = *(_DWORD *)(a1 + 68);
  sub_144D0(*(_DWORD *)(v3 + 12), (int)&v16, 0);
  v20 = 0;
  v21 = v17 - sub_104(5u, 3 * *(_DWORD *)(a1 + 68));
  v22 = *(_WORD *)(a1 + 4);
  v23 = sub_104(5u, 3 * *(_DWORD *)(a1 + 68));
  sub_144D0(*(_DWORD *)(v3 + 12), (int)&v20, dword_21B98);
  v4 = off_21B9C + 68868;
  v5 = (*(int (__fastcall **)(_DWORD, int, __int16 *, int, int, _DWORD))(**(_DWORD **)(v3 + 12) + 12))(
         *(_DWORD *)(v3 + 12),
         0x8000,
         off_21B9C + 68868,
         -1,
         -1,
         0);
  v6 = sub_104(5u, 7 * v5);
  v7 = (__int16)(*(_WORD *)(a1 + 4) - v6);
  *(_WORD *)(a1 + 236) = v7;
  v8 = v21;
  *(_WORD *)(a1 + 238) = v21;
  *(_WORD *)(a1 + 240) = v6;
  *(_WORD *)(a1 + 242) = v23 + v19;
  sub_143D4(*(_DWORD *)(v3 + 12), 0x8000, (int)v4, -1, v7, v8, a1 + 236, dword_21B90);
  v15[0] = 0;
  v15[1] = v25;
  v15[2] = *(_WORD *)(a1 + 4);
  v15[3] = *(_WORD *)(a1 + 6) - v25 - *(_WORD *)(a1 + 242);
  sub_144D0(*(_DWORD *)(v3 + 12), (int)v15, dword_21BA0);
  v11 = 0;
  v12 = (3 * (unsigned int)*(unsigned __int16 *)(a1 + 6)) >> 3;
  v13 = *(_WORD *)(a1 + 4);
  v14 = sub_104(5u, 8 * *(_DWORD *)(a1 + 68));
  (*(void (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(v3 + 12) + 40))(*(_DWORD *)(v3 + 12), 1, 0);
  sub_143D4(*(_DWORD *)(v3 + 12), 0x8000, (int)&(*off_21BA4)[34503], -1, 0, v12, (int)&v11, dword_21B90);
  v9 = *(unsigned __int16 *)(a1 + 4);
  *(_WORD *)(a1 + 244) = sub_2E4(v9);
  *(_WORD *)(a1 + 246) = v12 + v14;
  *(_WORD *)(a1 + 248) = sub_2E4(8 * v9);
  *(_WORD *)(a1 + 250) = 5 * *(_DWORD *)(a1 + 68) / 8;
  *(_DWORD *)(a1 + 232) = 8;
  *(_DWORD *)(a1 + 228) = 0;
  sub_223D0(a1);
  return 0;
}

