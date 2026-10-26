int __fastcall sub_25608(int a1)
{
  int v2; // r0
  int v3; // r7
  int *v4; // r4
  unsigned int v5; // r9
  __int16 v6; // r6
  __int16 *v7; // r10
  char *v8; // r11
  __int16 v9; // r0
  int v10; // r2
  int v11; // r3
  __int16 v12; // r0
  __int16 *v13; // r10
  __int16 v14; // r0
  unsigned int v15; // r10
  int v16; // r0
  __int16 v17; // r0
  int *v18; // r8
  int v19; // r0
  int v20; // r0
  __int16 v21; // r0
  int v22; // r1
  int v23; // r3
  int v24; // r0
  __int16 v25; // r2
  int v26; // r0
  int v27; // r1
  int v29[3]; // [sp+14h] [bp-88h] BYREF
  _BYTE v30[8]; // [sp+20h] [bp-7Ch] BYREF
  _BYTE v31[60]; // [sp+28h] [bp-74h] BYREF
  __int16 v32; // [sp+64h] [bp-38h] BYREF
  __int16 v33; // [sp+66h] [bp-36h]
  __int16 v34; // [sp+68h] [bp-34h]
  __int16 v35; // [sp+6Ah] [bp-32h]
  _WORD v36[4]; // [sp+6Ch] [bp-30h] BYREF
  __int16 v37; // [sp+74h] [bp-28h] BYREF
  __int16 v38; // [sp+76h] [bp-26h]
  __int16 v39; // [sp+78h] [bp-24h]
  __int16 v40; // [sp+7Ah] [bp-22h]
  __int16 v41; // [sp+7Ch] [bp-20h] BYREF
  __int16 v42; // [sp+7Eh] [bp-1Eh]
  __int16 v43; // [sp+80h] [bp-1Ch]
  __int16 v44; // [sp+82h] [bp-1Ah]
  __int16 v45; // [sp+84h] [bp-18h] BYREF
  __int16 v46; // [sp+86h] [bp-16h]
  __int16 v47; // [sp+88h] [bp-14h]
  __int16 v48; // [sp+8Ah] [bp-12h]
  _WORD v49[3]; // [sp+8Ch] [bp-10h] BYREF
  __int16 v50; // [sp+92h] [bp-Ah]
  _WORD v51[3]; // [sp+94h] [bp-8h] BYREF
  __int16 v52; // [sp+9Ah] [bp-2h]

  v2 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  v3 = *(unsigned __int16 *)(a1 + 4);
  v4 = (int *)v2;
  v5 = (unsigned int)(2 * v3) >> 4;
  v6 = sub_104(6u, 9 * *(_DWORD *)(a1 + 68));
  v32 = 0;
  v33 = 0;
  v34 = *(_WORD *)(a1 + 4);
  v35 = *(_WORD *)(a1 + 6);
  sub_144F4(v4[3], (int)&v32, dword_25F34);
  v51[0] = 0;
  v51[1] = 0;
  v51[2] = *(_WORD *)(a1 + 4);
  v52 = sub_104(7u, 3 * *(_DWORD *)(a1 + 68));
  sub_144F4(v4[3], (int)v51, dword_25F38);
  v49[0] = 0;
  v49[1] = v52;
  v49[2] = *(_WORD *)(a1 + 4);
  v50 = sub_104(7u, 6 * *(_DWORD *)(a1 + 68));
  sub_144F4(v4[3], (int)v49, dword_25F3C);
  v45 = 0;
  v46 = 0;
  v47 = *(_WORD *)(a1 + 4);
  v48 = v52 + v50;
  sub_14594(v4[3]);
  sub_1441C(v4[3], 0x8000, (int)(off_25F44 + 76700), -1, v45, v46, (int)&v45, dword_25F40);
  v32 = v5;
  v33 = v6;
  v34 = v3 - v5 - 8;
  v35 = *(_DWORD *)(a1 + 68) + 3;
  sub_14594(v4[3]);
  v7 = off_25F4C + 76758;
  sub_1441C(v4[3], 0x8000, (int)(off_25F4C + 76758), -1, v32, v33, (int)&v32, dword_25F48);
  v4[19] = 0;
  v4[22] = 50;
  v4[23] = 1;
  v4[24] = 40;
  v4[20] = 0;
  v8 = (char *)off_25F50 + 153576;
  v4[25] = 20;
  (*(void (__fastcall **)(_BYTE *, _DWORD, int))(*(_DWORD *)&v8[-4] + 4))(v31, 0, 60);
  (*(void (__fastcall **)(int, int, _BYTE *, int))(*(_DWORD *)((char *)off_25F54 + 0xFFFFFFFC + 153624) + 80))(
    v4[4] + 1260,
    90,
    v31,
    60);
  if ( !v4[28] )
    v4[28] = (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)&v8[-4] + 112))(v31);
  v9 = sub_14568(v4[3], 0x8000, (int)v7);
  *((_WORD *)v4 + 58) = v32 + v9;
  *((_WORD *)v4 + 59) = v33;
  *((_WORD *)v4 + 60) = v34 - v9;
  *((_WORD *)v4 + 61) = v35;
  v4[26] = 65280;
  v4[27] = dword_25F34;
  v4[32] = (int)off_25F58 + 153760;
  sub_24EB4((_DWORD *)a1, (int)(v4 + 19), v10, v11);
  v32 = v5;
  v33 = v6 + *(_DWORD *)(a1 + 68) + 3;
  v34 = v3 - v5 - 8;
  v35 = *(_DWORD *)(a1 + 68) + 3;
  sub_14594(v4[3]);
  sub_1441C(v4[3], 0x8000, (int)(off_25F5C + 76932), -1, v32, v33, (int)&v32, dword_25F48);
  v12 = sub_14568(v4[3], 0x8000, (int)(off_25F60 + 76942));
  v32 += v12;
  v34 -= v12;
  sub_14594(v4[3]);
  (*(void (__fastcall **)(_BYTE *, _DWORD, int))(*(_DWORD *)&v8[-4] + 4))(v31, 0, 60);
  (*(void (__fastcall **)(int, int, _BYTE *, int))(*(_DWORD *)&v8[-4] + 80))(v4[4] + 1164, 90, v31, 60);
  sub_1441C(v4[3], 0x8000, (int)v31, -1, v32, v33, (int)&v32, dword_25F48);
  v32 = v5;
  v33 = v6 + 2 * (*(_DWORD *)(a1 + 68) + 3);
  v34 = v3 - v5 - 8;
  v35 = *(_DWORD *)(a1 + 68) + 3;
  sub_14594(v4[3]);
  v13 = off_25F64 + 77062;
  sub_1441C(v4[3], 0x8000, (int)(off_25F64 + 77062), -1, v32, v33, (int)&v32, dword_25F48);
  v14 = sub_14568(v4[3], 0x8000, (int)v13);
  v32 += v14;
  v34 -= v14;
  sub_14594(v4[3]);
  sub_1441C(v4[3], 0x8000, a1 + 284, -1, v32, v33, (int)&v32, dword_25F48);
  v32 = v5;
  v33 = v6 + 3 * (*(_DWORD *)(a1 + 68) + 3);
  v34 = v3 - v5 - 8;
  v35 = *(_DWORD *)(a1 + 68) + 3;
  sub_14594(v4[3]);
  sub_1441C(v4[3], 0x8000, (int)&(*off_25F68)[38581], -1, v32, v33, (int)&v32, dword_25F48);
  v15 = *(_DWORD *)(v4[4] + 1356);
  v16 = sub_1DC(0x64u, v15);
  (*(void (__fastcall **)(_BYTE *, int, char *, int, unsigned int))(*(_DWORD *)&v8[-4] + 324))(
    v30,
    8,
    off_25F6C + 154388,
    v16,
    v15 - 100 * v16);
  (*(void (__fastcall **)(_BYTE *, _BYTE *, int))(*(_DWORD *)&v8[-4] + 64))(v30, v31, 60);
  (*(void (__fastcall **)(_BYTE *, int, int))(*(_DWORD *)&v8[-4] + 344))(v31, off_25F70 + 154444, 30);
  v17 = sub_14568(v4[3], 0x8000, (int)&(*off_25F74)[38616]);
  v32 += v17;
  v34 -= v17;
  sub_14594(v4[3]);
  sub_1441C(v4[3], 0x8000, (int)v31, -1, v32, v33, (int)&v32, dword_25F48);
  v32 = v5;
  v33 = v6 + 4 * (*(_DWORD *)(a1 + 68) + 3);
  v34 = v3 - v5 - 8;
  v35 = *(_DWORD *)(a1 + 68) + 3;
  sub_14594(v4[3]);
  v18 = &(*off_25F78)[38661];
  sub_1441C(v4[3], 0x8000, (int)&(*off_25F78)[38661], -1, v32, v33, (int)&v32, dword_25F48);
  (*(void (__fastcall **)(int, int *, int))(*(_DWORD *)v4[17] + 48))(v4[17], v29, 12);
  v19 = sub_14568(v4[3], 0x8000, (int)v18);
  sub_14338(v4[3], v32 + v19 + 2, v33, v29[0], v29[1], v4[17], 0, 0, 2);
  if ( *(_BYTE *)(a1 + 213) == 3 )
  {
    v37 = 0;
    v38 = *(_WORD *)(a1 + 6) - sub_104(7u, 6 * *(_DWORD *)(a1 + 68));
    v39 = *(_WORD *)(a1 + 4);
    v40 = *(_DWORD *)(a1 + 68);
    sub_144F4(v4[3], (int)&v37, 0);
    v41 = 0;
    v42 = v38 - sub_104(7u, 3 * *(_DWORD *)(a1 + 68));
    v43 = *(_WORD *)(a1 + 4);
    v44 = sub_104(7u, 3 * *(_DWORD *)(a1 + 68));
    sub_144F4(v4[3], (int)&v41, dword_25F7C);
    sub_14594(v4[3]);
    v20 = sub_14568(v4[3], 0x8000, (int)(off_25F80 + 38737));
    v21 = sub_104(5u, 7 * v20);
    *(_WORD *)(a1 + 252) = 0;
    v22 = v42;
    v23 = dword_25F40;
    *(_WORD *)(a1 + 254) = v42;
    *(_WORD *)(a1 + 256) = v21;
    *(_WORD *)(a1 + 258) = v44 + v40;
    sub_1441C(v4[3], 0x8000, (int)(off_25F84 + 38759), -1, 0, v22, a1 + 252, v23);
    v24 = sub_14568(v4[3], 0x8000, (int)(off_25F88 + 77528));
    v25 = sub_104(5u, 7 * v24);
    v26 = (__int16)(*(_WORD *)(a1 + 4) - v25);
    *(_WORD *)(a1 + 260) = v26;
    v27 = v42;
    *(_WORD *)(a1 + 262) = v42;
    *(_WORD *)(a1 + 264) = v25;
    *(_WORD *)(a1 + 266) = v44 + v40;
    sub_1441C(v4[3], 0x8000, (int)(off_25F8C + 77578), -1, v26, v27, a1 + 260, dword_25F40);
    sub_14594(v4[3]);
    v32 = 0;
    v33 = *(_WORD *)(a1 + 262) - *(_DWORD *)(a1 + 68) - 3;
    v34 = *(_WORD *)(a1 + 4);
    v35 = *(_DWORD *)(a1 + 68) + 3;
    sub_1441C(v4[3], 0x8000, (int)&(*off_25F90)[38815], -1, 0, v33, (int)&v32, dword_25F40);
  }
  *((_WORD *)v4 + 2) = v5;
  *((_WORD *)v4 + 3) = v6 + 5 * (*(_DWORD *)(a1 + 68) + 3);
  *((_WORD *)v4 + 4) = *(_WORD *)(a1 + 4) - 2 * v5;
  *((_WORD *)v4 + 5) = *(_DWORD *)(a1 + 68) + 3;
  sub_15344((_WORD *)*v4, (_WORD *)v4 + 2);
  v36[0] = 0;
  v36[1] = *(_WORD *)(a1 + 6) - 88;
  v36[2] = 240;
  v36[3] = 88;
  sub_15368((_WORD *)*v4, v36);
  sub_15334(*v4, 4u);
  sub_152CC(*v4, 1);
  sub_14FF8(*v4);
  sub_14594(v4[3]);
  sub_145AC(v4[3]);
  return 0;
}

