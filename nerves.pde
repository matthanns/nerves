
import processing.opengl.*;


//MATT SCHROETER
//NERVES
//2009
import toxi.geom.*;
import toxi.math.*;



Nerve[] nerve;
Nerve2[] nerve2;
Nerve3[] nerve3;
Nerve4[] nerve4;
Nerve5[] nerve5;
Nerve6[] nerve6;
Nerve7[] nerve7;
Nerve8[] nerve8;
Nerve9[] nerve9;
Nerve10[] nerve10;





int startingTime;
int amt = 500;
int[][] grid;
color[][] colorGrid;
int count;

boolean start = false;
boolean reset = false;

void setup(){
  size(screen.width, screen.height, OPENGL);
  startingTime = millis();

  smooth();
  noStroke();
  begin();
  reset();
 
}

void draw(){
   int seconds = (millis() - startingTime) / 1000;
  int minutes = seconds / 60;
  if(seconds == 60){
    begin();}
   
 
 
boolean resetNeeded=true;

  noStroke();
  fill(0);
  

  for(int i=0;i<amt;i++){
    
    if(!nerve[i].inactive){
      nerve[i].drawCenter();
      nerve[i].update(grid);
    }
  }

  for(int i=0;i<amt;i++){
    if(!nerve2[i].inactive){
      nerve2[i].drawCenter();
      nerve2[i].update(grid);
    }
  }
  
   for(int i=0;i<amt;i++){
    if(!nerve3[i].inactive){
      nerve3[i].drawCenter();
      nerve3[i].update(grid);
    }
  }
  for(int i=0;i<amt;i++){
    if(!nerve4[i].inactive){
      nerve4[i].drawCenter();
      nerve4[i].update(grid);
    }
  }
  for(int i=0;i<amt;i++){
    if(!nerve5[i].inactive){
      nerve5[i].drawCenter();
      nerve5[i].update(grid);
    }
  }
  for(int i=0;i<amt;i++){
    if(!nerve6[i].inactive){
      nerve6[i].drawCenter();
      nerve6[i].update(grid);
    }
  }
  for(int i=0;i<amt;i++){
    if(!nerve7[i].inactive){
      nerve7[i].drawCenter();
      nerve7[i].update(grid);
    }
  }
  for(int i=0;i<amt;i++){
    if(!nerve8[i].inactive){
      nerve8[i].drawCenter();
      nerve8[i].update(grid);
    }
  }
  for(int i=0;i<amt;i++){
    if(!nerve9[i].inactive){
      nerve9[i].drawCenter();
      nerve9[i].update(grid);
    }
  }
  for(int i=0;i<amt;i++){
    if(!nerve10[i].inactive){
      nerve10[i].drawCenter();
      nerve10[i].update(grid);
    }
  }
  if (resetNeeded){
    count++;
    for(int i=0;i<amt;i++){
      
      nerve[i].reset();
      nerve2[i].reset();
      nerve3[i].reset();
      nerve4[i].reset();
      nerve5[i].reset();
      nerve6[i].reset();
      nerve7[i].reset();
      nerve8[i].reset();
      nerve9[i].reset();
      nerve10[i].reset();
    }
  }
}

void reset(){
  amt =+ 500;
  
  nerve = new Nerve[amt];
  nerve2 = new Nerve2[amt];
  nerve3 = new Nerve3[amt];
  nerve4 = new Nerve4[amt];
  nerve5 = new Nerve5[amt];
  nerve6 = new Nerve6[amt];
  nerve7 = new Nerve7[amt];
  nerve8 = new Nerve8[amt];
  nerve9 = new Nerve9[amt];
  nerve10 = new Nerve10[amt];


    for(int i=0;i<amt;i++){

          //NERVE 1  
       scale(3);
          
          Vec3D pos = new Vec3D(width/2, height/2, 0f);
          Vec3D hdg = new Vec3D();
    
          //pos.set(width/2+2*random(cos(i*QUARTER_PI*EPSILON/amt)),height/2+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          pos.set(mouseX, mouseY,0f);
          
          hdg.set(sin(width), cos(height),0f);
          hdg.jitter(100, 100, 0);
          pos.jitter(100, 100, 0);
    
          nerve[i] = new Nerve(pos, hdg);
          
          
          
          //NERVE 2

          Vec3D pos2 = new Vec3D(width/2,height/2, 0f);
          Vec3D hdg2 = new Vec3D();  
    
          //pos2.set(width/2+2*random(cos(i*QUARTER_PI*EPSILON/amt)),height/2+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          pos2.set(mouseX, mouseY,0f);
          
          hdg2.set(sin(width), cos(height),0f);
          hdg2.jitter(30, 30, 0);
          pos2.jitter(30, 30, 0);
    
          nerve2[i] = new Nerve2(pos2, hdg2);
          
         
          //NERVE 3
      
          Vec3D pos3 = new Vec3D(width/2,height/2,0f);
          Vec3D hdg3 = new Vec3D();  
    
          //pos3.set(width/2+2*random(cos(i*QUARTER_PI*EPSILON/amt)),height/2+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          pos3.set(mouseX, mouseY,0f);
          
          hdg3.set(sin(width), cos(height),0f);
          hdg3.jitter(5, 5, 0);
          pos3.jitter(5, 5, 0);
    
          nerve3[i] = new Nerve3(pos3, hdg3);
          
          
          //NERVE 4
      
          Vec3D pos4 = new Vec3D(width/2,height/2,0f);
          Vec3D hdg4 = new Vec3D();  
    
          //pos4.set(width/2+2*random(cos(i*QUARTER_PI*EPSILON/amt)),height/2+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          pos4.set(mouseX, mouseY,0f);
          
          hdg4.set(sin(width),sin(height),0f);
          hdg4.jitter(10, 10, 0);
          pos4.jitter(10, 10, 0);
    
          nerve4[i] = new Nerve4(pos4, hdg4);
          
          
          //NERVE 5
      
          Vec3D pos5 = new Vec3D(width/2,height/2,0f);
          Vec3D hdg5 = new Vec3D();  
    
          //pos5.set(width/2+2*random(cos(i*QUARTER_PI*EPSILON/amt)),height/2+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          pos5.set(mouseX, mouseY,0f);
          
          hdg5.set(sin(width),sin(height),0f);
          hdg5.jitter(10, 10, 0);
          pos5.jitter(10, 10, 0);
    
          nerve5[i] = new Nerve5(pos5, hdg5);
          
          
          //NERVE 6
      
          Vec3D pos6 = new Vec3D(400,height/2,0f);
          Vec3D hdg6 = new Vec3D();  
    
          //pos6.set(width/2+2*random(cos(i*QUARTER_PI*EPSILON/amt)),height/2+2*random(sin(i*QUARTER_PI)),0f);
          pos6.set(mouseX, mouseY,0f);
          
          hdg6.set(sin(width),sin(height),0f);
          hdg6.jitter(10, 10, 0);
          pos6.jitter(10, 10, 0);
    
          nerve6[i] = new Nerve6(pos6, hdg6);
          
          
          //NERVE 7
      
          Vec3D pos7 = new Vec3D(width/2,height/2,0f);
          Vec3D hdg7 = new Vec3D();  
    
          //pos7.set(width/-2.1,height/-2.4,0f);
          pos7.set(mouseX/-2.1, mouseY/-2.4,0f);
          
          hdg7.set(sin(width),sin(height),0f);
          hdg7.jitter(5, 5, 0);
          pos7.jitter(5, 5, 0);
    
          nerve7[i] = new Nerve7(pos7, hdg7);
          
          
          //NERVE 8
      
          Vec3D pos8 = new Vec3D(width/2,height/2,0f);
          Vec3D hdg8 = new Vec3D();  
    
          //pos8.set(width/-2+2*random(cos(i*QUARTER_PI*EPSILON/amt)),height/3.2+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          pos2.set(mouseX/-2+2*random(cos(i*QUARTER_PI*EPSILON/amt)), mouseY/3.2+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          
          hdg8.set(sin(width),sin(height),0f);
          hdg8.jitter(5, 5, 0);
          pos8.jitter(5, 5, 0);
    
          nerve8[i] = new Nerve8(pos8, hdg8);
          
          
          //NERVE 9
      
          Vec3D pos9 = new Vec3D(width/2,height/2,0f);
          Vec3D hdg9 = new Vec3D();  
    
          //pos9.set(width/-3+2*random(cos(i*QUARTER_PI*EPSILON/amt)),height/2.3+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          pos9.set(mouseX/-3+2*random(cos(i*QUARTER_PI*EPSILON/amt)), mouseY/2.3+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          
          hdg9.set(sin(width),sin(height),0f);
          hdg9.jitter(5, 5, 0);
          pos9.jitter(5, 5, 0);
    
          nerve9[i] = new Nerve9(pos9, hdg9);
          
          
          //NERVE 10
      
          Vec3D pos10 = new Vec3D(width/2,height/2,0f);
          Vec3D hdg10 = new Vec3D();  
    
          //pos10.set(width/2.5+2*random(cos(i*QUARTER_PI*EPSILON/amt)),height/2.5+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          pos10.set(mouseX/2.5+2*random(cos(i*QUARTER_PI*EPSILON/amt)), mouseY/2.5+2*random(sin(i*QUARTER_PI*EPSILON/amt)),0f);
          
          hdg10.set(sin(width*20),sin(height),0f);
          hdg10.jitter(5, 5, 0);
          pos10.jitter(5, 5, 0);
    
          nerve10[i] = new Nerve10(pos10, hdg10);
          

    }
      
  }


void begin(){
  
  background(0);
  count = 1;

}

void keyPressed(){
  

    if((key=='m')||(key=='M'))loop();
    if((key=='s')||(key=='S')) saveFrame();
    //if((key==' ')) noLoop();
    if(key == '1'){
      amt =+ 10;
    }
    if(key == '2'){
      amt =+ 50;
    }
    if(key == '3'){
      amt =+ 100;
    }
    if(key == '4'){
      amt =+ 400;
    }
    if((key==' ')){
    begin();
    
    }
}

    
void mousePressed(){
  reset();
  println("mousePRessed");
}




