int __fastcall sub_26C90(int *a1)
{
  int v2; // r0
  void (__fastcall *v3)(int); // r1
  _DWORD *v4; // r4
  void (__fastcall *v5)(_DWORD *); // r1
  int v6; // r0
  int result; // r0

  v2 = sub_1058((int)a1, a1[56]);
  v3 = *(void (__fastcall **)(int))(v2 + 156);
  v4 = (_DWORD *)v2;
  if ( v3 )
    v3(v2 + 148);
  v5 = (void (__fastcall *)(_DWORD *))v4[46];
  if ( v5 )
    v5(v4 + 44);
  (*(void (__fastcall **)(int, char *, int *))(*(_DWORD *)*a1 + 48))(*a1, (char *)off_26D14 + 158944, a1);
  v6 = v4[36];
  if ( v6 )
  {
    sub_14314(v6);
    v4[36] = 0;
  }
  result = v4[35];
  if ( result )
  {
    result = sub_14314(result);
    v4[35] = 0;
  }
  v4[96] = 0;
  return result;
}

