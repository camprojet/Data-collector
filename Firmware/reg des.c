#define      BT1  PORTF.RF1
#define      BT2  PORTF.RF2
#define      BT3  PORTF.RF3
#define      LEDG PORTB.RB0
#define      LEDY PORTB.RB1
#define      LEDR1 PORTB.RB2
#define      LEDR2 PORTB.RB3
#define      LEDR3 PORTB.RB4

sbit Mmc_Chip_Select at RC2_bit;
sbit Mmc_Chip_Select_Direction at TRISC2_bit;

sbit Soft_I2C_Scl           at RE0_bit;
sbit Soft_I2C_Sda           at RE1_bit;
sbit Soft_I2C_Scl_Direction at TRISE0_bit;
sbit Soft_I2C_Sda_Direction at TRISE1_bit;

sbit LCD_RS at LATH3_bit;
sbit LCD_EN at LATH2_bit;
sbit LCD_D4 at LATH4_bit;
sbit LCD_D5 at LATH5_bit;
sbit LCD_D6 at LATH6_bit;
sbit LCD_D7 at LATH7_bit;

sbit LCD_RS_Direction at TRISH3_bit;
sbit LCD_EN_Direction at TRISH2_bit;
sbit LCD_D4_Direction at TRISH4_bit;
sbit LCD_D5_Direction at TRISH5_bit;
sbit LCD_D6_Direction at TRISH6_bit;
sbit LCD_D7_Direction at TRISH7_bit;

unsigned long conteudo[39];
unsigned char arquivo[20];
unsigned char memoria[538];
unsigned char sdata[8];
unsigned char shora[8];
unsigned long mama[4];
unsigned int pou;
unsigned int pod;
unsigned int poc;
unsigned int pom;
unsigned int nsm;
unsigned int nsc;
unsigned int nsd;
unsigned int nsu;
unsigned int tns;
unsigned int npm;
unsigned int npc;
unsigned int npd;
unsigned int npu;
unsigned int tpt;
unsigned int npont;
unsigned int pina;
unsigned int pinb;
char dpont;
char txt[3];
char nomesd[9]="DESOTEC";
char pontb[6]="0000";
char ponta[6]="0000";
char ponteiro[6]="0000";
char filename[13]     = "xxxx_xx.bin";
char serialnumber[6]="0000";
char serial[6] = "0000";
char seriala[6]="0000";
char maquina[6]= "0000";
char calend[16]="00/00/00 00:00";
int uart_rd;
int uart_rd1;
int cont;
char character;                              // Declara variável
unsigned long  i, o, u, mem, memt;

unsigned short rdia;
unsigned short rmes;
unsigned short anot;
unsigned short rmin;
unsigned short rhora;



void acerta_cal()
  {
     opr1:
     while(BT3==0)       // aguarda o botão OK
     {goto opr1;}
       delay_ms(1000);
       Lcd_Init();
       Lcd_Cmd(_LCD_CURSOR_OFF);
       Lcd_Out(1,1,"ACERTA RELOGIO ?");
       Lcd_Out(2,1,"  SIM      NAO  ");
       delay_ms(250);
       sel3:
       Lcd_Out(2,12,"   ");
       delay_ms(250);
       Lcd_Out(2,12,"NAO");
       delay_ms(250);
       if(BT1==0 && BT2==0 && BT3==1)
        {Lcd_Cmd(_LCD_CLEAR);
         Lcd_Cmd(_LCD_CURSOR_OFF);
         Lcd_Out(1,1,"   FINALIZADO");
         while(1);
        }
     if (BT1==1 && BT2==0 && BT3==0)
      {   sel4:
          Lcd_Out(2,3,"   ");
          delay_ms(250);
          Lcd_Out(2,3,"SIM");
          delay_ms(250);
          if(BT1==1 && BT2==0 && BT3==0)
            {
             goto sel3;
             }
       if (BT1==0 && BT2==0 && BT3==1)
        {
            unsigned char drdia;
            char msgd[2];
            Lcd_Cmd(_LCD_UNDERLINE_ON);
            Lcd_Cmd(_LCD_BLINK_CURSOR_ON);
            Lcd_Out(1,1,"DATA:00/00/00   ");
            Lcd_Out(2,1,"HORA:00:00   OK ");
            delay_ms(1000);
            voltdia:
            rdia=1;
            voltadia:
            IntToStr(rdia,&drdia);
            drdia=msgd;
            Lcd_Out(1,5,&msgd[2]);
            if(BT3==1)
             {
              if (rdia>30)
               {
               rdia=0;
               }
               rdia++;
               delay_ms(300);
               goto voltadia;
              }

         if(BT1==1)
          {
                unsigned char drmes;
                char msgm[2];
                if (rdia>29 && rdia<32)
                 {
                  rdia=rdia+18;
                 }
                if (rdia>19 && rdia<30)
                 {
                  rdia=rdia+12;
                  }
                if (rdia>9 && rdia<20)
                 {
                  rdia=rdia+6;
                  }
                rmes=1;
                delay_ms(500);
                voltames:
                IntToStr(rmes,&drmes);
                drmes=msgm;
                Lcd_Out(1,9,&msgm[3]);
                if(BT3==1)
                 {
                  if (rmes>11)
                   {
                    rmes=0;
                   }
                  rmes++;
                  delay_ms(300);
                  goto voltames;
                 }
              if(BT1==1)
               {
                  unsigned char ranot;
                  char msga[2];
                  if (rmes>19 && rmes<24)
                   {
                    rmes=rmes+12;
                   }
                  if (rmes>9 && rmes<20)
                   {
                    rmes=rmes+6;
                   }
                  anot=18;
                  delay_ms(500);
                  voltaano:
                  IntToStr(anot,&ranot);
                  ranot=msga;
                  Lcd_Out(1,12,&msga[3]);
                  if(BT3==1)
                   {
                    if (anot>99)
                     {anot=14;}
                    anot++;
                    delay_ms(300);
                   }
                  if(BT1==1)
                   {
                    unsigned char drhora;
                    char msgh[2];
                    if (anot>89 && anot<100)
                     {
                     anot=anot+54;
                     }
                    if (anot>79 && anot<90)
                     {
                     anot=anot+48;
                     }
                    if (anot>69 && anot<80)
                     {
                     anot=anot+42;
                     }
                    if (anot>59 && anot<70)
                     {
                     anot=anot+36;
                     }
                    if (anot>49 && anot<60)
                     {
                     anot=anot+30;
                     }
                    if (anot>39 && anot<50)
                     {
                     anot=anot+24;
                     }
                    if (anot>29 && anot<40)
                     {
                     anot=anot+18;
                     }
                    if (anot>19 && anot<30)
                     {
                     anot=anot+12;
                     }
                    if (anot>9 && anot<20)
                     {
                      anot=anot+6;
                     }
                    rhora=12;
                    delay_ms(500);
                    voltahora:
                    IntToStr(rhora,&drhora);
                    drhora=msgh;
                    Lcd_Out(2,6,&msgh[3]);
                    if(BT3==1)
                     {
                      if (rhora>22)
                       {
                        rhora=-1;
                        }
                      rhora++;
                      delay_ms(300);
                      goto voltahora;
                      }
                      if(BT1==1)
                       {
                        unsigned char drmin;
                        char msgm[2];
                        if (rhora>19 && rhora<24)
                         {
                         rhora=rhora+12;
                         }
                        if (rhora>9 && rhora<20)
                        {
                         rhora=rhora+6;
                         }
                        rmin=0;
                        delay_ms(500);
                        voltamin:
                        IntToStr(rmin,&drmin);
                        drmin=msgm;
                        Lcd_Out(2,9,&msgm[3]);
                        if(BT3==1)
                         {
                         if (rmin>58)
                          {
                           rmin=-1;
                           }
                         rmin++;
                         delay_ms(300);
                         goto voltamin;
                         }
                        if(BT1==1)
                         {
                          if (rmin>49 && rmin<60)
                           {
                           rmin=rmin+30;
                           }
                          if (rmin>39 && rmin<50)
                           {
                            rmin=rmin+24;
                            }
                          if (rmin>29 && rmin<40)
                           {
                            rmin=rmin+18;
                            }
                          if (rmin>19 && rmin<30)
                           {
                            rmin=rmin+12;
                            }
                          if (rmin>9 && rmin<20)
                           {
                            rmin=rmin+6;
                            }
                          sel6:
                          Lcd_Cmd(_LCD_CURSOR_OFF);
                          Lcd_Out(2,14,"  ");
                          delay_ms(250);
                          Lcd_Out(2,14,"OK");
                          delay_ms(250);
                          if (BT1==1 && BT2==0 && BT3==0)
                           {
                            delay_ms(500);
                            Lcd_Cmd(_LCD_UNDERLINE_ON);
                            Lcd_Cmd(_LCD_BLINK_CURSOR_ON);
                            goto voltdia;
                            }
                          if (BT1==0 && BT2==0 && BT3==1)
                           {
                             delay_ms(1);
                             Uart1_Write(0x24);
                             delay_ms(1);
                             Uart1_Write(0x73);
                             delay_ms(1);
                             Uart1_Write(0x72);
                             delay_ms(1);
                             Uart1_Write(0x20);
                             delay_ms(1);
                             Uart1_Write(anot);
                             delay_ms(1);
                             Uart1_Write(rmes);
                             delay_ms(1);
                             Uart1_Write(rdia);
                             delay_ms(1);
                             Uart1_Write(rhora);
                             delay_ms(1);
                             Uart1_Write(rmin);
                             delay_ms(1);
                             Uart1_Write(0x00);
                             delay_ms(1);
                             Uart1_Write(0x0D);
                             LEDY=1;
                             delay_ms(1000);
                             LEDG=1;
                             LEDY=0;
                             Uart1_Write(0x24);
                             delay_ms(1);
                             Uart1_Write(0x61);
                             delay_ms(1);
                             Uart1_Write(0x74);
                             delay_ms(1);
                             Uart1_Write(0x20);
                             delay_ms(1);
                             Uart1_Write(0x6E);
                             delay_ms(1);
                             Uart1_Write(0x0D);
                             delay_ms(1);
                             Lcd_Cmd(_LCD_CLEAR);
                             Lcd_Chr_Cp(' ');
                             Lcd_Chr_Cp(' ');
                             Lcd_Chr_Cp(' ');
                             Lcd_Chr_Cp('F');
                             Lcd_Chr_Cp('O');
                             Lcd_Chr_Cp('R');
                             Lcd_Chr_Cp('M');
                             Lcd_Chr_Cp('A');
                             Lcd_Chr_Cp('T');
                             Lcd_Chr_Cp('A');
                             Lcd_Chr_Cp('N');
                             Lcd_Chr_Cp('D');
                             Lcd_Chr_Cp('O');
                             //Lcd_Chr_Cp(' ');
                             //Lcd_Chr_Cp(' ');
                             //Lcd_Chr_Cp(' ');
                             Lcd_Cmd(_LCD_BLINK_CURSOR_ON);
                             while(1)
                              {
                                if(UART1_Data_Ready())
                                 {
                                  uart_rd = UART1_Read();
                                  //Lcd_Out(2,3,&uart_rd);
                                  if (uart_rd==0x4B)
                                   {
                                    Lcd_Cmd(_LCD_CLEAR);
                                    Lcd_Cmd(_LCD_CURSOR_OFF);
                                    Lcd_Chr_Cp(' ');
                                    Lcd_Chr_Cp(' ');
                                    Lcd_Chr_Cp(' ');
                                    Lcd_Chr_Cp('F');
                                    Lcd_Chr_Cp('I');
                                    Lcd_Chr_Cp('N');
                                    Lcd_Chr_Cp('A');
                                    Lcd_Chr_Cp('L');
                                    Lcd_Chr_Cp('I');
                                    Lcd_Chr_Cp('Z');
                                    Lcd_Chr_Cp('A');
                                    Lcd_Chr_Cp('D');
                                    Lcd_Chr_Cp('O');
                                    while(1);
                                    }
                                 }
                               }
                             while(1);
                            }
                           goto sel6;
                          }
                        goto voltamin;
                       }
                     goto voltahora;
                   }
                   goto voltaano;
                }
            goto voltames;
           }
          goto voltadia;
         }
        goto sel4;
       }
    goto sel3;
   }
   

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                    Cria um Arquivo caso nao exista                      *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void M_Create_New_File()
{
  if (Mmc_Fat_Assign(&filename, 0xA0)==0)
  {
    Mmc_Fat_Rewrite();                  // limpa e cria arquivo
   }
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                    Adiciona dados em arquivo existente                  *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void M_Open_File_Append()
{
  if (conteudo[6]<=64){serialnumber[0]=conteudo[6]-48;}
  if (conteudo[6]>=65){serialnumber[0]=conteudo[6]-55;}
  nsm=serialnumber[0]*4096;

  if (conteudo[7]<=64){serialnumber[1]=conteudo[7]-48;}
  if (conteudo[7]>=65){serialnumber[1]=conteudo[7]-55;}
  nsc=serialnumber[1]*256;

  if (conteudo[8]<=64){serialnumber[2]=conteudo[8]-48;}
  if (conteudo[8]>=65){serialnumber[2]=conteudo[8]-55;}
  nsd=serialnumber[2]*16;

  if (conteudo[9]<=64){serialnumber[3]=conteudo[9]-48;}
  if (conteudo[9]>=65){serialnumber[3]=conteudo[9]-55;}
  nsu=serialnumber[3];
  tns=nsu+nsd+nsc+nsm;
  IntToStr(tns,serial);
  filename[0]=serial[2];
  filename[1]=serial[3];
  filename[2]=serial[4];
  filename[3]=serial[5];
  maquina[0]=serial[2];
  maquina[1]=serial[3];
  maquina[2]=serial[4];
  maquina[3]=serial[5];
  erro10:
  if(Mmc_Fat_Exists(&filename)==1)
   {
    Mmc_Fat_Assign(&filename,0x20);
    Mmc_Fat_Delete();
    delay_ms(100);
   }
  Mmc_Fat_Assign(&filename,0xA0);
  Mmc_Fat_Rewrite();
  if(Mmc_Fat_Exists(&filename)==0)
   {
     Mmc_Fat_QuickFormat (nomesd);
     Lcd_Cmd(_LCD_CLEAR);
     Lcd_Cmd(_LCD_CURSOR_OFF);
     Lcd_Out(2,2,"FORMAT. ERRADA");
     goto erro10;
   }

}


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                    Sobrescreve dados em arquivo existente               *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void M_Open_File_Rewrite()
{
  Mmc_Fat_Assign(&filename, 0);                // Procura se há algum arquivo dentro da pasta
  Mmc_Fat_Rewrite();                           // Prepara para sobrescrever arquivo
  Mmc_Fat_Write(txt, strlen(txt)); // Escreve dados no arquivo
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                         Deleta arquivo existente                        *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void M_Delete_File()
{
  Mmc_Fat_Assign(&filename, 0);                 // Procura se há algum arquivo dentro da pasta
  Mmc_Fat_Delete();                            // Deleta arquivo
}
void Clone()
{
Mmc_Fat_Write(&character,1);
}
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                         Lê  arquivo existente                           *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
void descarga()
{
  Mmc_Fat_Assign(&filename, 0);
  Mmc_Fat_Reset(&mem);
 }
void Desc()
{
  //Lcd_Out(2,1,"DESC..");
  i++;
  desc:
  descarga();
  if (i <= mem)
  {
     i++;
     u++;
     for (o=1; o <= u; o++)
     {
     
     Mmc_Fat_Read(&character);
     }
     Mmc_Fat_Assign(&filename,0);
     Mmc_Fat_Append();
     Mmc_Fat_Write(&character,1);
     goto desc;
  }

 }
 
void pega_cal()    // pega calendario
   {
    calend[0]=conteudo[20];
    calend[1]=conteudo[21];
    calend[2]=conteudo[22];
    calend[3]=conteudo[23];
    calend[4]=conteudo[24];
    calend[5]=conteudo[25];
    calend[6]=conteudo[26];
    calend[7]=conteudo[27];
    calend[8]=conteudo[28];
    calend[9]=conteudo[29];
    calend[10]=conteudo[30];
    calend[11]=conteudo[31];
    calend[12]=conteudo[32];
    calend[13]=conteudo[33];
   }

void le_memoria()
  {
   volta4:
   LEDY=1;
   delay_ms(1);
   Uart1_Write(0x24);
   delay_ms(1);
   Uart1_Write(0x72);
   delay_ms(1);
   Uart1_Write(0x64);
   delay_ms(1);
   Uart1_Write(0x20);
   delay_ms(1);
   Uart1_Write(0x30);
   delay_ms(1);
   Uart1_Write(0x30);
   delay_ms(1);
   Uart1_Write(pom);
   delay_ms(1);
   Uart1_Write(poc);
   delay_ms(1);
   Uart1_Write(pod);
   delay_ms(1);
   Uart1_Write(pou);
   delay_ms(1);
   Uart1_Write(0x0D);
   cont=0;
   volta2:
    if (UART1_Data_Ready())
      {
       uart_rd1 = UART1_Read();
        if (uart_rd1==0x0D||uart_rd1==0x0A)
         {
          goto volta2;
         }
      }
     /*if (UART1_Data_Ready())
      {
       uart_rd = UART1_Read();
        if(uart_rd==0xFF)
         {
          return;
         }
       } */
   volta3:
    if (UART1_Data_Ready())
      {
       uart_rd = UART1_Read();
       memoria[cont] = uart_rd;
       cont++;
       LEDY=0;
       }
 while(cont<=538)
  {
   goto volta3;
  }
  if (memoria[530] != 0x3C && memoria[531] != 0x52 ){Lcd_Out(2,1,&memoria[530] );goto volta4;}       // verifica se o conteudo da memoria esta correto
}

void grava_sd()
{
 le_memoria();
 memoria[531]=pom;memoria[532]=poc;memoria[533]=pod;memoria[534]=pou;    // grava pagina na memória para debug
 Mmc_Fat_Write(memoria,528);       // alterar para 538 para gravar pagina na memoria para debug
}

void coleta_1()
{
 //Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,1,"MAQ.");
 Lcd_Out(1,5,maquina);
 Lcd_Out(1,10,"COLETA1");
 Lcd_Out(2,1,"                ");
 LEDR1=1;

 if (conteudo[2]<=64){ponteiro[0]=conteudo[2]-48;}
 if (conteudo[2]>=65){ponteiro[0]=conteudo[2]-55;}
 npm=ponteiro[0]*4096;

 if (conteudo[3]<=64){ponteiro[1]=conteudo[3]-48;}
 if (conteudo[3]>=65){ponteiro[1]=conteudo[3]-55;}
 npc=ponteiro[1]*256;

 if (conteudo[4]<=64){ponteiro[2]=conteudo[4]-48;}
 if (conteudo[4]>=65){ponteiro[2]=conteudo[4]-55;}
 npd=ponteiro[2]*16;

 if (conteudo[5]<=64){ponteiro[3]=conteudo[5]-48;}
 if (conteudo[5]>=65){ponteiro[3]=conteudo[5]-55;}
 npu=ponteiro[3];
 tpt=(npu+npd+npc+npm);

 if (tpt<1059)
  {
   pina=1059-tpt;
   pinb=8191-pina;
   IntToHex(pinb,ponta);
   Lcd_Out(4,1,&ponta);
   pom=ponta[0];
   poc=ponta[1];
   pod=ponta[2];
   pou=ponta[3];
   contar:
   while(pou<57)
   {
    pou++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    }
    if (pou==57){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar;
    }
    pom=48;poc=48;pod=48;pou=49;
   contar1:
    while(pou<58)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0;while(1);}
    pou++;
    }
    if (pou==58){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar1;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar1;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar1;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar1;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar1;
    }
   LEDG=1;
   LEDY=0;
   while(1);
   }
 if (tpt>1059)
  {
   pinb=tpt-1059;
   IntToHex(pinb,ponta);
   Lcd_Out(4,1,&ponta);
   pom=ponta[0];
   poc=ponta[1];
   pod=ponta[2];
   pou=ponta[3];
   contar2:
    while(pou<58)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    if (pou==58){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar2;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar2;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar2;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar2;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar2;
    }
   LEDG=1;
   LEDY=0;
   while(1);
   }
 if (tpt=1059)
  {
   pom=48;poc=48;pod=48;pou=49;
  contar3:
    while(pou<58)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    if (pou==58){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar3;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar3;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar3;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar3;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar3;
    }
   Lcd_Out(2,7,"FINALIZADA");
   acerta_cal();
   LEDG=1;
   LEDY=0;
   while(1);
  }
while(1);
}

void coleta_2()
{
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,1,"MAQ.");
 Lcd_Out(1,5,maquina);
 Lcd_Out(1,10,"COLETA2");
 Lcd_Out(2,1,"                ");
 LEDR2=1;
 // Mmc_Fat_Rewrite();
 if (conteudo[2]<=64){ponteiro[0]=conteudo[2]-48;}
 if (conteudo[2]>=65){ponteiro[0]=conteudo[2]-55;}
 npm=ponteiro[0]*4096;

 if (conteudo[3]<=64){ponteiro[1]=conteudo[3]-48;}
 if (conteudo[3]>=65){ponteiro[1]=conteudo[3]-55;}
 npc=ponteiro[1]*256;

 if (conteudo[4]<=64){ponteiro[2]=conteudo[4]-48;}
 if (conteudo[4]>=65){ponteiro[2]=conteudo[4]-55;}
 npd=ponteiro[2]*16;

 if (conteudo[5]<=64){ponteiro[3]=conteudo[5]-48;}
 if (conteudo[5]>=65){ponteiro[3]=conteudo[5]-55;}
 npu=ponteiro[3];
 tpt=(npu+npd+npc+npm);
 if (tpt<4092)
  {pina=4092-tpt;
   pinb=8191-pina;
   IntToHex(pinb,ponta);
   Lcd_Out(4,1,&ponta);
   pom=ponta[0];
   poc=ponta[1];
   pod=ponta[2];
   pou=ponta[3];
   contar7:
   while(pou<57)
   {
    pou++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    }
    if (pou==57){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar7;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar7;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar7;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar7;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar7;
    }
    pom=48;poc=48;pod=48;pou=49;
   contar8:
    while(pou<58)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0;acerta_cal(); while(1);}
    pou++;
    }
    if (pou==58){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA"); acerta_cal();LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar8;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar8;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar8;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar8;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar8;
    }
   LEDG=1;
   LEDY=0;
   while(1);
   }
 if (tpt>4092)
  {
   pinb=tpt-4092;
   IntToHex(pinb,ponta);
   Lcd_Out(4,1,&ponta);
   pom=ponta[0];
   poc=ponta[1];
   pod=ponta[2];
   pou=ponta[3];
   contar9:
    while(pou<58)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    if (pou==58){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar9;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar9;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar9;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar9;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar9;
    }
   LEDG=1;
   LEDY=0;
   while(1);
   }
 if (tpt=4092)
  {
   pom=48;poc=48;pod=48;pou=49;
  contara:
    while(pou<58)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    if (pou==58){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contara;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contara;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contara;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal();LEDG=1; LEDY=0; while(1);}
    goto contara;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contara;
    }
   Lcd_Out(2,7,"FINALIZADA");
   acerta_cal();
   LEDG=1;
   LEDY=0;
   while(1);
  }
return;
}

void coleta_3()
{
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,1,"MAQ.");
 Lcd_Out(1,1,"MAQ.");
 Lcd_Out(1,5,maquina);
 Lcd_Out(1,10,"COLETA3");
 Lcd_Out(2,1,"                ");
 LEDR3=1;
 if (conteudo[2]<=64){ponteiro[0]=conteudo[2]-48;}
 if (conteudo[2]>=65){ponteiro[0]=conteudo[2]-55;}
 npm=ponteiro[0]*4096;

 if (conteudo[3]<=64){ponteiro[1]=conteudo[3]-48;}
 if (conteudo[3]>=65){ponteiro[1]=conteudo[3]-55;}
 npc=ponteiro[1]*256;

 if (conteudo[4]<=64){ponteiro[2]=conteudo[4]-48;}
 if (conteudo[4]>=65){ponteiro[2]=conteudo[4]-55;}
 npd=ponteiro[2]*16;

 if (conteudo[5]<=64){ponteiro[3]=conteudo[5]-48;}
 if (conteudo[5]>=65){ponteiro[3]=conteudo[5]-55;}
 npu=ponteiro[3];
 tpt=(npu+npd+npc+npm);
 pinb=tpt+1;
 IntToHex(pinb,ponta);
 Lcd_Out(4,1,&ponta);
 pom=ponta[0];   // 0x1;  para ponteiro fixo e ler amemoria inteira
 poc=ponta[1];   //0xF;
 pod=ponta[2];   //0xF;
 pou=ponta[3];   //0xF;
 le_memoria();
 if (memoria[0] == 0xFF && memoria[1] == 0xFF && memoria[2] == 0xFF && memoria[3] == 0xFF && memoria[4] == 0xFF)        // verifica se a pag está vazia
  {
   pom=48;poc=48;pod=48;pou=48;
   contar4:
    while(pou<57)
    {
    pou++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    }
    if (pou==57){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar4;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar4;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar4;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar4;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar4;
    }
   LEDG=1;
   LEDY=0;
   while(1);
   }
   contar5:
     while(pou<58)
     {
      grava_sd();
      Lcd_Out(2,1,&pom);
      Lcd_Out(2,2,&poc);
      Lcd_Out(2,3,&pod);
      Lcd_Out(2,4,&pou);
      pou++;
      }
    if (pou==58){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar5;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar5;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar5;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar5;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    goto contar5;
    }
    pom=48;poc=48;pod=48;pou=49;
   contar6:
    while(pou<58)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    if (pou==58){pou=65;}
    while(pou<71)
    {
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    pou++;
    }
    pou=48;
    while(pod<57)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar6;
    }
    if(pod==57){pod=64;}
    while(pod<70)
    {
    pod++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar6;
    }
    pod=48;
    while(poc<57)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar6;
    }
    if(poc==57){poc=64;}
    while(poc<70)
    {
    poc++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar6;
    }
    poc=48;
    while(pom<49)
    {
    pom++;
    grava_sd();
    Lcd_Out(2,1,&pom);
    Lcd_Out(2,2,&poc);
    Lcd_Out(2,3,&pod);
    Lcd_Out(2,4,&pou);
    if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
    goto contar6;
    }
   Lcd_Out(2,7,"FINALIZADA");
   acerta_cal();
   LEDG=1;
   LEDY=0;
   while(1);
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                            Rotina Principal                             *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void main(void)
{
  ADCON1 = 0x0F;                  // Configura os pinos como digitais
  CMCON  = 7;                     // Desliga os comparadores
  TRISA=0b11111111;
  PORTA=0;                        // Inicializa o PORTA em zero
  TRISB=0b00000000;
  PORTB=0;
  TRISC=0b10010000;
  PORTC=0;
  TRISD=0b00100000;
  PORTD=0;
  TRISF=0b11111110;
  PORTF=0;
  UART1_Init(115200);
  
  Lcd_Init();
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);

  Inicio:
  cont=0;
  u=0;
  i=0;
  
  SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV4, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
  SPI_Set_Active(&SPI1_Read, &SPI1_Write);
  Lcd_Out(1,5,"MODO USB");
  
  erro:
  if (Mmc_Fat_Init()==255)
   {  
   //Lcd_Cmd(_LCD_CLEAR);
   //Lcd_Out(1,3,"ERRO MEMORIA");
   delay_ms(1000);
   goto erro;
   }
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Out(1,4,"MODO COLETA");
  delay_ms(2000);             // pega numero da maq
  envd:
  LEDY=1;
  delay_ms(1);
  Uart1_Write(0x24);
  delay_ms(1);
  Uart1_Write(0x67);
  delay_ms(1);
  Uart1_Write(0x75);
  delay_ms(1);
  Uart1_Write(0x20);
  delay_ms(1);
  Uart1_Write(0x6E);
  delay_ms(1);
  Uart1_Write(0x0D);
  cont=0;
  volta:
    if (UART1_Data_Ready())
     {
      uart_rd = UART1_Read();
      if (uart_rd==0x4D)
       {
        goto envd;
        }
      conteudo[cont] = uart_rd;
      cont++;
      }
  if (BT1==1 && BT3==1)
   {delay_ms(1);
    Uart1_Write(0x24);
    delay_ms(1);
    Uart1_Write(0x67);
    delay_ms(1);
    Uart1_Write(0x75);
    delay_ms(1);
    Uart1_Write(0x20);
    delay_ms(1);
    Uart1_Write(0x6E);
    delay_ms(1);
    Uart1_Write(0x0D);
    delay_ms(500);

    delay_ms(1);
    Uart1_Write(0x24);
    delay_ms(1);
    Uart1_Write(0x61);
    delay_ms(1);
    Uart1_Write(0x63);
    delay_ms(1);
    Uart1_Write(0x20);
    delay_ms(1);
    Uart1_Write(0x64);
    delay_ms(1);
    Uart1_Write(0x65);
    delay_ms(1);
    Uart1_Write(0x73);
    delay_ms(1);
    Uart1_Write(0x6F);
    delay_ms(1);
    Uart1_Write(0x74);
    delay_ms(1);
    Uart1_Write(0x65);
    delay_ms(1);
    Uart1_Write(0x63);
    delay_ms(1);
    Uart1_Write(0x0D);
    
    delay_ms(500);
    Uart1_Write(0x24);
    delay_ms(1);
     Uart1_Write(0x73);
     delay_ms(1);
     Uart1_Write(0x72);
     delay_ms(1);
     Uart1_Write(0x20);
     delay_ms(1);
     Uart1_Write(anot);
     delay_ms(1);
     Uart1_Write(rmes);
     delay_ms(1);
     Uart1_Write(rdia);
     delay_ms(1);
     Uart1_Write(rhora);
     delay_ms(1);
     Uart1_Write(rmin);
     delay_ms(1);
     Uart1_Write(0x00);
     delay_ms(1);
     Uart1_Write(0x0D);
     LEDY=1;
     delay_ms(1000);
     LEDG=1;
     LEDY=0;
     Uart1_Write(0x24);
     delay_ms(1);
     Uart1_Write(0x61);
     delay_ms(1);
     Uart1_Write(0x74);
     delay_ms(1);
     Uart1_Write(0x20);
     delay_ms(1);
     Uart1_Write(0x6E);
     delay_ms(1);
     Uart1_Write(0x0D);
     delay_ms(1);
     Lcd_Cmd(_LCD_CLEAR);
     Lcd_Chr_Cp(' ');
     Lcd_Chr_Cp(' ');
     Lcd_Chr_Cp(' ');
     Lcd_Chr_Cp('F');
     Lcd_Chr_Cp('O');
     Lcd_Chr_Cp('R');
     Lcd_Chr_Cp('M');
     Lcd_Chr_Cp('A');
     Lcd_Chr_Cp('T');
     Lcd_Chr_Cp('A');
     Lcd_Chr_Cp('N');
     Lcd_Chr_Cp('D');
     Lcd_Chr_Cp('O');
     Lcd_Cmd(_LCD_BLINK_CURSOR_ON);
     while(1)
      {
        if(UART1_Data_Ready())
         {
          uart_rd = UART1_Read();
          //Lcd_Out(2,3,&uart_rd);
          if (uart_rd==0x4B)
           {
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Cmd(_LCD_CURSOR_OFF);
            Lcd_Chr_Cp(' ');
            Lcd_Chr_Cp(' ');
            Lcd_Chr_Cp(' ');
            Lcd_Chr_Cp('F');
            Lcd_Chr_Cp('I');
            Lcd_Chr_Cp('N');
            Lcd_Chr_Cp('A');
            Lcd_Chr_Cp('L');
            Lcd_Chr_Cp('I');
            Lcd_Chr_Cp('Z');
            Lcd_Chr_Cp('A');
            Lcd_Chr_Cp('D');
            Lcd_Chr_Cp('O');
            while(1);
           }
         }
      }
     }
  while(cont<=39)
  {goto volta; }
  LEDY=0;
  M_Open_File_append();
  LEDG=1;
  LEDY=0;
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Out(1,1,"MAQ.");
  Lcd_Out(1,5,maquina);
  pega_cal();
  Lcd_Out(2,1,calend);

  delay_ms(500);
  envd1:
  LEDG=0;
  LEDY=1;
  delay_ms(1);
  Uart1_Write(0x24);
  delay_ms(1);
  Uart1_Write(0x61);
  delay_ms(1);
  Uart1_Write(0x63);
  delay_ms(1);
  Uart1_Write(0x20);
  delay_ms(1);
  Uart1_Write(0x64);
  delay_ms(1);
  Uart1_Write(0x65);
  delay_ms(1);
  Uart1_Write(0x73);
  delay_ms(1);
  Uart1_Write(0x6F);
  delay_ms(1);
  Uart1_Write(0x74);
  delay_ms(1);
  Uart1_Write(0x65);
  delay_ms(1);
  Uart1_Write(0x63);
  delay_ms(1);
  Uart1_Write(0x0D);
  cont=0;
  
  volta1:
    if (UART1_Data_Ready())
    {
    uart_rd = UART1_Read();
    if (uart_rd==0x4B)
      {
       opr:
       while(BT3==0)       // aguarda o botão OK
         {goto opr;}
         
       Lcd_Cmd(_LCD_CLEAR);
       Lcd_Out(2,6,"COLETA2");
       Lcd_Out(1,1,"COLETA1  COLETA3");

       sel:
       Lcd_Out(1,1,"       ");
       delay_ms(250);
       Lcd_Out(1,1,"COLETA1");
       delay_ms(250);
       
       if (BT1==0 && BT2==0 && BT3==1)
         {coleta_1();}
       if (BT1==1 && BT2==0 && BT3==0)
         {sel1:
          Lcd_Out(2,6,"       ");
          delay_ms(250);
          Lcd_Out(2,6,"COLETA2");
          delay_ms(250);
          
          if (BT1==0 && BT2==0 && BT3==1)
            {coleta_2();}
          if (BT1==1 && BT2==0 && BT3==0)
            { sel2:
              Lcd_Out(1,10,"       ");
              delay_ms(250);
              Lcd_Out(1,10,"COLETA3");
              delay_ms(250);
              
              if (BT1==0 && BT2==0 && BT3==1)
               {coleta_3();}
              if (BT1==1 && BT2==0 &BT3==0)
               {
               goto sel;
               }
               goto sel2;
            }
          goto sel1;
          }
       goto sel;

       }
    arquivo[cont] = uart_rd;
    cont++;
    }
  while(cont<=11)
  {goto volta1; }
}