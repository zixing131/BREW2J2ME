int __fastcall sub_72484(int a1, int a2, int a3, int a4)
{
  __int16 v5; // r0
  int v6; // r2
  int v7; // r0
  int v8; // r1
  unsigned __int16 *v9; // r2
  void *v10; // r0
  int v11; // r7
  int v12; // r0
  int v13; // r4
  int v14; // r6
  int v15; // r0
  int v16; // r7
  char *v17; // r3
  int v18; // r0
  __int16 v19; // r0
  int v20; // r2
  int v21; // r0
  __int16 v22; // r0
  BOOL v23; // r1
  int v24; // r0
  __int16 v25; // r0
  int v26; // r0
  __int16 v27; // r0
  int v28; // r0
  int v30; // [sp+0h] [bp-28h]
  int v31; // [sp+0h] [bp-28h]
  int v32; // [sp+0h] [bp-28h]
  int v36; // [sp+14h] [bp-14h]
  int v37; // [sp+18h] [bp-10h]
  int v38; // [sp+1Ch] [bp-Ch]
  int v39; // [sp+20h] [bp-8h]
  int v40; // [sp+24h] [bp-4h] BYREF

  if ( (unsigned int)(a3 - 32) <= 0x5E )
  {
    v5 = sub_75958(&unk_1536CBC, a3 - 32, &v40, 569929);
    v7 = sub_75958(&unk_1536CBC, v5, v6, 569905);
    sub_72368(a1, a2, v7, v40, &unk_1536CBC, a4);
    v10 = &unk_1536CBC;
    return sub_75958(v10, v8, v9, 569713);
  }
  v11 = a3 - 44032;
  if ( (unsigned int)(a3 - 44032) <= 0x2B9F )
  {
    v12 = sub_7595C(v11, 588);
    v13 = v11 - 588 * v12;
    v14 = v12;
    v15 = sub_7595C(v13, 28);
    v16 = v15;
    v36 = v13 - 28 * v15;
    if ( v36 != -1 )
    {
      if ( v36 )
      {
        v37 = *(unsigned __int8 *)(v15 + 641279);
        if ( !v14 || v14 == 15 )
          v38 = 2;
        else
          v38 = 3;
      }
      else
      {
        v37 = *(unsigned __int8 *)(v15 + 641258);
        v23 = v14 && v14 != 15;
        v38 = v23;
      }
      v39 = *((unsigned __int8 *)dword_9C914 + v15);
      v22 = sub_7595A(&unk_15377C8, 0, v37, v14, &v40);
      goto LABEL_37;
    }
LABEL_21:
    if ( v14 == -1 )
    {
      if ( v16 == -1 )
        v38 = -1;
      else
        v38 = 0;
      v8 = -1;
      v39 = -1;
      goto LABEL_38;
    }
    v37 = 1;
    v39 = -1;
    v38 = -1;
    v22 = sub_7595A(&unk_15377C8, 0, 1, v14, &v40);
LABEL_37:
    v24 = sub_7595A(&unk_15377C8, 0, v37, v22, v30);
    sub_72368(a1, a2, v24, v40, &unk_15377C8, a4);
LABEL_38:
    if ( v38 >= 0 )
    {
      v25 = sub_7595A(&unk_15377C8, 1, v38, v16, &v40);
      v26 = sub_7595A(&unk_15377C8, 1, v38, v25, v31);
      sub_72368(a1, a2, v26, v40, &unk_15377C8, a4);
    }
    v9 = (unsigned __int16 *)v39;
    if ( v39 >= 0 )
    {
      v27 = sub_7595A(&unk_15377C8, 2, v39, v36, &v40);
      v28 = sub_7595A(&unk_15377C8, 2, v39, v27, v32);
      sub_72368(a1, a2, v28, v40, &unk_15377C8, a4);
    }
    v10 = &unk_15377C8;
    return sub_75958(v10, v8, v9, 569713);
  }
  if ( (unsigned int)(a3 - 12592) <= 0x1E )
  {
    v17 = (char *)dword_9C8A4 + a3;
LABEL_11:
    v14 = *(v17 - 12592);
    v16 = -1;
LABEL_44:
    v36 = -1;
    goto LABEL_21;
  }
  v18 = a3 - 12623;
  if ( (unsigned int)(a3 - 12623) <= 0x14 )
    goto LABEL_13;
  if ( (unsigned int)(a3 - 4352) <= 0x12 )
  {
    v17 = (char *)dword_9C8A4 + *(__int16 *)&a112141718191a1[2 * a3 - 8704];
    goto LABEL_11;
  }
  v18 = a3 - 4449;
  if ( (unsigned int)(a3 - 4449) <= 0x14 )
  {
LABEL_13:
    v16 = v18;
    v14 = -1;
    goto LABEL_44;
  }
  v9 = (unsigned __int16 *)dword_15369C8;
  v8 = 0;
  while ( *v9 != a3 )
  {
    ++v8;
    ++v9;
    if ( v8 == 204 )
      goto LABEL_20;
  }
  if ( v8 >= 0 )
  {
    v19 = sub_75958(&unk_1536B60, v8, &v40, 569929);
    v21 = sub_75958(&unk_1536B60, v19, v20, 569905);
    sub_72368(a1, a2, v21, v40, &unk_1536B60, a4);
  }
LABEL_20:
  v10 = &unk_1536B60;
  return sub_75958(v10, v8, v9, 569713);
}
