int __fastcall sub_24110(int *a1)
{
  _DWORD *v2; // r4

  v2 = (_DWORD *)sub_1058((int)a1, a1[56]);
  if ( v2[100] || !(*(int (__fastcall **)(int, int, _DWORD *))(*(_DWORD *)*a1 + 8))(*a1, dword_24188, v2 + 100) )
  {
    v2[16] = 0;
    v2[107] = (char *)off_2418C + 147820;
    v2[108] = a1;
    sub_24B44(a1, v2[8] + 140, v2[8] + 504);
  }
  return 0;
}

