int __fastcall sub_147D4(int a1, _DWORD *a2)
{
  char *v4; // r6
  _DWORD *v5; // r0
  _DWORD *v6; // r4
  int v8; // r0
  int v9; // r1
  int v10; // r5
  int v11; // r6
  int v12; // [sp+0h] [bp-3Ch] BYREF
  int v13; // [sp+4h] [bp-38h] BYREF
  _BYTE v14[4]; // [sp+8h] [bp-34h] BYREF
  int v15; // [sp+Ch] [bp-30h]
  unsigned __int16 v16; // [sp+10h] [bp-2Ch]
  int v17; // [sp+1Ch] [bp-20h] BYREF
  _BYTE v18[20]; // [sp+20h] [bp-1Ch] BYREF
  _BYTE v19[4]; // [sp+34h] [bp-8h] BYREF
  _BYTE v20[4]; // [sp+38h] [bp-4h] BYREF

  v4 = (char *)off_14A7C + 83952;
  v5 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_14A7C + 0xFFFFFFFC + 83952) + 104))(504);
  v6 = v5;
  if ( !v5 )
    return 1;
  *v5 = a1;
  v5[55] = (*(int (**)(void))(*(_DWORD *)&v4[-4] + 172))();
  *((_WORD *)v6 + 24) = 64;
  (*(void (__fastcall **)(_DWORD, _DWORD *))(*(_DWORD *)*v6 + 16))(*v6, v6 + 1);
  if ( !(*(int (__fastcall **)(_DWORD, int, int *))(*(_DWORD *)*v6 + 8))(*v6, dword_14A80, &v17) )
  {
    if ( !(*(int (__fastcall **)(int, _BYTE *))(*(_DWORD *)v17 + 12))(v17, v18) )
      (*(void (__fastcall **)(_DWORD *, _BYTE *, int))(*(_DWORD *)&v4[-4] + 332))(v6 + 18, v18, 20);
    (*(void (__fastcall **)(int))(*(_DWORD *)v17 + 4))(v17);
  }
  v8 = (*(int (__fastcall **)(int))(*(_DWORD *)&v4[-4] + 104))(440);
  v9 = sub_107C(v8) + v6[55];
  v6[56] = v9;
  v10 = sub_1058((int)v6, v9);
  if ( (*(int (__fastcall **)(_DWORD, int, int))(*(_DWORD *)*v6 + 8))(*v6, dword_14A84, v10 + 12) )
    return 3;
  v6[17] = (*(int (__fastcall **)(_DWORD, int, _BYTE *, _BYTE *))(**(_DWORD **)(v10 + 12) + 8))(
             *(_DWORD *)(v10 + 12),
             0x8000,
             v20,
             v19);
  if ( sub_255E8(v6) || (*(int (__fastcall **)(_DWORD, int, int))(*(_DWORD *)*v6 + 8))(*v6, dword_14A88, v10 + 136) )
    return 3;
  v11 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v4[-4] + 192))() + 4);
  if ( (*(int (__fastcall **)(int, int, _BYTE *))(*(_DWORD *)a1 + 12))(a1, v11, v14) == 1 )
    (*(void (__fastcall **)(int, int, _DWORD, _DWORD *, int))(*(_DWORD *)a1 + 68))(a1, v15, v16, v6 + 23, 120);
  if ( (*(int (__fastcall **)(_DWORD, int, _BYTE *))(*(_DWORD *)*v6 + 12))(*v6, v11, v14) == 1
    && (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)*v6 + 180))(*v6, v11)
    && !(*(int (__fastcall **)(_DWORD, int, int *))(*(_DWORD *)*v6 + 8))(*v6, dword_14A8C, &v13) )
  {
    switch ( (*(int (__fastcall **)(int, int *, _DWORD, _DWORD))(*(_DWORD *)v13 + 20))(v13, &v12, 0, 0) )
    {
      case 1:
      case 2:
      case 3:
      case 4:
        *(_DWORD *)(v10 + 28) = 0;
        break;
      case 5:
        *(_DWORD *)(v10 + 28) = 1;
        break;
      default:
        *(_DWORD *)(v10 + 28) = 2;
        break;
    }
    (*(void (__fastcall **)(int))(*(_DWORD *)v13 + 4))(v13);
  }
  else
  {
    *(_DWORD *)(v10 + 28) = 2;
  }
  *((_BYTE *)v6 + 212) = 0;
  *((_BYTE *)v6 + 213) = 0;
  *a2 = v6;
  return 0;
}

