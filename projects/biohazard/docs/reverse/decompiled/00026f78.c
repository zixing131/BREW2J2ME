int __fastcall sub_26F78(int result)
{
  _DWORD *v1; // r5
  int *v2; // r6
  int v3; // r1
  int *v4; // r4
  int v5; // r1
  unsigned int v6; // r2
  int v7; // r2
  int v8; // r2
  int v9; // r3
  unsigned int v10; // r2

  v1 = (_DWORD *)result;
  if ( !result )
    return result;
  result = sub_1058(result, *(_DWORD *)(result + 224));
  v2 = (int *)result;
  if ( !result )
    return result;
  v3 = *(_DWORD *)(result + 76);
  v4 = (int *)(result + 76);
  if ( !v3 )
  {
    v5 = 0;
    v6 = *(_DWORD *)(result + 80) + 1;
    *(_DWORD *)(result + 80) = v6;
    if ( v6 <= *(_DWORD *)(result + 96) )
      goto LABEL_16;
    v7 = 1;
    goto LABEL_10;
  }
  if ( v3 != 1 )
  {
    if ( v3 == 2 )
    {
      v5 = *(_DWORD *)(result + 84);
      v10 = *(_DWORD *)(result + 80) + 1;
      *(_DWORD *)(result + 80) = v10;
      if ( v10 <= *(_DWORD *)(result + 100) )
        goto LABEL_16;
    }
    else
    {
      v5 = 0;
    }
    *v4 = 0;
    goto LABEL_15;
  }
  v8 = *(_DWORD *)(result + 80);
  v9 = *(_DWORD *)(result + 92);
  v5 = v9 * v8++;
  *(_DWORD *)(result + 80) = v8;
  if ( (unsigned int)(v9 * v8) > *(_DWORD *)(result + 84) )
  {
    v7 = 2;
LABEL_10:
    *v4 = v7;
LABEL_15:
    *(_DWORD *)(result + 80) = 0;
  }
LABEL_16:
  if ( *(_DWORD *)(result + 124) )
    sub_14338(
      *(_DWORD *)(result + 12),
      *(__int16 *)(result + 116),
      *(__int16 *)(result + 118),
      *(__int16 *)(result + 120),
      *(__int16 *)(result + 122),
      *(_DWORD *)(result + 124),
      v5,
      0,
      2);
  sub_145AC(v2[3]);
  return (*(int (__fastcall **)(_DWORD, int, int, _DWORD *))(*(_DWORD *)*v1 + 44))(*v1, v2[22], v2[32], v1);
}

