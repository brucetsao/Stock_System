
fload FileID1.f


create cyn  1024 allot

: test ( -- )

  s" 4743_20130503.txt" fid1 �ɦW + lplace
 
  �}��1

\  Ū��1
  
\  fid1 �ɮ׸�� + fid1 �ɮ�Ū������ + @ dump
  
  cr
  100 0 do
  cyn 1024 fid1 ���Y�Ǹ� + @ read-line drop drop
  cyn swap type cr  
  loop
  ;
  
  test