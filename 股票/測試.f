: demo_test1 ( -- )  
     1   50   220   50  200   �ek�u
     2  150   300  100  200   �ek�u
     3  200   300  100  150   �ek�u 
     4  150   300  100  150   �ek�u
     5  250   300  100  200   �ek�u           
     6  200   300   50  200   �ek�u
     7  100   100  100  100   �ek�u             
     8  300   300  100  300   �ek�u  
     9  100   100  300  100   �ek�u
     10 150   200  100  150   �ek�u  
     ;  
0 value ior1
0 value eof1     
0 value readflg 

     
: demo_test    
\  readflg 0 = if  
  1 to ����
  s" 4743_20130506.txt" fid1 �ɦW + lplace
  �}��1
  
  temp$ 1 + 1024 fid1 ���Y�Ǹ� + @  read-line  to ior1  to eof1 drop

  \ 300 0 do
   begin
    temp$ 1 +  1024 fid1 ���Y�Ǹ� + @  read-line  to ior1  to eof1 temp$ c!  
  
    eof1   while
  
  ����  
  ����
  �}�L��$ ���    
  �̰���$ ���   
  �̧C��$ ���    
  ���L��$ ���    
  
  �ek�u
  
\  ���L�� mcad1 5 mcad to mcad1
  
    ���� 1 + to ����


    repeat
 \ loop
  ����1  
\  then
  
\   1 to readflg
  ;     