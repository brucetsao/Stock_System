0 value �̧C��
0 value �̰���
0 value ���L��
0 value �}�L��
0 value ���� 
0 value ���Z
0 value �����j

: �e���u 
        0xff 0 0 �C���ܧ�  
        ���� ���Z * 
        �̰��� �����j /
        ���� ���Z * 
        �̧C�� �����j /  
        Line: dc
        ;
        
: �e���u
        0xff 0xff 0xff �C���ܧ�
        ���� ���Z * 
        �̰��� �����j /
        ���� ���Z * 
        �̧C�� �����j /
        Line: dc        
        ;
        
: �e������             
        ���� ���Z * ���Z 2 / - 
        �}�L�� �����j /
        ���� ���Z * ���Z 2 / +
        ���L�� �����j / 
        LTRED FillArea: dc        
        ;     
        
: �e������        
        ���� ���Z * ���Z 2 / -
        ���L�� �����j /
        ���� ���Z * ���Z 2 / +
        �}�L�� �����j / 
        LTBACK FillArea: dc  
        ;

: �ek�u ( ���� �}�L�� �̰��� �̧C�� ���L�� -- )
    �}�L�� ���L�� > 
    if
      �e���u    
      �e������             
    else
      �e���u  
      �e������             
    then
    ;