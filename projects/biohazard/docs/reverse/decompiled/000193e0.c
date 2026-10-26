int __fastcall sub_193E0(int a1, int a2, int a3, int a4)
{
  char *v7; // r10
  int v8; // r0
  int v9; // r3
  _DWORD *v10; // r5
  int v11; // r0
  int v12; // r0
  int i; // r8
  unsigned int v14; // r0
  unsigned int v15; // r7
  _BYTE *v17; // r0
  _BYTE *v18; // r4
  char *v19; // r5
  int j; // r6
  int v21; // r0
  unsigned int v22; // [sp+0h] [bp-Ch] BYREF
  int v23; // [sp+4h] [bp-8h]
  int v24; // [sp+8h] [bp-4h]

  v23 = a3;
  v24 = a4;
  sub_22A30();
  if ( *(_DWORD *)(a1 + 28) )
    return 1;
  v7 = (char *)off_19614 + 103444;
  v8 = (*(int (**)(void))(*(_DWORD *)((char *)off_19614 + 0xFFFFFFFC + 103444) + 192))();
  v24 = sub_18818(*(_DWORD **)(v8 + 40), a2 + 20000, (int)&v22, v9);
  if ( v24 )
  {
    v10 = (_DWORD *)(v24 + 8);
    v11 = (unsigned __int16)*(_DWORD *)(v24 + 4);
    v23 = *(_DWORD *)(v24 + 4);
    *(_WORD *)(a1 + 32) = v11;
    v12 = (*(int (__fastcall **)(int))(*(_DWORD *)&v7[-4] + 104))(8 * v11);
    *(_DWORD *)(a1 + 28) = v12;
    if ( v12 )
    {
      for ( i = 0; i < v23; ++i )
      {
        *(_WORD *)(*(_DWORD *)(a1 + 28) + 8 * i) = *v10;
        v14 = v10[1];
        v10 += 2;
        v22 = v14;
        *(_WORD *)(*(_DWORD *)(a1 + 28) + 8 * i + 2) = v14;
        v15 = 0;
        *(_DWORD *)(*(_DWORD *)(a1 + 28) + 8 * i + 4) = (*(int (__fastcall **)(unsigned int))(*(_DWORD *)&v7[-4] + 104))(4 * v22);
        while ( v15 < v22 )
        {
          if ( !*v10++ )
          {
            v17 = (_BYTE *)(*(int (__fastcall **)(int))(*(_DWORD *)&v7[-4] + 104))(12);
            v18 = v17;
            if ( v17 )
            {
              *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 28) + 8 * i + 4) + 4 * v15) = v17;
              *v17 = 0;
              (**(void (__fastcall ***)(int, _DWORD *, int))&v7[-4])((int)(v17 + 4), v10, 2);
              v19 = (char *)v10 + 2;
              (**(void (__fastcall ***)(int, char *, int))&v7[-4])((int)(v18 + 6), v19, 2);
              v10 = v19 + 2;
              if ( *((_WORD *)v18 + 3) )
                *((_DWORD *)v18 + 2) = (*(int (__fastcall **)(int))(*(_DWORD *)&v7[-4] + 104))(24 * *((unsigned __int16 *)v18 + 3));
              for ( j = 0; *((unsigned __int16 *)v18 + 3) > j; ++j )
              {
                v21 = *((_DWORD *)v18 + 2);
                if ( v21 )
                  (**(void (__fastcall ***)(int, _DWORD *, int))&v7[-4])(v21 + 24 * j, v10, 24);
                v10 += 6;
              }
              if ( !*((_DWORD *)v18 + 2) )
                *((_WORD *)v18 + 3) = 0;
            }
          }
          ++v15;
        }
      }
      (*(void (__fastcall **)(int))(*(_DWORD *)&v7[-4] + 108))(v24);
      return 1;
    }
  }
  return 0;
}

