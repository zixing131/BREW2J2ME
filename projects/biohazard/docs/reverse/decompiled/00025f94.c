int __fastcall sub_25F94(int *a1)
{
  int v2; // r0
  void (__fastcall *v3)(int); // r1
  _DWORD *v4; // r4
  void (__fastcall *v5)(_DWORD *); // r1
  int v6; // r0
  int v7; // r0
  char *v8; // r6
  int result; // r0

  v2 = sub_1058((int)a1, a1[56]);
  v3 = *(void (__fastcall **)(int))(v2 + 156);
  v4 = (_DWORD *)v2;
  if ( v3 )
    v3(v2 + 148);
  v5 = (void (__fastcall *)(_DWORD *))v4[46];
  if ( v5 )
    v5(v4 + 44);
  (*(void (__fastcall **)(int, char *, int *))(*(_DWORD *)*a1 + 48))(*a1, (char *)off_26060 + 155620, a1);
  v6 = v4[36];
  if ( v6 )
  {
    sub_14314(v6);
    v4[36] = 0;
  }
  v7 = v4[35];
  if ( v7 )
  {
    sub_14314(v7);
    v4[35] = 0;
  }
  v8 = (char *)off_26064 + 155676;
  if ( v4[95] )
  {
    (*(void (**)(void))(*(_DWORD *)&v8[-4] + 108))();
    v4[95] = 0;
  }
  result = v4[94];
  if ( result )
  {
    result = (*(int (**)(void))(*(_DWORD *)&v8[-4] + 108))();
    v4[94] = 0;
  }
  v4[97] = 0;
  v4[96] = 0;
  v4[98] = 0;
  return result;
}

