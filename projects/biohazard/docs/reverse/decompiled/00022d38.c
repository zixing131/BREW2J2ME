int __fastcall sub_22D38(_DWORD *a1)
{
  int v2; // r0
  int v3; // r0
  char *v4; // r5

  v2 = a1[10];
  if ( v2 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 4))(v2);
  v3 = a1[9];
  if ( v3 )
    sub_1432C(v3);
  v4 = (char *)off_22DA8 + 142704;
  if ( a1[5] )
    (*(void (**)(void))(*(_DWORD *)&v4[-4] + 108))();
  if ( a1[6] )
    (*(void (**)(void))(*(_DWORD *)&v4[-4] + 108))();
  return sub_10174((int)a1);
}

