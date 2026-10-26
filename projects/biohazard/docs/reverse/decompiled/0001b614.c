int __fastcall sub_1B614(int a1)
{
  int v2; // r5
  int result; // r0
  bool v4; // zf
  int *v5; // r0
  int v6; // r1
  unsigned int v7; // r0
  int v8; // r0
  int v9; // r1
  unsigned int v10; // r0
  unsigned __int8 *v11; // r0
  int v12; // r1
  int v13; // r1
  int v14; // r0
  int v15; // r0
  bool v16; // cc
  int v17; // r0

  ++*(_DWORD *)(a1 + 320);
  v2 = a1 + 544;
  sub_20228();
  result = *(unsigned __int8 *)(a1 + 420);
  switch ( *(_BYTE *)(a1 + 420) )
  {
    case 0:
      v5 = *(int **)(*(_DWORD *)(a1 + 400) + 24);
      if ( *v5 <= 0 )
      {
        v6 = 4;
        *v5 = 0;
        return sub_59C4(a1, v6, 0);
      }
      sub_20C54(*(_DWORD *)(a1 + 396));
      if ( !*(_BYTE *)(a1 + 564) )
        goto LABEL_19;
      v7 = ((unsigned __int16)(*(_WORD *)(a1 + 566))++ + 1) & 0xFFFEFFFF;
      if ( v7 <= 0x32 )
      {
        if ( *(_BYTE *)(*(_DWORD *)(a1 + 400) + 32) )
          goto LABEL_19;
      }
      else
      {
        *(_BYTE *)(a1 + 564) = 0;
        *(_BYTE *)(*(_DWORD *)(a1 + 400) + 32) = 0;
      }
      *(_BYTE *)(a1 + 564) = 0;
LABEL_19:
      v8 = *(_DWORD *)(a1 + 400);
      if ( *(_BYTE *)(v8 + 828) )
      {
        *(_BYTE *)(v8 + 828) = 0;
        v9 = *(_DWORD *)(a1 + 400);
        v10 = *(unsigned __int16 *)(dword_1B994 + v9);
        if ( v10 >= 0x64 && v10 < 0x1F4 )
        {
          *(_BYTE *)(v9 + v10 + 40) = 1;
          v11 = *(unsigned __int8 **)(a1 + 400);
          v12 = v11[829];
          if ( v12 == 1 )
          {
            if ( v11[833] )
            {
              sub_E00(v2, 0, 8960, 0);
            }
            else
            {
              sub_E00(v2, 0, (int)off_1B998, 0);
              *(_BYTE *)(*(_DWORD *)(a1 + 400) + 833) = 1;
            }
            v13 = *(_DWORD *)(a1 + 400);
            v14 = *(_DWORD *)(v13 + 36) + 10;
            if ( v14 >= dword_1B99C )
              v14 = dword_1B99C;
            *(_DWORD *)(v13 + 36) = v14;
          }
          else if ( v12 == 2 )
          {
            if ( v11[832] )
            {
              sub_E00(v2, 0, dword_1B9A4, 0);
            }
            else
            {
              sub_E00(v2, 0, dword_1B9A0, 0);
              *(_BYTE *)(*(_DWORD *)(a1 + 400) + 832) = 1;
            }
            v15 = *(__int16 *)(*(_DWORD *)(a1 + 400) + 802) + 2;
            v16 = v15 < 768;
            if ( v15 >= 768 )
              v16 = *(__int16 *)(*(_DWORD *)(a1 + 400) + 802) - 766 < 231;
            if ( !v16 )
              LOWORD(v15) = dword_1B9A8;
            *(_WORD *)(*(_DWORD *)(a1 + 400) + 802) = v15;
          }
        }
      }
      v17 = *(_DWORD *)(a1 + 400);
      if ( *(_BYTE *)(v17 + 824) )
      {
        *(_BYTE *)(v17 + 824) = 0;
        sub_24FDC(*(_DWORD *)(a1 + 404), 3, 0, 0);
      }
      sub_24FDC(*(_DWORD *)(a1 + 404), 2, 0, 0);
      sub_24FDC(
        *(_DWORD *)(a1 + 404),
        0,
        (unsigned __int16)**(_DWORD **)(*(_DWORD *)(a1 + 400) + 804),
        (unsigned __int16)**(_DWORD **)(*(_DWORD *)(a1 + 400) + 808));
      sub_24FDC(
        *(_DWORD *)(a1 + 404),
        1,
        (unsigned __int16)**(_DWORD **)(*(_DWORD *)(a1 + 400) + 804),
        (unsigned __int16)**(_DWORD **)(*(_DWORD *)(a1 + 400) + 808));
      result = *(unsigned __int16 *)(*(_DWORD *)(a1 + 404) + 60);
      if ( *(_WORD *)(*(_DWORD *)(a1 + 404) + 60) )
      {
        v6 = 6;
        return sub_59C4(a1, v6, 0);
      }
      return result;
    case 2:
      return sub_214EC(*(_DWORD *)(a1 + 408));
    case 3:
      return sub_20408(*(_DWORD *)(a1 + 416));
    case 4:
      ++*(_WORD *)(a1 + 436);
      result = **(_DWORD **)(*(_DWORD *)(a1 + 400) + 24);
      if ( result > 0 )
      {
        v6 = 0;
        return sub_59C4(a1, v6, 0);
      }
      return result;
    case 6:
      while ( 1 )
      {
        sub_1F908(*(_DWORD *)(a1 + 404));
        ++*(_DWORD *)(*(_DWORD *)(a1 + 396) + 2212);
        result = *(_DWORD *)(a1 + 404);
        v4 = *(_BYTE *)(result + 5) == 0;
        if ( !*(_BYTE *)(result + 5) )
        {
          result = *(unsigned __int16 *)(result + 60);
          v4 = result == 0;
        }
        if ( v4 )
        {
          result = *(unsigned __int8 *)(a1 + 420);
          v4 = result == 6;
        }
        if ( !v4 )
          break;
        sub_59C4(a1, 0, 0);
        sub_24FDC(*(_DWORD *)(a1 + 404), 2, 0, 0);
        result = *(unsigned __int16 *)(*(_DWORD *)(a1 + 404) + 60);
        if ( !*(_WORD *)(*(_DWORD *)(a1 + 404) + 60) )
          break;
        sub_59C4(a1, 6, 0);
      }
      return result;
    default:
      return result;
  }
}

