fload FileID1.f
0 value �ɶ�
0 value �}�L��
0 value �̰���
0 value �̧C��
0 value ���L��
0 value ����q

0 value new_len
0 value new_adr
0 value save_len
0 value save_adr

create cyn  1024 allot

create �}�L��$ 256 allot
create �̰���$ 256 allot
create �̧C��$ 256 allot
create ���L��$ 256 allot
create ����q$ 256 allot
create �ɶ�$   256 allot



: ��� { adr | num dot flg -- }
  0 to num
  0 to dot
  0 to flg
   adr c@ 0 do

   flg 0 =
   if
    num 10 * to num
    adr i + 1 + c@  \ dup emit cr
    dup 0x2e =
      if
        drop
        1 to flg
        num 10 * to num
      else
        0x30 -
        num +
        to num
      then
    else
      flg 1 + to flg
      dot 10 * to dot
      adr i + 1 + c@  \ dup emit cr
        0x30 -
        dot +
        to dot
    then
  loop
    flg case
    0 of  num 100 * dot +  endof
    1 of  num dot +  endof
    2 of  num dot 10 * +  endof
    3 of  num dot +  endof
    endcase

    ;


: �U�@����� { adr | -- }
  save_adr 1 +  save_len 0x09 scan  to new_len to new_adr
  save_adr 1 +  save_len new_len -  adr place
  new_len to save_len
  new_adr to save_adr
  ;

: ���� ( -- )
  temp$ count 0x09 scan  to new_len to new_adr
  temp$ count new_len - �ɶ�$ place
  new_len to save_len
  new_adr to save_adr
\  ." �ɶ�" �ɶ�$ count type

  �}�L��$ �U�@�����
\  ." �}�L��" �}�L��$ count type

  �̰���$ �U�@�����
\  ." �̰���" �̰���$ count type

  �̧C��$ �U�@�����
\  ." �̧C��" �̧C��$ count type


  ���L��$ �U�@�����
\  ." ���L��" ���L��$ count type

  ����q$ �U�@�����
\  ." ����q" ����q$ count type   \ ����q$ number drop
  ;




: test { | eof ior -- }
  s" 4743_20130503.txt" fid1 �ɦW + lplace
  �}��1
  cr
  \ 100 0 do


   temp$ 1 + 1024 fid1 ���Y�Ǹ� + @  read-line  to ior  to eof drop

  begin



    temp$ 1 +  1024 fid1 ���Y�Ǹ� + @  read-line  to ior  to eof temp$ c!  

  \   eof . ior .

     eof
     while


  cr  ����
  ." �ɶ�" �ɶ�$ count type
  ." �}�L��" �}�L��$ count type
  ." �̰���" �̰���$ count type
  ." �̧C��" �̧C��$ count type
  ." ���L��" ���L��$ count type
  ." ����q" ����q$ count type   \ ����q$ number drop


\  ." �ɶ�" �ɶ�$ count type
\  ." �}�L��" �}�L��$ ��� .
\  ." �̰���" �̰���$ ��� .
\  ." �̧C��" �̧C��$ ��� .
\  ." ���L��" ���L��$ ��� .
\  ." ����q" ����q$ number drop .
    cr
    repeat

    
    
    ;

  test

\s
  s" 1234." temp$ place
  temp$ ���  . cr

   s" 5678" temp$ place
  temp$ ���   . cr

    s" 4321.5" temp$ place
  temp$ ���    . cr

      s" 8765.43" temp$ place
  temp$ ���    . cr


