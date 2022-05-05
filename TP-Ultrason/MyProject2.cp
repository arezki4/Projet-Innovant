#line 1 "C:/Users/djaro/Desktop/TP-Ultrason/MyProject2.c"
#line 17 "C:/Users/djaro/Desktop/TP-Ultrason/MyProject2.c"
 int etape;



 void afficheChiffre(char chiffre,char position){







 LATA = 0x01 << position;

 switch(chiffre){
 case 0:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
 LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 0;LATD7_bit = 0;
 break;

 case 1:LATD0_bit = 0;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
 LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 0;
 break;

 case 2:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 0;LATD3_bit = 1;
 LATD4_bit = 1;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
 break;

 case 3:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
 LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
 break;

 case 4:LATD0_bit = 0;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
 LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
 break;

 case 5:LATD0_bit = 1;LATD1_bit = 0;LATD2_bit = 1;LATD3_bit = 1;
 LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
 break;

 case 7:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
 LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 0;
 break;

 case 8:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
 LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
 break;

 case 9:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
 LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;

 default:
 break;
 }
 }


 void afficheNombre(char nb){
 char chiffre0,chiffre1,chiffre2,chiffre3;



 chiffre3 = nb/1000;
 nb -= chiffre3*1000;

 chiffre2 = nb/100;
 nb -= chiffre2*100;

 chiffre1 = nb/10;
 nb -= chiffre1*10;

 chiffre0 = nb;



 afficheChiffre(chiffre0,0);
 Delay_ms(1);
 afficheChiffre(chiffre1,1);
 Delay_ms(1);
 afficheChiffre(chiffre2,2);
 Delay_ms(1);
 afficheChiffre(chiffre3,3);
 Delay_ms(1);
 }
#line 118 "C:/Users/djaro/Desktop/TP-Ultrason/MyProject2.c"
void main(void) {


 int etape = 0;
 int compte = 0;
 float nombreaffiche = 0;

 char distChar[4];
#line 132 "C:/Users/djaro/Desktop/TP-Ultrason/MyProject2.c"
 ANSELA = 0x00;
 ANSELB = 0x00;
 ANSELC = 0x00;
 ANSELD = 0x00;

 TRISA = 0x00;

 TRISB = 0x01;
 TRISD=0x00;

 LATA = 0x00;
 LATB = 0x00;

 etape = 0;



 UART1_Init(9600);





 while(1)
 {
 switch(etape)
 {
 case 0:

 LATB1_bit = 1;
 compte = 0;
 etape++ ;
 break;
 case 1:
 Delay_ms(1);

 LATB1_bit = 0;
 etape++ ;
 break;
 case 2:



 if(PORTB & 0x01)
 {
 while(PORTB & 0x01)
 {


 compte++;
 delay_us(10);
 }
 etape++;
 }
 break;
 case 3:

 nombreaffiche = (float)compte*10/58.82;
 Delay_ms(1);


 afficheNombre((int)nombreaffiche);


 IntToStr((int)nombreaffiche, distChar);

 UART1_Write_Text(distChar);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(100);

 etape=0;
 break;
 }
 }
}
