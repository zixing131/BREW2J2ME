int __fastcall sub_26068(int *a1)
{
  int v2; // r4
  int *v3; // r0
  int v4; // r1
  char *v5; // r4
  int result; // r0

  v2 = sub_1058((int)a1, a1[56]);
  v3 = (int *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v2 + 144) + 24))(*(_DWORD *)(v2 + 144));
  v4 = *v3;
  if ( *v3 >= 0 && v4 < 400 )
  {
    result = v3[1];
    *(_DWORD *)(v2 + 204) = result;
    if ( result )
    {
      *(_DWORD *)(v2 + 192) = (char *)off_26168 + 155952;
      *(_DWORD *)(v2 + 196) = a1;
      return (*(int (__fastcall **)(int, int))(*(_DWORD *)result + 16))(result, v2 + 176);
    }
  }
  else
  {
    if ( v4 == -1289 )
    {
      v5 = (char *)off_26150 + 155832;
      (*(void (__fastcall **)(char *, int, char *, int))(*(_DWORD *)((char *)off_26150 + 0xFFFFFFFC + 155832) + 156))(
        off_2615C[0] + 155864,
        4,
        off_26158 + 155852,
        dword_26154);
      (*(void (__fastcall **)(char *))(*(_DWORD *)&v5[-4] + 156))(off_26160 + 155884);
    }
    return (*(int (__fastcall **)(int, int, char *, int *))(*(_DWORD *)*a1 + 44))(
             *a1,
             2000,
             (char *)off_26164 + 155908,
             a1);
  }
  return result;
}

