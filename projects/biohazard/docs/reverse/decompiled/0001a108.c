int __fastcall sub_1A108(_DWORD *a1)
{
  char *v2; // r5

  sub_602C((int)a1);
  v2 = (char *)off_1A224 + 106784;
  if ( a1[104] )
  {
    nullsub_2();
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[104]);
    a1[104] = 0;
  }
  if ( a1[102] )
  {
    nullsub_1();
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[102]);
    a1[102] = 0;
  }
  if ( a1[100] )
  {
    sub_229BC();
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[100]);
    a1[100] = 0;
  }
  if ( a1[101] )
  {
    sub_228B8();
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[101]);
    a1[101] = 0;
  }
  if ( a1[102] )
  {
    nullsub_1();
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[102]);
    a1[102] = 0;
  }
  if ( a1[99] )
  {
    sub_22DB0();
    if ( a1[99] )
    {
      (*(void (**)(void))(*(_DWORD *)&v2[-4] + 108))();
      a1[99] = 0;
    }
  }
  return sub_22F1C(a1 + 136);
}

