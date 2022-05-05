#line 1 "C:/Users/djaro/Desktop/TP-Temperature/MyProject.c"



const unsigned short TEMP_RESOLUTION = 9;

char *text = "0000";
unsigned temp;

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


void Display_Temperature(unsigned int temp2write) {
 const unsigned short RES_SHIFT = TEMP_RESOLUTION - 8;
 char temp_whole;
 unsigned int temp_fraction;


 if (temp2write & 0x8000) {
 text[0] = '-';
 temp2write = ~temp2write + 1;
 }


 temp_whole = temp2write >> RES_SHIFT ;


 if (temp_whole/100)
 text[0] = temp_whole/100 + 48;
 else
 text[0] = '0';

 text[1] = (temp_whole/10)%10 + 48;
 text[2] = temp_whole%10 + 48;
#line 125 "C:/Users/djaro/Desktop/TP-Temperature/MyProject.c"
 UART1_Write_Text(text);
 UART1_Write(13);
 UART1_Write(10);
 Delay_ms(100);

 afficheNombre(temp_whole/10);
}

void main() {
 ANSELE = 0;
 TRISE.B2 = 1;
 ANSELA = 0x00;
 ANSELD = 0x00;

 TRISA = 0x00;

 TRISD=0x00;
 LATA = 0x00;



 UART1_Init(9600);


 Delay_ms(100);

 do {

 Ow_Reset(&PORTE, 2);
 Ow_Write(&PORTE, 2, 0xCC);
 Ow_Write(&PORTE, 2, 0x44);
 Delay_ms(10);

 Ow_Reset(&PORTE, 2);
 Ow_Write(&PORTE, 2, 0xCC);
 Ow_Write(&PORTE, 2, 0xBE);

 temp = Ow_Read(&PORTE, 2);
 temp = (Ow_Read(&PORTE, 2) << 8) + temp;


 Display_Temperature(temp);



 } while (1);
}
