.model small
.code

org 100h

start:

        jmp mulai

nama    db 13,10, 'Nama Anda   : $'

hp      db 13,10, 'No. HP/Telp : $'

lanjut  db 13,10, 'LANJUT Tekan y untuk lanjut >>> $'

tampung_nama db 30,?,30 dup(?) 

tampung_hp   db 13,?,13 dup(?)
 
a db 01

b db 02

c db 03

d db 04

e db 05

f db 06

g db 07

h db 08

i db 09

j dw 15

daftar  db 13,10,'|=======================================|'
        db 13,10,'|         DAFTAR EMAS BATANGAN          |'
        db 13,10,'|=======================================|'
        db 13,10,'|No|   BERAT    |   JENIS  |   HARGA    |'
        db 13,10,'|---------------------------------------|'
        db 13,10,'|01|   0,5 GRAM |   ANTAM  |  558,000   |'
        db 13,10,'|02|     1 GRAM |   ANTAM  |  1,016,000 |'
        db 13,10,'|03|     2 GRAM |   ANTAM  |  1,972,000 |'
        db 13,10,'|04|     3 GRAM |   ANTAM  |  2,933,000 |'
        db 13,10,'|05|     5 GRAM |   ANTAM  |  4,855,000 |'
        db 13,10,'|=======================================|','$'

daftar2 db 13,10,'|=======================================|'
        db 13,10,'|No|   BERAT    |   JENIS  |   HARGA    |'
        db 13,10,'|---------------------------------------|'
        db 13,10,'|06|   10 GRAM  |   ANTAM  |  9,655,000 |'
        db 13,10,'|07|   25 GRAM  |   ANTAM  | 24,012,000 |'
        db 13,10,'|08|   50 GRAM  |   ANTAM  | 47,945,000 |'
        db 13,10,'|09|  100 GRAM  |   ANTAM  | 95,812,000 |'
        db 13,10,'|10|  250 GRAM  |   ANTAM  |238,765,000 |'
        db 13,10,'|=======================================|','$' 
        
daftar3 db 13,10,'|=======================================|'
        db 13,10,'|No|   BERAT    |   JENIS  |   HARGA    |'
        db 13,10,'|---------------------------------------|'
        db 13,10,'|11|  0,5 GRAM  |ANTAM RTO |    450,000 |'
        db 13,10,'|12|    1 GRAM  |ANTAM RTO |    916,000 |'
        db 13,10,'|13|    2 GRAM  |ANTAM RTO |  1,832,000 |'
        db 13,10,'|14|    3 GRAM  |ANTAM RTO |  2,900,000 |'
        db 13,10,'|15|    5 GRAM  |ANTAM RTO |  4,580,000 |'
        db 13,10,'|=======================================|','$'
        
daftar4 db 13,10,'|=======================================|'
        db 13,10,'|No|   BERAT    |   JENIS  |   HARGA    |'
        db 13,10,'|---------------------------------------|'
        db 13,10,'|16|   10 GRAM  |ANTAM RTO |  9,160,000 |'
        db 13,10,'|17|   25 GRAM  |ANTAM RTO | 22,789,000 |'
        db 13,10,'|18|   50 GRAM  |ANTAM RTO | 45,578,000 |'
        db 13,10,'|19|  100 GRAM  |ANTAM RTO | 91,157,000 |'
        db 13,10,'|20|  250 GRAM  |ANTAM RTO |226,770,000 |'
        db 13,10,'|=======================================|','$' 
        
daftar5 db 13,10,'|=======================================|'
        db 13,10,'|No|   BERAT    |   JENIS  |   HARGA    |'
        db 13,10,'|---------------------------------------|'
        db 13,10,'|21|   0,5 GRAM |   UBS    |  542,000   |'
        db 13,10,'|22|     1 GRAM |   UBS    |  1,014,000 |'
        db 13,10,'|23|     2 GRAM |   UBS    |  2,012,000 |'
        db 13,10,'|24|     5 GRAM |   UBS    |  4,022,000 |'
        db 13,10,'|25|    10 GRAM |   UBS    |  9,988,000 |'
        db 13,10,'|=======================================|','$' 
        
daftar6 db 13,10,'|=======================================|'
        db 13,10,'|No|   BERAT    |   JENIS  |   HARGA    |'
        db 13,10,'|---------------------------------------|'
        db 13,10,'|26|    25 GRAM |   UBS    | 24,669,000 |'
        db 13,10,'|27|    50 GRAM |   UBS    | 49,235,000 |'
        db 13,10,'|28|   100 GRAM |   UBS    | 98,431,000 |'
        db 13,10,'|---------------------------------------|'
        db 13,10,'|TENTUKAN EMAS PILIHAN ANDA SESUAI NO   |'
        db 13,10,'|=======================================|','$'
        
        
pilih_mtr db 13,10,'Masukkan Kode/Nomor yang anda pilih: $'
error     db 13,10,'Kode yang anda masukkan salah $'
success   db 13,10,'Anda Telah Melakukan Pembelian Emas $'

        mulai:
        mov ah,09h
        lea dx,nama
        int 21h
        mov ah,0ah
        lea dx,tampung_nama
        int 21h
        push dx
        
        
        mov ah,09h
        mov dx,offset daftar
        int 21h
        mov ah,09h
        mov dx,offset lanjut
        int 21h 
        mov ah,01h
        int 21h
        cmp al,'y'
        je page2
        jne error_msg
        
page2:
        mov ah,09h
        mov dx,offset daftar2
        int 21h
        mov ah,09h
        mov dx,offset lanjut  
        int 21h   
        mov ah,01h 
        int 21h
        cmp al,'y'
        je page3
        jne error_msg
                        
page3:
        mov ah,09h
        mov dx,offset daftar3
        int 21h
        mov ah,09h
        mov dx,offset lanjut  
        int 21h   
        mov ah,01h 
        int 21h
        cmp al,'y'
        je page4
        jne error_msg  
        
page4:
        mov ah,09h
        mov dx,offset daftar4
        int 21h
        mov ah,09h
        mov dx,offset lanjut  
        int 21h   
        mov ah,01h 
        int 21h
        cmp al,'y'
        je page5
        jne error_msg 
        
page5:
        mov ah,09h
        mov dx,offset daftar5
        int 21h
        mov ah,09h
        mov dx,offset lanjut  
        int 21h   
        mov ah,01h 
        int 21h
        cmp al,'y'
        je page6
        jne error_msg   
        
page6:
        mov ah,09h
        mov dx,offset daftar6
        int 21h
        mov ah,09h                                                      
        mov dx,offset lanjut  
        int 21h   
        mov ah,01h 
        int 21h
        cmp al,'y'
        jmp proses
        jne error_msg
        
          
                
error_msg:
         mov ah,09h
         mov dx,offset error
         int 21h
         int 20h   
         
proses:
       mov ah,09h
       mov dx,offset pilih_mtr
       int 21h
       
       mov ah,1
       int 21h
       mov bh,al
       mov ah,1
       int 21h
       mov bl,al
       cmp bh,'0'
       cmp bl,'1'
       je hasil1
        
       cmp bh,'0'
       cmp bl,'2'
       je hasil2 
       
       cmp bh,'0'
       cmp bl,'3'
       je hasil3
       
       cmp bh,'0'
       cmp bl,'4'
       je hasil4
       
       cmp bh,'0'
       cmp bl,'5'
       je hasil5
       
       cmp bh,'0'
       cmp bl,'6'
       je hasil6
       
       cmp bh,'0'
       cmp bl,'7'
       je hasil7
       
       cmp bh,'0'
       cmp bl,'8'
       je hasil8
       
       cmp bh,'0'
       cmp bl,'9'
       je hasil9 
       
       cmp bh,'1'
       cmp bl,'0'
       je hasil10
                 
       cmp bh,'1'
       cmp bl,'1'
       je hasil11
       
       cmp bh,'1'
       cmp bl,'2'
       je hasil12
       
       cmp bh,'1'
       cmp bl,'3'
       je hasil13
       
       cmp bh,'1'
       cmp bl,'4'
       je hasil14
       
       cmp bh,'1'
       cmp bl,'5'
       je hasil15
       
       cmp bh,'1'
       cmp bl,'6'
       je hasil16
       
       cmp bh,'1'
       cmp bl,'7'
       je hasil17
       
       cmp bh,'1'
       cmp bl,'8'
       je hasil18
       
       cmp bh,'1'
       cmp bl,'9'
       je hasil19
       
       cmp bh,'2'
       cmp bl,'0'
       je hasil20
       
       cmp bh,'2'
       cmp bl,'1'
       je hasil21
       
       cmp bh,'2'
       cmp bl,'2'
       je hasil22
       
       cmp bh,'2'
       cmp bl,'3'
       je hasil23
       
       cmp bh,'2'
       cmp bl,'4'
       je hasil24
       
       ;jne erorr_msg
     
;=======================================================       

hasil1:
       mov ah,09h
       lea dx,teks01
       int 21h
       int 20h
       
hasil2:
       mov ah,09h
       lea dx,teks02
       int 21h
       int 20h   
hasil3:
       mov ah,09h
       lea dx,teks03
       int 21h
       int 20h  
       
hasil4:
       mov ah,09h
       lea dx,teks04
       int 21h
       int 20h  
       
hasil5:
       mov ah,09h
       lea dx,teks05
       int 21h
       int 20h  
       
hasil6:
       mov ah,09h
       lea dx,teks06
       int 21h
       int 20h  
       
hasil7:
       mov ah,09h
       lea dx,teks07
       int 21h
       int 20h  
       
hasil8:
       mov ah,09h
       lea dx,teks08
       int 21h
       int 20h  
       
hasil9:
       mov ah,09h
       lea dx,teks09
       int 21h
       int 20h
         
hasil10:
       mov ah,09h
       lea dx,teks10
       int 21h
       int 20h  
       
hasil11:
       mov ah,09h
       lea dx,teks11
       int 21h
       int 20h 
       
hasil12:
       mov ah,09h
       lea dx,teks12
       int 21h
       int 20h  
       
hasil13:
       mov ah,09h
       lea dx,teks13
       int 21h
       int 20h  
       
hasil14:
       mov ah,09h
       lea dx,teks14
       int 21h
       int 20h  
       
hasil15:
       mov ah,09h
       lea dx,teks15
       int 21h
       int 20h  
       
hasil16:
       mov ah,09h
       lea dx,teks16
       int 21h
       int 20h 
       
hasil17:
       mov ah,09h
       lea dx,teks17
       int 21h
       int 20h  
       
hasil18:
       mov ah,09h
       lea dx,teks18
       int 21h
       int 20h  
       
hasil19:
       mov ah,09h
       lea dx,teks19
       int 21h
       int 20h  
       
hasil20:
       mov ah,09h
       lea dx,teks20
       int 21h
       int 20h  
       
hasil21:
       mov ah,09h
       lea dx,teks21
       int 21h
       int 20h  
       
hasil22:
       mov ah,09h
       lea dx,teks22
       int 21h
       int 20h  
       
hasil23:
       mov ah,09h
       lea dx,teks23
       int 21h
       int 20h  
       
hasil24:
       mov ah,09h
       lea dx,teks24
       int 21h
       int 20h  
                   
;--------------------------------------------------------------

teks01 db 13,10,'Anda memilih 0,5 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.558,000'
      db 13,10,'Terima Kasih $'
      
teks02 db 13,10,'Anda memilih 1 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.1,016,000'
      db 13,10,'Terima Kasih $'
              
teks03 db 13,10,'Anda memilih 2 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.1,972,000'
      db 13,10,'Terima Kasih $'
           
teks04 db 13,10,'Anda memilih 3 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.2,933,000'
      db 13,10,'Terima Kasih $'
              
teks05 db 13,10,'Anda memilih 5 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.4,855,000'
      db 13,10,'Terima Kasih $'
              
teks06 db 13,10,'Anda memilih 10 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.9,655,000'
      db 13,10,'Terima Kasih $'
              
teks07 db 13,10,'Anda memilih 25 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.24,012,000'
      db 13,10,'Terima Kasih $'
            
teks08 db 13,10,'Anda memilih 50 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.47,945,000'
      db 13,10,'Terima Kasih $'
              

teks09 db 13,10,'Anda memilih 100 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.95,812,000'
      db 13,10,'Terima Kasih $'
              
teks10 db 13,10,'Anda memilih 250 gram emas'
      db 13,10,'Dengan jenis Antam'
      db 13,10,'Total Harga yang dibayar: Rp.238,765,000'
      db 13,10,'Terima Kasih $'
              
teks11 db 13,10,'Anda memilih 0,5 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.450,000'
      db 13,10,'Terima Kasih $'

teks12 db 13,10,'Anda memilih 1 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.916,000'
      db 13,10,'Terima Kasih $'


teks13 db 13,10,'Anda memilih 2 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.1,832,000'
      db 13,10,'Terima Kasih $'
                                                
teks14 db 13,10,'Anda memilih 3 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.2,900,000'
      db 13,10,'Terima Kasih $'

teks15 db 13,10,'Anda memilih 5 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.4,580,000'
      db 13,10,'Terima Kasih $'
                               
teks16 db 13,10,'Anda memilih 10 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.9,160,000'
      db 13,10,'Terima Kasih $'
            
teks17 db 13,10,'Anda memilih 25 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.22,789,000'
      db 13,10,'Terima Kasih $'
            
teks18 db 13,10,'Anda memilih 50 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.45,578,000'
      db 13,10,'Terima Kasih $'
            
teks19 db 13,10,'Anda memilih 100 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.91,157,000'
      db 13,10,'Terima Kasih $'
            
teks20 db 13,10,'Anda memilih 250 gram emas'
      db 13,10,'Dengan jenis Antam RTO'
      db 13,10,'Total Harga yang dibayar: Rp.226,778,000'
      db 13,10,'Terima Kasih $'
                   
teks21 db 13,10,'Anda memilih 0,5 gram emas'
      db 13,10,'Dengan jenis UBS'
      db 13,10,'Total Harga yang dibayar: Rp.542,000'
      db 13,10,'Terima Kasih $'

teks22 db 13,10,'Anda memilih 1 gram emas'
      db 13,10,'Dengan jenis UBS'
      db 13,10,'Total Harga yang dibayar: Rp.1,014,000'
      db 13,10,'Terima Kasih $'
                          
teks23 db 13,10,'Anda memilih 2 gram emas'
      db 13,10,'Dengan jenis UBS'
      db 13,10,'Total Harga yang dibayar: Rp.2,812,000'
      db 13,10,'Terima Kasih $'
                          
teks24 db 13,10,'Anda memilih 5 gram emas'
      db 13,10,'Dengan jenis UBS'
      db 13,10,'Total Harga yang dibayar: Rp.4,022,000'
      db 13,10,'Terima Kasih $'
      
teks25 db 13,10,'Anda memilih 10 gram emas'
      db 13,10,'Dengan jenis UBS'
      db 13,10,'Total Harga yang dibayar: Rp.9,988,000'
      db 13,10,'Terima Kasih $'
                                
teks26 db 13,10,'Anda memilih 25 gram emas'
      db 13,10,'Dengan jenis UBS'
      db 13,10,'Total Harga yang dibayar: Rp.24,669,000'
      db 13,10,'Terima Kasih $'
                                                    
teks27 db 13,10,'Anda memilih 50 gram emas'
      db 13,10,'Dengan jenis UBS'
      db 13,10,'Total Harga yang dibayar: Rp.49,235,000'
      db 13,10,'Terima Kasih $'

teks28 db 13,10,'Anda memilih 100 gram emas'
      db 13,10,'Dengan jenis UBS'
      db 13,10,'Total Harga yang dibayar: Rp.98,431,000'
      db 13,10,'Terima Kasih $'
  
end start                                                                   
              



        