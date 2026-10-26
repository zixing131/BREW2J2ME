int __fastcall sub_19AFC(int a1)
{
  _DWORD *v2; // r4
  unsigned int v3; // r0
  int v4; // r0

  v2 = (_DWORD *)sub_1058(a1, *(_DWORD *)(a1 + 224));
  if ( (unsigned __int16)v2[102] )
    return sub_21CCC(a1, 1008, 0);
  if ( !v2[16] )
    sub_21CCC(a1, 1004, 1);
  v3 = v2[16] + 1;
  v2[16] = v3;
  if ( v3 >= *(_DWORD *)(v2[8] + 136) )
  {
    sub_2408C(a1);
    return sub_249B4(a1);
  }
  else
  {
    v4 = v2[101];
    if ( v4 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 4))(v4);
      v2[101] = 0;
    }
    return sub_24B44(a1, v2[8] + 32 * v2[16] + 140, v2[8] + 161 * v2[16] + 504);
  }
}

