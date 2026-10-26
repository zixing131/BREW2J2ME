int __fastcall sub_189E8(_DWORD *a1, _DWORD *a2)
{
  int *v3; // r5
  int v4; // r0
  _DWORD *v5; // r7
  int (*v6)(); // r6
  int v7; // r5
  int v8; // r0
  int v9; // r7
  int v10; // r5
  int v11; // r0
  int v12; // r7
  int v13; // r5
  int v14; // r0
  int v15; // r7
  int v16; // r5

  v3 = a2 + 1;
  sub_24CC8(a1, *a2);
  v4 = *v3;
  v5 = v3 + 1;
  v6 = off_18B58;
  v7 = 9 * *v3;
  a1[542] = v4;
  v6 = (int (*)())((char *)v6 + 100900);
  a1[543] = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)v6 + 0xFFFFFFFC) + 104))(v7 * 4);
  (**(void (***)(void))((char *)v6 + 0xFFFFFFFC))();
  v8 = v5[v7];
  v9 = (int)&v5[v7 + 1];
  a1[544] = v8;
  v10 = 32 * v8;
  a1[545] = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)v6 + 0xFFFFFFFC) + 104))(32 * v8);
  (**(void (***)(void))((char *)v6 + 0xFFFFFFFC))();
  v11 = *(_DWORD *)(v9 + v10);
  v12 = v9 + v10 + 4;
  v13 = 84 * v11;
  a1[546] = v11;
  a1[547] = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)v6 + 0xFFFFFFFC) + 104))(84 * v11);
  (**(void (***)(void))((char *)v6 + 0xFFFFFFFC))();
  v14 = *(_DWORD *)(v12 + v13);
  v15 = v12 + v13 + 4;
  v16 = 116 * v14;
  a1[548] = v14;
  a1[549] = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)v6 + 0xFFFFFFFC) + 104))(116 * v14);
  (**(void (***)(void))((char *)v6 + 0xFFFFFFFC))();
  sub_24CD0();
  sub_24CD8(a1 + 516, *(_DWORD *)(v15 + v16 + 4), v15 + v16 + 8);
  return 1;
}

