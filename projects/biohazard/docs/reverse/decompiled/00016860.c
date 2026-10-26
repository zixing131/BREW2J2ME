int __fastcall sub_16860(int a1)
{
  char *v2; // r5
  int v3; // r0
  int result; // r0
  int v5; // r6

  v2 = (char *)off_16B10 + 92276;
  v3 = (*(int (**)(void))(*(_DWORD *)((char *)off_16B10 + 0xFFFFFFFC + 92276) + 192))();
  result = sub_18818(*(_DWORD *)(v3 + 40), dword_16B14, 0);
  v5 = result;
  if ( result )
  {
    (**(void (__fastcall ***)(int, int, int))&v2[-4])(a1 + 4, result, 2);
    *(_DWORD *)(a1 + 8) = (*(int (__fastcall **)(int))(*(_DWORD *)&v2[-4] + 104))(20 * *(unsigned __int16 *)(a1 + 4));
    (**(void (***)(void))&v2[-4])();
    (**(void (__fastcall ***)(int, int, int))&v2[-4])(a1 + 12, v5 + 2 + 20 * *(unsigned __int16 *)(a1 + 4), 2);
    *(_DWORD *)(a1 + 16) = (*(int (__fastcall **)(int))(*(_DWORD *)&v2[-4] + 104))(72 * *(unsigned __int16 *)(a1 + 12));
    (**(void (***)(void))&v2[-4])();
    (*(void (__fastcall **)(int))(*(_DWORD *)&v2[-4] + 108))(v5);
    *(_DWORD *)(a1 + 804) = *(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 396)
                          + 2088;
    *(_DWORD *)(a1 + 808) = *(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 396)
                          + 2092;
    *(_DWORD *)(a1 + 812) = *(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 396)
                          + 2100;
    *(_DWORD *)(a1 + 816) = *(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 396)
                          + 2116;
    *(_DWORD *)(a1 + 20) = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 380;
    *(_DWORD *)(a1 + 24) = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 384;
    *(_DWORD *)(a1 + 820) = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 388;
    *(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 380) = 50;
    *(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 384) = 50;
    *(_WORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 388) = -1;
    *(_BYTE *)(a1 + 824) = 0;
    *(_DWORD *)(a1 + 28) = 0;
    *(_BYTE *)(a1 + 32) = 0;
    *(_BYTE *)(a1 + 33) = 0;
    *(_DWORD *)(a1 + 36) = 0;
    (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v2[-4] + 4))(a1 + 40, 0, 500);
    *(_WORD *)(a1 + 540) = 0;
    *(_WORD *)(a1 + 798) = -1;
    *(_WORD *)(a1 + 800) = -1;
    *(_WORD *)(a1 + 802) = 0;
    *(_BYTE *)(a1 + 832) = 0;
    *(_BYTE *)(a1 + 833) = 0;
    *(_BYTE *)(a1 + 834) = 0;
    return 1;
  }
  return result;
}

