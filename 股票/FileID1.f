fload FileIO.f

\ fid1
 0 constant    ���Y�Ǹ�
 4 constant    �ɮ��ݩ�
 8 constant    �ɮת���
16 constant    �ɮױ�Ū����
20 constant    �ɮ�Ū������
24 constant    �ɦW          \ [�ɦW����]+[�ɦW�r��]
\ fid1+[�ɦW]  �ɮ׸�� 

:  �ɮ׸�� ( fid -- �ɮ׸�Ʀ첾 ) 
   �ɦW + dup @ 4 +  
   ;

 0 value fid1
 
\ ��l file1_buffer �]�� 4096byte 
4096 allocate drop to fid1
4000 fid1 �ɮױ�Ū���� + !
r/w fid1 �ɮ��ݩ� + !   
\ create fid1_buf 4096 allot
\ fid_buf to fid1

        
: �}��1 ( -- )
  fid1 �ɦW + lcount
  fid1 �ɮ��ݩ� + @
  �}����
  fid1 ���Y�Ǹ� + ! 
  ;
  
: ����1 ( -- )
  fid1 @ ����
  fid1 free
  ;
  
  
: Ū��1 ( -- )
  \ �ܧ� buffer
  fid1 �ɦW + dup @ 4 + + 
  fid1 �ɮױ�Ū���� + @
  fid1 ���Y�Ǹ� + @    
  Ū�� 
  fid1 �ɮ�Ū������ + !  
  ; 
 

: �g��1 ( �_�l��m ���� -- )  
  fid1 ���Y�Ǹ� + @
  �g��
  ;