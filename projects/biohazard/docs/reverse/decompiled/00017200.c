int __fastcall sub_17200(int a1, int a2, int a3)
{
  int (*v5)(); // r0
  char *v7; // r9
  int v8; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r6
  int v13; // r0
  int v14; // r0
  int v15; // r6
  int **v16; // r1
  int v17; // r0
  _BYTE *v18; // r0
  int v19; // r0
  int v20; // r1

  *(_DWORD *)(a1 + 316) = 5;
  *(_DWORD *)(a1 + 320) = 0;
  v5 = off_1770C;
  *(_BYTE *)(a1 + 420) = 0;
  *(_DWORD *)(a1 + 364) = (char *)v5 + 94768;
  *(_DWORD *)(a1 + 368) = (char *)off_17710 + 94780;
  *(_DWORD *)(a1 + 372) = (char *)off_17714 + 94792;
  *(_DWORD *)(a1 + 376) = (char *)off_17718 + 94804;
  sub_22508(*(_DWORD *)(a2 + 36));
  *(_BYTE *)(a1 + 390) = 0;
  *(_WORD *)(a1 + 442) = **(_WORD **)(a2 + 32);
  *(_WORD *)(a1 + 444) = *(_WORD *)(*(_DWORD *)(a2 + 32) + 2);
  *(_WORD *)(a1 + 446) = 0;
  *(_WORD *)(a1 + 448) = 0;
  sub_1712C(a1 + 452, *(_DWORD *)(a2 + 40));
  *(_DWORD *)(a1 + 460) = *(_DWORD *)(a2 + 40);
  sub_16580(a1);
  sub_16EC8(a1 + 544);
  v7 = (char *)off_1771C + 94908;
  *(_DWORD *)(a1 + 392) = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_1771C + 0xFFFFFFFC + 94908) + 192))()
                                    + 44);
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_DWORD *)(a1 + 416) = 0;
  v8 = (*(int (__fastcall **)(int))(*(_DWORD *)&v7[-4] + 104))(dword_17720);
  *(_DWORD *)(a1 + 396) = v8;
  *(_WORD *)(v8 + 2204) = *(_WORD *)(a1 + 442);
  *(_WORD *)(*(_DWORD *)(a1 + 396) + 2206) = *(_WORD *)(a1 + 444) - 47;
  *(_WORD *)(*(_DWORD *)(a1 + 396) + 2208) = 0;
  *(_WORD *)(*(_DWORD *)(a1 + 396) + 2210) = 47;
  sub_17AE8(*(_DWORD *)(a1 + 396));
  v9 = (*(int (**)(void))(*(_DWORD *)&v7[-4] + 192))();
  v10 = sub_18818(*(_DWORD *)(v9 + 40), dword_17724, 0);
  v11 = v10;
  if ( !v10 || !sub_189E8(*(_DWORD *)(a1 + 396), v10) )
    return 0;
  (*(void (__fastcall **)(int))(*(_DWORD *)&v7[-4] + 108))(v11);
  v13 = (*(int (__fastcall **)(int))(*(_DWORD *)&v7[-4] + 104))(836);
  *(_DWORD *)(a1 + 400) = v13;
  if ( v13 )
  {
    sub_16860(v13);
    **(_DWORD **)(a1 + 400) = (*(int (**)(void))(*(_DWORD *)&v7[-4] + 192))() + 888;
  }
  *(_DWORD *)(*(_DWORD *)(a1 + 396) + 2224) = *(_DWORD *)(a1 + 400);
  *(_DWORD *)(a1 + 404) = 0;
  v14 = (*(int (__fastcall **)(int))(*(_DWORD *)&v7[-4] + 104))(84);
  *(_DWORD *)(a1 + 404) = v14;
  if ( v14 )
  {
    sub_167E4(v14, *(_DWORD *)(a1 + 400));
    *(_DWORD *)(*(_DWORD *)(a1 + 404) + 56) = 0;
    *(_DWORD *)(*(_DWORD *)(a1 + 404) + 8) = a1;
    *(_DWORD *)(*(_DWORD *)(a1 + 404) + 12) = a1 + 452;
    *(_DWORD *)(*(_DWORD *)(a1 + 404) + 16) = a1 + 544;
  }
  if ( a3 == -1 )
  {
    sub_5E14(*(_DWORD *)(a1 + 400), 1);
    sub_5DD4(*(_DWORD *)(a1 + 400), 1);
    **(_DWORD **)(*(_DWORD *)(a1 + 400) + 804) = 80;
    **(_DWORD **)(*(_DWORD *)(a1 + 400) + 808) = 848;
    **(_DWORD **)(*(_DWORD *)(a1 + 400) + 812) = 0;
  }
  else
  {
    v15 = (*(int (**)(void))(*(_DWORD *)&v7[-4] + 192))() + 100;
    sub_5E14(*(_DWORD *)(a1 + 400), *(_WORD *)v15);
    sub_5DD4(*(_DWORD *)(a1 + 400), *(_WORD *)v15);
    **(_DWORD **)(*(_DWORD *)(a1 + 400) + 804) = *(__int16 *)(v15 + 2);
    **(_DWORD **)(*(_DWORD *)(a1 + 400) + 808) = *(__int16 *)(v15 + 4);
    **(_DWORD **)(*(_DWORD *)(a1 + 400) + 812) = *(__int16 *)(v15 + 6);
    *(_DWORD *)(*(_DWORD *)(a1 + 400) + 28) = *(_DWORD *)(v15 + 8);
    **(_DWORD **)(*(_DWORD *)(a1 + 400) + 24) = *(_DWORD *)(v15 + 12);
    *(_DWORD *)(*(_DWORD *)(a1 + 400) + 36) = *(_DWORD *)(v15 + 16);
    *(_WORD *)(*(_DWORD *)(a1 + 400) + 802) = *(_WORD *)(v15 + 520);
    *(_WORD *)(*(_DWORD *)(a1 + 400) + 798) = *(_WORD *)(v15 + 522);
    *(_WORD *)(*(_DWORD *)(a1 + 400) + 540) = *(_WORD *)(v15 + 524);
    *(_WORD *)(*(_DWORD *)(a1 + 400) + 800) = *(_WORD *)(v15 + 526);
    (**(void (__fastcall ***)(int, int, int))&v7[-4])(*(_DWORD *)(a1 + 400) + 40, v15 + 20, 500);
    (**(void (__fastcall ***)(int, int, int))&v7[-4])(*(_DWORD *)(a1 + 400) + 542, v15 + 528, 256);
    *(_BYTE *)(*(_DWORD *)(a1 + 400) + 832) = *(_BYTE *)(v15 + 785);
    *(_BYTE *)(*(_DWORD *)(a1 + 400) + 833) = *(_BYTE *)(v15 + 786);
    *(_BYTE *)(*(_DWORD *)(a1 + 400) + 834) = *(_BYTE *)(v15 + 787);
  }
  sub_59C4(a1, 8, 0);
  *(_BYTE *)(*(_DWORD *)(a1 + 400) + *(unsigned __int8 *)(*(_DWORD *)(*(_DWORD *)(a1 + 400) + 8) + 7) + 40) = *(_BYTE *)(**(_DWORD **)(a1 + 400) + 4);
  *(_BYTE *)(*(_DWORD *)(a1 + 400) + *(unsigned __int8 *)(*(_DWORD *)(*(_DWORD *)(a1 + 400) + 8) + 67) + 40) = *(_BYTE *)(**(_DWORD **)(a1 + 400) + 7);
  *(_BYTE *)(*(_DWORD *)(a1 + 400) + *(unsigned __int8 *)(*(_DWORD *)(*(_DWORD *)(a1 + 400) + 8) + 127) + 40) = *(_BYTE *)(**(_DWORD **)(a1 + 400) + 10);
  *(_BYTE *)(*(_DWORD *)(a1 + 400) + 33) = *(_BYTE *)(**(_DWORD **)(a1 + 400) + 47);
  v16 = *(int ***)(a1 + 400);
  v17 = **v16;
  if ( v17 > 0 )
  {
    *v16[5] = v17;
    if ( a3 == -1 )
      **(_DWORD **)(*(_DWORD *)(a1 + 400) + 24) = ***(_DWORD ***)(a1 + 400);
  }
  v18 = *(_BYTE **)(a1 + 400);
  if ( *(_BYTE *)(*(_DWORD *)v18 + 56) == 1 )
  {
    v18[122] = *(_BYTE *)(*(_DWORD *)v18 + 57);
    v19 = *(_DWORD *)(a1 + 400);
    if ( *(__int16 *)(v19 + 800) < 0 )
    {
      *(_WORD *)(v19 + 800) = *(_WORD *)(v19 + 540);
      ++*(_WORD *)(*(_DWORD *)(a1 + 400) + 540);
    }
    (**(void (__fastcall ***)(int, int, int))&v7[-4])(
      *(_DWORD *)(a1 + 400) + 8 * *(__int16 *)(*(_DWORD *)(a1 + 400) + 800) + 542,
      **(_DWORD **)(a1 + 400) + 48,
      8);
  }
  v20 = dword_17728;
  *(_BYTE *)(a1 + 564) = 0;
  *(_WORD *)(v20 + a1) = 4;
  sub_24C64(a2, *(unsigned __int8 *)(a2 + 89), dword_1772C);
  *(_BYTE *)(a1 + 560) = 0;
  return 1;
}

