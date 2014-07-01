int[] cheese = new int[20];
int i=0,j=1, swap=0, x=30;


void setup() {
 size (500,500);

 for (int a=0;a<20;a++) cheese[a]=(int)random(20,450);
  fill(0);
for (int a=0; a<20; a++) {
   rect (x,480,10,-cheese[a]);
  x+=15; 
}
  frameRate(15);
}

void draw() {
background(255);
 fill(0);
 x=30;
 
for (int a=0; a<20; a++) {
   rect (x,470,10,-cheese[a]);
  x+=15; 
   
  if (i<20&&j<20&& cheese[j]>cheese[j-1]) {
    swap = cheese[j];
    cheese[j] = cheese[j-1];
    cheese[j-1] = swap;
  }
 
  if (j==19 && i<19){
    i++;
    j=0;

  }
  
  if (j<20) j++;
  
  if (i<20&&j<20&& cheese[j]<cheese[j-1]) {
    swap = cheese[j];
    cheese[j] = cheese[j-1];
    cheese[j-1] = swap;
  }


}

}
