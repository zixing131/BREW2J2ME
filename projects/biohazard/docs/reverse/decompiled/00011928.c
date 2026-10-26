int __fastcall sub_11928(_DWORD *a1)
{
  char *v2; // r5
  int result; // r0

  sub_11A24();
  if ( a1[17] )
  {
    sub_145C8();
    sub_145BC(a1[17]);
  }
  v2 = (char *)off_11A20 + 72024;
  if ( a1[18] )
    (*(void (**)(void))(*(_DWORD *)&v2[-4] + 108))();
  if ( a1[8] )
  {
    sub_22D38();
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[8]);
    a1[8] = 0;
  }
  if ( a1[11] )
  {
    sub_22A30();
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[11]);
    a1[11] = 0;
  }
  if ( a1[9] )
  {
    sub_22B34();
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[9]);
    a1[9] = 0;
  }
  sub_145D4(a1[461]);
  result = a1[10];
  if ( result )
  {
    sub_22C00();
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[10]);
    a1[10] = 0;
  }
  return result;
}

