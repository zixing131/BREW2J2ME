int __fastcall sub_5E14(int a1, __int16 a2)
{
  int (*v2)(); // r6
  int v3; // r5
  char *v4; // r6
  int v5; // r0
  int result; // r0
  int v7; // r4
  int v8; // r7
  int v9; // r0

  v2 = off_5F20;
  *(_BYTE *)(a1 + 824) = 0;
  v3 = (__int16)(a2 - 1);
  v4 = (char *)v2 + 24120;
  v5 = (*(int (**)(void))(*(_DWORD *)&v4[-4] + 192))();
  result = sub_18818(*(_DWORD *)(v5 + 40), v3 + 52000, 0);
  v7 = result;
  if ( result )
  {
    v8 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v4[-4] + 192))() + 36);
    v9 = (*(int (**)(void))(*(_DWORD *)&v4[-4] + 192))();
    if ( sub_18B5C(*(_DWORD *)(*(_DWORD *)(v9 + 1888) + 396), v7, v8) )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)&v4[-4] + 108))(v7);
      *(_WORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v4[-4] + 192))() + 1888) + 388) = v3;
      *(_WORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v4[-4] + 192))() + 1888) + 438) = 0;
      result = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v4[-4] + 192))() + 1888) + 256;
      *(_WORD *)(result + 184) = 0;
    }
    else
    {
      return (*(int (__fastcall **)(int))(*(_DWORD *)&v4[-4] + 108))(v7);
    }
  }
  return result;
}

