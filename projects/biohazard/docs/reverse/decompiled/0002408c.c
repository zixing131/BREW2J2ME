int __fastcall sub_2408C(int *a1)
{
  _DWORD *v2; // r4
  void (__fastcall *v3)(_DWORD *); // r1
  int v4; // r0
  int result; // r0

  v2 = (_DWORD *)sub_1058((int)a1, a1[56]);
  (*(void (__fastcall **)(int, char *, int *))(*(_DWORD *)*a1 + 48))(*a1, (char *)off_2410C + 147644, a1);
  v3 = (void (__fastcall *)(_DWORD *))v2[105];
  if ( v3 )
    v3(v2 + 103);
  v4 = v2[101];
  if ( v4 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 4))(v4);
    v2[101] = 0;
  }
  result = v2[100];
  if ( result )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)result + 4))(result);
    v2[100] = 0;
  }
  return result;
}

