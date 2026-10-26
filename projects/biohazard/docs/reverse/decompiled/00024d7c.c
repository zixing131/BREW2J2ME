int __fastcall sub_24D7C(_DWORD *a1)
{
  int v2; // r5
  int result; // r0
  _DWORD v4[7]; // [sp+0h] [bp-1Ch] BYREF

  v2 = (*(int (**)(void))(*(_DWORD *)((char *)off_24E3C + 0xFFFFFFFC + 150932) + 192))();
  sub_19618(*(int **)(v2 + 40), *(unsigned __int16 *)(*(_DWORD *)(*a1 + 8) + 20 * a1[3]), (int)a1 + 18, 0x20u);
  v4[0] = 1;
  v4[1] = a1[3] + 500;
  v4[2] = (char *)a1 + 18;
  v4[3] = 0;
  v4[4] = 100;
  v4[5] = dword_24E40;
  v4[6] = v2 + 1848;
  a1[79] = (char *)off_24E44 + 151060;
  a1[80] = a1;
  result = sub_14BDC(*(_DWORD *)(v2 + 1844), v4, (int)(a1 + 75), (int)(a1 + 82));
  *(_BYTE *)(v2 + 1880) = 1;
  return result;
}

