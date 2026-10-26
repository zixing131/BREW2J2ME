int __fastcall sub_162C(int a1)
{
  int v2; // r0
  int v3; // r5
  unsigned int v4; // r5
  __int16 v6; // [sp+10h] [bp-38h] BYREF
  __int16 v7; // [sp+12h] [bp-36h]
  __int16 v8; // [sp+14h] [bp-34h]
  __int16 v9; // [sp+16h] [bp-32h]
  _WORD v10[4]; // [sp+18h] [bp-30h] BYREF
  __int16 v11; // [sp+20h] [bp-28h] BYREF
  __int16 v12; // [sp+22h] [bp-26h]
  __int16 v13; // [sp+24h] [bp-24h]
  __int16 v14; // [sp+26h] [bp-22h]
  _WORD v15[4]; // [sp+28h] [bp-20h] BYREF
  _WORD v16[3]; // [sp+30h] [bp-18h] BYREF
  __int16 v17; // [sp+36h] [bp-12h]
  _WORD v18[3]; // [sp+38h] [bp-10h] BYREF
  __int16 v19; // [sp+3Eh] [bp-Ah]
  _WORD v20[3]; // [sp+40h] [bp-8h] BYREF
  __int16 v21; // [sp+46h] [bp-2h]

  v2 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  v20[0] = 0;
  v20[1] = 0;
  v3 = v2;
  v20[2] = *(_WORD *)(a1 + 4);
  v21 = sub_104(5u, 3 * *(_DWORD *)(a1 + 68));
  sub_144AC(*(_DWORD *)(v3 + 12), v20, dword_18A0);
  v18[0] = 0;
  v18[1] = v21;
  v18[2] = *(_WORD *)(a1 + 4);
  v19 = *(_DWORD *)(a1 + 68);
  sub_144AC(*(_DWORD *)(v3 + 12), v18, dword_18A4);
  v16[0] = 0;
  v16[1] = 0;
  v16[2] = *(_WORD *)(a1 + 4);
  v17 = v21 + v19;
  (*(void (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v3 + 12) + 40))(*(_DWORD *)(v3 + 12), 1, -256);
  sub_1438C(*(_DWORD *)(v3 + 12), 0x8000, &(*off_18AC)[1473], -1, 0, 0, v16, dword_18A8);
  v11 = 0;
  v12 = *(_WORD *)(a1 + 6) - *(_DWORD *)(a1 + 68);
  v13 = *(_WORD *)(a1 + 4);
  v14 = *(_DWORD *)(a1 + 68);
  sub_144AC(*(_DWORD *)(v3 + 12), &v11, 0);
  v15[0] = 0;
  v15[1] = v12 - sub_104(5u, 3 * *(_DWORD *)(a1 + 68));
  v15[2] = *(_WORD *)(a1 + 4);
  v15[3] = sub_104(5u, 3 * *(_DWORD *)(a1 + 68));
  sub_144AC(*(_DWORD *)(v3 + 12), v15, dword_18B0);
  v10[0] = 0;
  v10[1] = v17;
  v10[2] = *(_WORD *)(a1 + 4);
  v10[3] = *(_WORD *)(a1 + 6) - v17 - *(_WORD *)(a1 + 242);
  sub_144AC(*(_DWORD *)(v3 + 12), v10, dword_18B4);
  v6 = 0;
  v7 = (3 * (unsigned int)*(unsigned __int16 *)(a1 + 6)) >> 3;
  v8 = *(_WORD *)(a1 + 4);
  v9 = sub_104(5u, 8 * *(_DWORD *)(a1 + 68));
  (*(void (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(v3 + 12) + 40))(*(_DWORD *)(v3 + 12), 1, 0);
  sub_1438C(*(_DWORD *)(v3 + 12), 0x8000, off_18B8 + 3098, -1, 0, v7, &v6, dword_18A8);
  v4 = *(unsigned __int16 *)(a1 + 4);
  *(_WORD *)(a1 + 244) = sub_2E4(v4);
  *(_WORD *)(a1 + 246) = v7 + v9;
  *(_WORD *)(a1 + 248) = sub_2E4(8 * v4);
  *(_WORD *)(a1 + 250) = 5 * *(_DWORD *)(a1 + 68) / 8;
  *(_DWORD *)(a1 + 232) = 8;
  *(_DWORD *)(a1 + 228) = 0;
  sub_223D0(a1);
  return 0;
}

