\ ���ƪ���������
        : ��ܿ��~�T�� ( �T���m���m ���� --- ) ErrorBox ;

        : ��ܰT�� ( ���D�r��m���m ���� �T���m���m ���� --- )

                temp$ place
                temp$ +NULL
                MB_TASKMODAL rot rot
                2dup + 0 swap c! drop  ( rel>abs )
                temp$ 1+ ( rel>abs )
                NULL Call MessageBox drop
                ;
                
                0 value �ɮ׿�����_ID
                FileOpenDialog �ɮ׿���r "�ɮ׿��" "All Files|*.*|"
                FileOpenDialog �ӷ��ɮ׿���r "�ӷ��ɮ׿��" "All Files|*.*|"
                FileSaveDialog �ؼ��ɮ׿���r "�ؼ��ɮ׿��" "All Files|*.*|"
        :Object �ɮ׿�����  <super window
                :M Classinit:   ( -- )
                        ClassInit: super
                        self to �ɮ׿�����_ID
                        ;M
                ;Object

\ ���a�ɮת����s

        : �}�� ( �ɦW�s���m �ɦW���� �ɮ��ݩ�  --- ���Y�Ǹ� ) \ 2000/08/30
                rot rot drop 1 - swap
                2dup
                swap count rot
                open-file 0 <> 
                if 
                    drop
                    swap count rot
                    create-file 0 <>
                    if
                           s"  �}�ɥ���!" ��ܿ��~�T��
                    then
                else
                    rot rot 2drop
                then
                ;
        : �}���� ( �ɦW�s���m �ɦW���� �ɮ��ݩ� --- ���Y�Ǹ� ) \ 2000/08/30
                open-file 0 <>
                if 
                    s"  �}���ɥ���!" ��ܿ��~�T��
                then
                ;
        : ���� ( ���Y�Ǹ�  --- )   \ 2000/08/30
                close-file 0 <>
                if
                    s" ���ɥ���!" ��ܿ��~�T��
                then
                ;                
        : �ɮפj�p? ( ���Y�Ǹ� --- �C32�� ��32�� ) \ 2000/08/30
                file-size 0 <>
                if
                     s" �ɮ׾ާ@���~!" ��ܿ��~�T�� bye
                then
                ;
        : Ū�� ( �s���m ���� ���Y�Ǹ�  --- ����Ū�J������ )  \ 2000/08/30
                read-file  0 <>
                if
                    s" Ū�ɥ���!" ��ܿ��~�T�� bye
                then
                ;
        : �g�� ( �_�l��m ���� ���Y�Ǹ�  --- )   \ 2000/08/30
                write-file  0 <>
                if
                    s" �g�ɥ���!" ��ܿ��~�T��  bye
                then
                ;
        : �����ɮ׫��� ( �C32���첾�� ��32���첾�� ���Y�Ǹ� --- ) \ 2000/08/30
                reposition-file 0 <>
                if
                    s" ���ʥ���!" ��ܿ��~�T�� bye
                then
                ;

        : �ɮ׿��  ( --- �ɦW�s���m �ɦW���� ) \ 2000/08/30
                    GetHandle: �ɮ׿�����_ID
                    Start: �ɮ׿���r dup c@
                    if   count
                    ( 2dup cr  ." You are choosed " type cr )
                    else drop s" �ɮ׿�ܿ��~" ��ܿ��~�T�� bye
                    then
                    Close: �ɮ׿�����
                    ;
        : �ӷ��ɮ׿��  ( --- �ɦW�s���m �ɦW���� ) \ 2000/08/30
                    GetHandle: �ɮ׿�����_ID
                    Start: �ӷ��ɮ׿���r dup c@
                    if   count
                    ( 2dup cr  ." You are choosed " type cr )
                    else drop s" �ӷ��ɮ׿�ܿ��~" ��ܿ��~�T�� bye
                    then
                    Close: �ɮ׿�����
                    ;

        : �ؼ��ɮ׿��  ( --- �ɦW�s���m �ɦW���� ) \ 2000/08/30
                    GetHandle: �ɮ׿�����_ID
                    Start: �ؼ��ɮ׿���r dup c@
                    if   count
                    ( 2dup cr  ." You are choosed " type cr )
                    else drop s" �ؼ��ɮ׿�ܿ��~" ��ܿ��~�T�� bye
                    then
                    Close: �ɮ׿�����
                    ;

        : ���s�����ɦW ( �ɦW�_�l��m �ɦW���� �����ɦW�_�l��m �����ɦW���� �s�ɦW��m --- )
                dup
                5 roll
                5 roll
                2dup
                ascii . scan  swap drop - 1 +
                2 roll place
                +place
                ;  

 
      
      
      
      
 
                               