anew �ƹ�����

fload �j�T������.f 


	1600 value	WindowSize_W
	800	value	WindowSize_H
	0 value	WindowPosition_X
	0	value	WindowPosition_Y

	variable TimeRate
	  
\ 100 value �̧C��
\ 200 value �̰���
\ 150 value ���L��
\ 130 value �}�L��
\ 6 value   ���� 
6 value   ���Z
10 value   �����j
800 value ������
  

	1000 TimeRate !				\ init timer to a 2 ms rate		
	ColorObject TheNextColor	\ �ϥ� �C�⪫��

:Object �ƹ�     <Super Window	\ �ŧi �ƹ�
	: �C���ܧ� ( R G B --- )
        rgb NewColor: TheNextColor
        TheNextColor ?ColorCheck
		LineColor: dc
        ;
        
	: �e�I  ( x y --- )
		TheNextColor SetPixel: dc
        ;

: �e���u 
        0xff 0 0 �C���ܧ�  
        ���� ���Z * 
        ������ �̰��� �����j / -
        Moveto: dc
        ���� ���Z * 
        ������ �̧C�� �����j / - 
        Lineto: dc
        ;
        
: �e���u
        0x0 0x0 0x0 �C���ܧ�
        ���� ���Z * 
        ������ �̰��� �����j / -
        Moveto: dc
        ���� ���Z * 
        ������ �̧C�� �����j / -
        Lineto: dc        
        ;
        
: �e������             
        ���� ���Z * ���Z 2 / -  1 +  
        ������ �}�L�� �����j /  -
        ���� ���Z * ���Z 2 / +  1 -
        ������ ���L�� �����j /  -
        LTRED FillArea: dc        
        ;     
        
: �e������        
        ���� ���Z * ���Z 2 / - 1 +
        ������ ���L�� �����j /  -
        ���� ���Z * ���Z 2 / +  1 -
        ������ �}�L�� �����j / - 
        BLACK FillArea: dc  
        ;


: �e��u
     \   0xff 0 0 �C���ܧ�  
        ���� ���Z * ���Z 2 / -  1 + 
        ������ ���L�� �����j / -
        Moveto: dc
        ���� ���Z * ���Z 2 / +  1 -
        ������ ���L�� �����j / - 
        Lineto: dc
        ;


: �ek�u ( ���� �}�L�� �̰��� �̧C�� ���L�� -- )
  to ���L��    
  to �̧C��
  to �̰���  
  to �}�L��    
  to ����
        

    ���L�� �}�L��  > 
    if
      �e���u    
      �e������             
    else
      ���L�� �}�L�� =
      if        
           �̰��� ���L�� - ���L�� �̧C�� -  >
        if
          �e���u            
        else   
          �e���u                
        then        
        �e��u
      else
        �e���u        
        �e������
      then             
    then
    ;
  
  

  
fload ����.f  
  
  
  
  
	int counter
        
	:M StartSize:   ( -- w h )      \ �����󪺤j�p
		WindowSize_W WindowSize_H
        ;M
	:M StartPos:    ( -- x y )      \ ����b �ୱ����m
		WindowPosition_X WindowPosition_Y
        ;M
	:M WindowTitle: ( -- Zstring )  \ �����󪺼��D
        z" �ƹ�"
        ;M
	:M On_Paint:    { \ temp$ -- }  \ all window refreshing is done by On_Paint:

     \ 80 250 300 100 200 
     
        0xff 0 0  �C���ܧ�     100 100     Moveto: dc   200 200     Lineto: dc
        0x00 0x00 0xff  �C���ܧ�     100 200     Moveto: dc   200 100     Lineto: dc   
        demo_test                             
		;M
    
	:M On_Init:     ( -- )          \ things to do at the start of window creation
       	On_Init: super             \ do anything superclass needs
        0 to counter               \ then initialize counter is zero
        0 TimeRate @ 1 hWnd Call SetTimer drop        	
       
        
       	;M
       
       :M WM_LBUTTONDOWN ( h m w l -- res )
       		Paint: self

            0
            ;M
                
	:M WM_TIMER     ( h m w l -- res ) \ handle the WM_TIMER events
		1 +to counter              \ bump the counter
    

 
                
        Paint: self                \ refresh the window
        0 ;M
            
	:M On_Done:     ( -- )          \ things to do before program termination
                1 hWnd Call KillTimer drop \ destroy the timer, we are done
                On_Done: super             \ then do things superclass needs
                ;M
                                                
;Object
\ -----------------------------------------------------------------------
	: end-demo        ( -- )                  \ close the demo window
                Close: �ƹ� ;
	: demo  ( -- )                  \ start running the demo program
        	Start: �ƹ�
        	;
	demo