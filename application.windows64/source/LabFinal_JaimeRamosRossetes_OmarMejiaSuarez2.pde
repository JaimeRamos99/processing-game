import ddf.minim.*;
Minim gestor;
AudioPlayer musica_fondo,musica_fondo2,musica_fondo3;
PImage imagen,imagen2,imagen3,imagen4,imagen5,imagen6,imagen7,imagen8,imagen9,imagen10,imagen11,imagen12,e,tu,jaime,omar,rocio,muestra;
int i,b,au=5,au2=6,j,uno=1,uno2=1,k=300,abajo=0,arriba=0,iu=0,x=0,bv=0,s=0,m=0,mm=0,bv2=0,o=0,a=0,co=20,co1=20,co2=20,co3=20,co4=20,bm=0,au3=8,p=0,hp=280,a2=0,q=0,bvcp=0,seguro=0,pa=0,cinco=30,sin=0,la=0,cien=0,cua=0,equiz,spjdn=0,spi=0,mon=0,pasa=0,ff=1,musica=1;//ff activa mounstro y moneda
float c1,c2,l,c,t=0,r1=120,r2=160,r3=60,mx=390,t2i,t2a,t1i=50,t1a=100,yi1,yi2,yi3,yi4,yi5,i1,i2,i3,i4,i5,n,e1x,e1y,e2x,e2y,e3x,e3y,j2,h=0;
boolean cruzo=false,rpl=false,monedas=false,instructivo=false,p1=false;
AudioSample s1,s2;
void setup(){
gestor = new Minim(this);
musica_fondo=gestor.loadFile("The Pink Panther Theme Song Remix.mp3");
musica_fondo2=gestor.loadFile("SpongeBob Trap Remix Krusty Krab.mp3");
musica_fondo3=gestor.loadFile("Gravity Falls Theme Song (RemixManiacs Trap Remix).mp3");
musica_fondo.loop();
musica_fondo2.loop();
musica_fondo3.loop();
musica_fondo3.pause();
musica_fondo2.pause();
s1 =gestor.loadSample("salto.WAV");
s2 =gestor.loadSample("moneda.wav");
imagen=loadImage("image.png");
imagen2=loadImage("rich.png");//bolsa de monedas
imagen3=loadImage("banking.png");//moneda
imagen4=loadImage("speaker.png");//parlante
imagen5=loadImage("notspeaker.png");//mute
imagen7=loadImage("reboot.png");//reiniciar
imagen8=loadImage("customer-service.png");//instructivo
imagen9=loadImage("previous.png");//instructivo ant
imagen10=loadImage("next.png");//instructivo sgte
imagen11=loadImage("espacio.png");//spacebar
imagen12=loadImage("teclas.png");//a,a,d,i
e=loadImage("clown.png");//payaso
tu=loadImage("tombston.png");//tumba
jaime=loadImage("boy.png");//personaje
omar=loadImage("fat-boy-sorry.png");//personaje
rocio=loadImage("angry.png");//personaje
imagen6=loadImage("fast-forward-button.png");//pasar cancion
size(1000,500);
i=5;l=350;b=0;c=1;j=310;j2=0;uno=1;muestra=jaime;
}
void keyPressed(){
  if(ff==1&&a2==1&&seguro==0){
  if(key==' '){//bvcp es para saber si alcanzo el maximo o no y b=1 es para que no pueda seguir creciendo,a2 es para saber si ya ha jugado al menos una vez y a para saber si esta jugandoo
      if(b==0&&a2==1&&a==0){
       if(b==0){
       l=l-3;
       la=la+3;
       if(l<26){
       bvcp=1;b=1;
       a=1;
     }
     }
      }
  }
}
  if(ff==0&&cruzo==true){
    if(keyCode==UP&&bv==0&&a2==1&&a==0){
     iu=2; arriba=-6;s1.trigger();seguro=1;
   }
     if(keyCode==LEFT&&bv2==0&&a2==1&&a==0&&x+70+o>=t2i){
     x=x-6;
    }
    if(keyCode==RIGHT&&bv2==0&&a2==1&&a==0&&x+90+o<=t2i+t2a){
     x=x+6;
    }
  }
    if(a2==0){
      if(keyCode==ENTER){
        a2=1;a=0; mm=0;m=0;s=0;iu=0;abajo=0;x=0;co=20;bvcp=0;cien=0;cua=0;equiz=0;co=20;mx=random(50,470);b=0;bm=0;ff=1;seguro=0;la=0;l=350;t=350-l;cruzo=false;t1i=50;t1a=100;p=0;
         t2i=t1i+t1a+random(80,150);co1=20;co2=20;co3=20;co4=20;
    t2a=random(50,150);
    image(tu,t1i,350,t1a,150);
   image(tu,t2i,350,t2a,150);o=0;
      }
    }
    if(a==1){
      if(keyCode==ENTER){
        a=0;abajo=0;iu=0;x=0;m=0;mm=0;s=0;equiz=0;cien=0;cua=0;co=20;bvcp=0;b=0;bm=0;la=0;l=350;t=350-l;cruzo=false;seguro=0;co1=20;co2=20;co3=20;co4=20;q=0;t1i=50;t1a=100;p=0;
              t2i=t1i+t1a+random(80,150);ff=1;la=0;
              image(tu,t1i,350,t1a,150);
   image(tu,t2i,350,t2a,150);o=0;
      }
    }
    if(keyCode==77){
        musica_fondo.setGain(-100);s2.setGain(-100);s1.setGain(-100);musica_fondo2.setGain(-100); musica_fondo3.setGain(-100);
        sin=30;
        cinco=0;
      }
   if(keyCode==80){
        musica_fondo.setGain(0);s2.setGain(0);s1.setGain(0);musica_fondo2.setGain(0); musica_fondo3.setGain(0);
        sin=0;
        cinco=30;
      }
      if(key=='r'&&a2==1&&a==0){
        a=0; mm=0;m=0;s=0;iu=0;abajo=0;x=0;co=20;bvcp=0;cien=0;cua=0;equiz=0;co=20;mx=random(50,470);b=0;bm=0;ff=1;seguro=0;la=0;l=350;t=350-l;cruzo=false;q=0;t1i=50;t1a=100;p=0;
         t2i=t1i+t1a+random(80,150);co1=20;co2=20;co3=20;co4=20;
    t2a=random(50,150);
    o=0;
    image(tu,t1i,350,t1a,150);
   image(tu,t2i,350,t2a,150);o=0;
      }
}
void keyReleased(){
  if(key==' '&&ff==1&&a2==1)
  {
   t=350-l;l=350;b=1;bm=1;ff=0;
   yi1=t2i+random(0,t2a);
   yi2=t2i+random(0,t2a);
   yi3=t2i+random(0,t2a);
   yi4=t2i+random(0,t2a);
   yi5=t2i+random(0,t2a);
   i1=random(30,250);
   i2=random(30,250);
   i3=random(30,250);
   i4=random(30,250);
   i5=random(30,250);
   n=random(3,6);
   e1x=random(20,50);
   e1y=random(20,40);
   e2x=random(20,50);
   e2y=random(20,40);
   e3x=random(20,50);
   e3y=random(20,40);
  }
   if(keyCode==UP){
     arriba=0;
   }
}
public void puntaje(){//subrutina de puntaje
   p=p+1;
}
public void musiquita(){//subrutina cambio de musica
  if(musica==1){
  musica_fondo.pause();
  musica_fondo3.pause();
  musica_fondo2.play();
  musica=2;
}else{
  if(musica==2){
     musica_fondo.pause();
     musica_fondo3.play();
     musica_fondo2.pause();
     musica=3;
  }else{
    if(musica==3){
       musica_fondo.play();
     musica_fondo3.pause();
     musica_fondo2.pause();
     musica=1;
    }
  }
}
}
void mouseClicked(){
if(a==1){
if(mouseX>=400 &&mouseX<=550&&mouseY>=120&&mouseY<=150){
    a=0; mm=0;m=0;s=0;iu=0;abajo=0;x=0;co=20;bvcp=0;cien=0;cua=0;equiz=0;co=20;mx=random(50,470);b=0;bm=0;ff=1;seguro=0;la=0;l=350;t=350-l;co1=20;co2=20;co3=20;co4=20;q=0;p=0;
    t1i=50;t1a=100;
   t2i=t1i+t1a+random(80,150);
    t2a=random(50,150);
   cruzo=false;
   image(tu,t1i,350,t1a,150);
   image(tu,t2i,350,t2a,150);o=0;
}
if(mouseX>=410 &&mouseX<=520&&mouseY>=200&&mouseY<=210){//pa que salgann los personajes cuando pierde
  cien=220;cua=40;equiz=400;spjdn=1;
}
if(spjdn==1){
  if(mouseX>=400 &&mouseX<=445&&mouseY>=225&&mouseY<=260){
    muestra=jaime;
}
  if(mouseX>=450 &&mouseX<=500&&mouseY>=225&&mouseY<=260){
    muestra=rocio;
}
  if(mouseX>=500 &&mouseX<=550&&mouseY>=225&&mouseY<=260){
    muestra=omar;
}
}
}
if(a2==0){
  if(mouseX>=380 &&mouseX<=540&&mouseY>=160&&mouseY<=200){
   a2=1; mm=0;m=0;s=0;iu=0;abajo=0; x=0;co=20;cien=0;cua=0;equiz=0;co=20;b=0;bm=0;l=350;a=0;cruzo=false;co1=20;co2=20;co3=20;co4=20;q=0;t1i=50;t1a=100;p=0;
        t2i=t1i+t1a+random(80,150);
    t2a=random(50,150);image(tu,t1i,350,t1a,150);
   image(tu,t2i,350,t2a,150);o=0;
  }
  if(mouseX>=410 &&mouseX<=520&&mouseY>=240&&mouseY<=250){
  cien=260;cua=40;equiz=400;spi=1;
}
 if(spi==1){
  if(mouseX>=400 &&mouseX<=445&&mouseY>=265&&mouseY<=300){
     muestra=jaime;
}
  if(mouseX>=450 &&mouseX<=490&&mouseY>=265&&mouseY<=300){
     muestra=rocio;
}
  if(mouseX>=500 &&mouseX<=550&&mouseY>=265&&mouseY<=300){
    muestra=omar;
}
}
}
if(mouseX>=0&&mouseX<=30&&mouseY>=35&&mouseY<=65){
if(sin==0){
sin=30;
cinco=0;
musica_fondo.setGain(-100);musica_fondo2.setGain(-100); musica_fondo3.setGain(-100);
}else{
  cinco=30;
  sin=0;
  musica_fondo.setGain(0);s2.setGain(0);s1.setGain(0); musica_fondo2.setGain(0); musica_fondo3.setGain(0);
}
}
if(mouseX>=0&& mouseX<=65 &&mouseY<=95&& mouseY>=65&&a2==1&&a==0){
  a=0; mm=0;m=0;s=0;iu=0;abajo=0;x=0;co=20;bvcp=0;cien=0;cua=0;equiz=0;co=20;b=0;bm=0;ff=1;seguro=0;la=0;l=350;t=350-l;cruzo=false;co1=20;co2=20;co3=20;co4=20;q=0;t1i=50;t1a=100;p=0;
         t2i=t1i+t1a+random(80,150);
    t2a=random(50,150);
}
if(mouseX>=40&&mouseX<=70&&mouseY>=35&&mouseY<=65){
musiquita();
}
if(mouseX>980&&mouseX<=1000&&mouseY>=20&&mouseY<=41){
  instructivo=true;p1=true;
}
if(instructivo==true){
  if(mouseX<=35&&mouseY>=465){
    if(p1==true){
      instructivo=false;
    }else{
      p1=true;
    }
  }
  if(mouseX>=965&&mouseY>=465){
      if(p1==true){
         p1=false;
    }
  }
  if(p1==false&&mouseX>=380&&mouseX<=570&&mouseY<410&&mouseY>=360){
    instructivo=false;a2=0;
  }
}
}
void draw(){
  if(instructivo==true){
    fill(0);
    rect(0,0,1000,500);
    fill(255);
    image(imagen9,5,465,30,30);
    image(imagen10,965,465,30,30);
     textSize(50);
    text("Cross & Trap",330,50);
    if(p1==true){
    textSize(15);
    text("1. Para avanzar debes crear la varita mágica con :",15,100);
    image(imagen11,400,80,150,40);
    text("2. Una vez en la otra plataforma te mueves con :",15,200);
    image(imagen12,400,170,100,50);
    text("3. Debes esquivar a los payasos y coger todas las monedas :",15,300);
    image(e,470,270,50,50);image(imagen3,560,280,30,30);
    text("4. Regresa a la base :",15,370);
    image(tu,250,370,100,130);
    }else{
      textSize(15);
      fill(random(255),0,0);
      text("si la varita mágica toca la parte superior pierdes",15,80);
      rect(400,65,100,20);
      fill(255);
      text("Cross & Trap es un juego infinito, Suerte.",15,150);
      textSize(50);
      text("JUGAR",400,400);
    }
  }else{
  background(imagen);
  fill(random(255),0,0);
  rect(0,0,1000,20);
  image(jaime,equiz, cien, cua,cua);
  image(rocio, equiz/8*9, cien, cua,cua);
  image(omar,  equiz/8*10, cien, cua,cua);
  image(imagen2, 0, 5, 30,20);
  image(imagen4, 0, 35, cinco,cinco);
  image(imagen5, 0, 35, sin,sin);
  image(imagen7,0,65);
  image(imagen8,980,23,20,20);
  image(imagen6,40,35,30,30);
  abajo=abajo+iu+arriba;
  fill(0);if(ff==0&&cruzo==true){
  image(e,width-i,r1,e1x,e1y);
  image(e,k,r2,e2x,e2y);
  image(e,h,r3,e3x,e3y);
  image(e,i,j2,20,20);
  image(imagen3, yi1, i1, co,co);
  image(imagen3, yi2, i2, co1,co1);
  image(imagen3, yi3, i3, co2,co2);
   if(n>=4){
   image(imagen3, yi4, i4, co3,co3);
   }
   if(n>5){
   image(imagen3, yi5, i5, co4,co4);
  }
  }
  fill(255); 
  i=i+au; k=k+au2;  h=h+au3;
  if(h+e3x>=1000||h<=0){
     au3=au3*-1;r3=random(20,290);
  }
   if (i>=width ||i<=0){
    au=au*-1;r1=random(20,120);j2=random(120,200);
  }
 if (k>=width ||k<=0){
    au2=au2*-1;r2=random(200,280);
  }
  if (abajo<=-310||abajo>=150){//para que no se pase los bordes superiores
    abajo=0; a=1; bv2=0; x=0;bv=0;arriba=0;iu=0;
  }
  if(abajo==0&&70+x<150){
        abajo=0;arriba=0; iu=0;
  }
  if(la>t2i-50||la<t2a+t2i-50){
    pasa=0;
//}if((la>t2i-50||la<t2a+t2i-50)&&ff==0&&pasa==1){
 // a=1;pasa=1;seguro=1;
  }  
  if(la+68+q>=0&&ff==0){
    x=x+3;
  la=la-3;
  pasa=1;
  if(la+q<=-69&&(70+x>t2i||x+85<t2i+t2a)&&a2==1){
    cruzo=true;
    seguro=0;
    pasa=0;
    iu=0;
  } if(la+q<=-69&&(70+x<t2i||x+85>t2i+t2a)&&a2==1){
    //hacer caer el personaje
    iu=2;
    seguro=1;
    ff=2;
  } 
  }
  if(pasa==1&&seguro==1){
    iu=2;
  if((70+x>150||70+x<50)&&abajo>=30){
      bv=1;  bv2=1; abajo=abajo+3;
  }
  if((70+x>150||70+x<30)&&abajo>=0&& abajo<30){
      abajo=abajo+1;  bv2=1;  bv=1;
  }
  }
  if(x+o<=-70||x>=910){//bordes laterales
    x=0; abajo=0;a=1;
  }
  if(seguro==1){
  if((70+x+o<=width-i+e1x-5&&90+x+o>width-i)&&(330+abajo<=r1+e1y&&350+abajo>=r1)||((70+x+o<=i+15&&90+x+o>=i)&&(330+abajo<=j2+20&&350+abajo>=j2))||((70+x+o<=k+e2x-5&&90+x+o>k)&&(330+abajo<=r2+e2y&&350+abajo>=r2))||((70+x+o<=h+e3x-5&&90+x+o>h)&&(330+abajo<=r3+e3y&&350+abajo>=r3))){//cuando se chocan
    a=1;
  }
  }
  if(a==0&&a2==1){
  textSize(20);
  if(m<59){
  if(s<=59){
    text(mm+":"+m+":"+s,920,20);
    s=s+1;
  }else{
    s=0;
    m=m+1;
  } 
  }else{
    if(m==59){
       m=0;mm=mm+1;
    }
  }
  }pa=0;
  if((70+x+o<=yi1+20&&90+x+o>=yi1)&&(328+abajo<=i1+20&&328+abajo>=i1)&&co==20&&ff==0){//monedas-man
    co=0;s2.trigger();monedas=false;puntaje();
    //seguro=0;pasa=0;ff=1;
  }
  if((70+x+o<=yi2+20&&90+x+o>=yi2)&&(328+abajo<=i2+20&&328+abajo>=i2)&&co1==20&&ff==0){//monedas-man
    co1=0;s2.trigger();monedas=false;puntaje();
  }
    if((70+x+o<=yi3+20&&90+x+o>=yi3)&&(328+abajo<=i3+20&&328+abajo>=i3)&&co2==20&&ff==0){//monedas-man
    co2=0;s2.trigger();monedas=false;puntaje();
  }
    if((70+x+o<=yi4+20&&90+x+o>=yi4)&&(328+abajo<=i4+20&&328+abajo>=i4)&&co3==20&&n>=4&&ff==0){//monedas-man
    co3=0;s2.trigger();monedas=false;puntaje();
  }
    if((70+x+o<=yi5+20&&90+x+o>=yi5)&&(328+abajo<=i5+20&&328+abajo>=i5)&&co4==20&&n>=5&&ff==0){//monedas-man
    co4=0;s2.trigger();monedas=false;puntaje();
  }
   if((k<=yi1+20&&k+e2x>=yi1)&&(r2<=i1+20&&r2+e2y>=i1)&&co==20&&cruzo==true&&ff==0){//monedas-monstruos
    co=0;
    yi1=t2i+random(0,t2a);
    i1=random(30,250);
    image(imagen3, yi1, i1, co,co);
    co=20;
  }
    if((k<=yi2+20&&k+e2x>=yi2)&&(r2<=i2+20&&r2+e2y>=i2)&&co1==20&&cruzo==true&&ff==0){//monedas-monstruos
    co1=0;
    yi2=t2i+random(0,t2a);
    i2=random(30,250);
    image(imagen3, yi2, i2, co1,co1);
    co1=20;
  }
   if((k<=yi3+20&&k+e2x>=yi3)&&(r2<=i3+20&&r2+e2y>=i3)&&co2==20&&cruzo==true&&ff==0){//monedas-monstruos
    co2=0;
    yi3=t2i+random(0,t2a);
    i3=random(30,250);
    image(imagen3, yi3, i3, co2,co2);
    co2=20;
  }
  if((k<=yi4+20&&k+e2x>=yi4)&&(r2<=i4+20&&r2+e2y>=i4)&&co3==20&&cruzo==true&&n>=4&&ff==0){//monedas-monstruos
    co3=0;
    yi4=t2i+random(0,t2a);
    i4=random(30,250);
    image(imagen3, yi4, i4, co3,co3);co3=20;
  }
  if((k<=yi5+20&&k+e2x>=yi5)&&(r2<=i5+20&&r2+e2y>=i5)&&co4==20&&cruzo==true&&n>=5&&ff==0){//monedas-monstruos
    co4=0;
    yi5=t2i+random(0,t2a);
    i5=random(30,250);
    image(imagen3, yi5, i5, co4,co4);co4=20;
  }
   if((i<=yi1+20&&i+20>=yi1)&&(j2<=i1+20&&j2+20>=i1)&&co==20&&cruzo==true&&ff==0){//monedas-monstruos
    co=0;
    yi1=t2i+random(0,t2a);
    i1=random(30,250);
    image(imagen3, yi1, i1, co,co);co=20;
  }
    if((i<=yi2+20&&i+20>=yi2)&&(j2<=i2+20&&j2+20>=i2)&&co1==20&&cruzo==true&&ff==0){//monedas-monstruos
    co1=0;
    yi2=t2i+random(0,t2a);
    i2=random(30,250);
    image(imagen3, yi2, i2, co1,co1);co1=20;
  }
  if((i<=yi3+20&&i+20>=yi3)&&(j2<=i3+20&&j2+20>=i3)&&co2==20&&cruzo==true&&ff==0){//monedas-monstruos
    co2=0;
    yi3=t2i+random(0,t2a);
    i3=random(30,250);
    image(imagen3, yi3, i3, co2,co2);co2=20;
  }
   if((i<=yi4+20&&i+20>=yi4)&&(j2<=i4+20&&j2+20>=i4)&&co3==20&&cruzo==true&&n>=4&&ff==0){//monedas-monstruos
    co3=0;
    yi4=t2i+random(0,t2a);
    i4=random(30,250);
    image(imagen3, yi4, i4, co3,co3);co3=20;
  }
   if((i<=yi5+20&&i+20>=yi5)&&(j2<=i5+20&&j2+20>=i5)&&co4==20&&cruzo==true&&n>=5&&ff==0){//monedas-monstruos
    co4=0;
    yi5=t2i+random(0,t2a);
    i5=random(30,250);
    image(imagen3, yi5, i5, co4,co4);co4=20;
  }
     if((width-i<=yi1+20&&width-i+e1x>=yi1)&&(r1<=i1+20&&r1+e1y>=i1)&&co==20&&cruzo==true&&ff==0){//monedas-monstruos
    co=0;
    yi1=t2i+random(0,t2a);
    i1=random(30,250);
    image(imagen3, yi1, i1, co,co);co=20;
  }
    if((width-i<=yi2+20&&width-i+e1x>=yi2)&&(r1<=i2+20&&r1+e1y>=i2)&&co1==20&&cruzo==true&&ff==0){//monedas-monstruos
    co1=0;
    yi2=t2i+random(0,t2a);
    i2=random(30,250);
    image(imagen3, yi2, i2, co1,co1);co1=20;
  }
  if((width-i<=yi3+20&&width-i+e1x>=yi3)&&(r1<=i3+20&&r1+e1y>=i3)&&co2==20&&cruzo==true&&ff==0){//monedas-monstruos
    co2=0;
    yi3=t2i+random(0,t2a);
    i3=random(30,250);
    image(imagen3, yi3, i3, co2,co2);co2=20;
  }
   if((width-i<=yi4+20&&width-i+e1x>=yi4)&&(r1<=i4+20&&r1+e1y>=i4)&&co3==20&&cruzo==true&&n>=4&&ff==0){//monedas-monstruos
    co3=0;
    yi4=t2i+random(0,t2a);
    i4=random(30,250);
    image(imagen3, yi4, i4, co3,co3);co3=20;
  }
   if((width-i<=yi5+20&&width-i+e1x>=yi5)&&(r1<=i5+20&&r1+e1y>=i5)&&co4==20&&cruzo==true&&n>=5&&ff==0){//monedas-monstruos
    co4=0;
    yi5=t2i+random(0,t2a);
    i5=random(30,250);
    image(imagen3, yi5, i5, co4,co4);co4=20;
  }
  
   if((h<=yi1+20&&h+e3x>=yi1)&&(r3<=i1+20&&r3+e3y>=i1)&&co==20&&cruzo==true&&ff==0){//monedas-monstruos
    co=0;
    yi1=t2i+random(0,t2a);
    i1=random(30,250);
    image(imagen3, yi1, i1, co,co);
    co=20;
  }
    if((h<=yi2+20&&h+e3x>=yi2)&&(r3<=i2+20&&r2+e3y>=i2)&&co1==20&&cruzo==true&&ff==0){//monedas-monstruos
    co1=0;
    yi2=t2i+random(0,t2a);
    i2=random(30,250);
    image(imagen3, yi2, i2, co1,co1);
    co1=20;
  }
   if((h<=yi3+20&&h+e3x>=yi3)&&(r3<=i3+20&&r3+e3y>=i3)&&co2==20&&cruzo==true&&ff==0){//monedas-monstruos
    co2=0;
    yi3=t2i+random(0,t2a);
    i3=random(30,250);
    image(imagen3, yi3, i3, co2,co2);
    co2=20;
  }
  if((h<=yi4+20&&h+e3x>=yi4)&&(r3<=i4+20&&r3+e3y>=i4)&&co3==20&&cruzo==true&&n>=4&&ff==0){//monedas-monstruos
    co3=0;
    yi4=t2i+random(0,t2a);
    i4=random(30,250);
    image(imagen3, yi4, i4, co3,co3);co3=20;
  }
  if((h<=yi5+20&&h+e3x>=yi5)&&(r3<=i5+20&&r3+e3y>=i5)&&co4==20&&cruzo==true&&n>=5&&ff==0){//monedas-monstruos
    co4=0;
    yi5=t2i+random(0,t2a);
    i5=random(30,250);
    image(imagen3, yi5, i5, co4,co4);co4=20;
  }
  if(abajo==0&&ff==0&&co==0&&co1==0&&co2==0&&n<4){//volver a la segunda base despues de coger monedas
    ff=2;seguro=0;iu=0;la=0;l=350;t=350-l;cruzo=false;co1=20;co2=20;co3=20;co4=20;co=20;rpl=true;
  }
  if(abajo==0&&ff==0&&co==0&&co1==0&&co2==0&&co3==0&&n>=4){//igual
    ff=2;seguro=0;iu=0;la=0;l=350;t=350-l;cruzo=false;co1=20;co2=20;co3=20;co4=20;co=20;rpl=true;
  }
  if(abajo==0&&ff==0&&co==0&&co1==0&&co2==0&&co3==0&&co4==0&&n>=5){//igual
    ff=2;seguro=0;iu=0;la=0;l=350;t=350-l;cruzo=false;co1=20;co2=20;co3=20;co4=20;co=20;rpl=true;
  }
  if((abajo==0&&ff==0)&&(co==20||co1==20||co2==20)&&(n<4)&&(seguro==1)){//volver a la segunda base sin coger las monedas
    a=1;
  }
  if((abajo==0&&ff==0)&&(co==20||co1==20||co2==20||co3==0)&&(n>=4)&&(seguro==1)){//igual
    a=1;
  }
  if((abajo==0&&ff==0)&&(co==20||co1==20||co2==20||co3==20||co4==0)&&(n>=5)&&(seguro==1)){//igual
    a=1;
  }
  if(a==1){//a=1 cuando perdio
  ff=2;
    textSize(50);
    fill(random(255),random(255),random(255));
   text("game over",350,100);
   textSize(20);
   fill(255);
   text("Jugar de Nuevo",400,150);
     textSize(20);
     text("Presiona Enter",410,180);
      text("Personajes",410,210);
  }
   if(a2==0){//a2==0 cuadno no ha comenzado
      textSize(50);
      fill( random(255), random(255),random(255));
      text("JUGAR",380,200);
      textSize(20);
      text("Presiona Enter",390,230);
      text("Personajes",410,250);
   }
  stroke(255); line(t1i+t1a-10,350,t1i+t1a-10+t,l);
  if(rpl==true){
  if(t2i+t2a+o>140 ){ o=o-1;
   t1i=t1i+o;t2i=t2i+o;x=x+o;
  }else{
  rpl=false;iu=0;abajo=0;bvcp=0;b=0;bm=0;la=0;l=350;t=350-l;cruzo=false;seguro=0;ff=1;q=x*(-1);co=20;x=x-o;co1=20;co2=20;co3=20;co4=20;t1i=t1i-o;t2i=t2i-o;o=0;
  t1i=t2i;
  t1a=t2a;
  t2i=t1i+t1a+random(80,150);
    t2a=random(50,150);
  }  
  }
  fill(255);
   textSize(20);
   text(p,30,20);
   fill(255);
    image(muestra,70+x,330+abajo,20,20); 
   image(tu,t1i,350,t1a,150);
   image(tu,t2i,350,t2a,150);
    stroke(255); line(t1i+t1a-10,350,t1i+t1a-10+t,l);
  }
}