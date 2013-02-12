class Nerve4{
  Vec3D position;
  Vec3D prevPosition;
  Vec3D heading;
  Vec3D prevHeading;
  float step;
  float age;
  float turnPerStep;
  float newTurnPerStep;
  boolean overEdge;
  float ageStep;
  boolean inactive;
  boolean polarity;

  Nerve4(){
    position = new Vec3D(sin((float)PI*frameRate/300),random((float)PI*frameRate/300),0f);
    prevPosition=new Vec3D(position);
    heading = new Vec3D(sin(-42f),sin(50f),random(-100f, 100f));
    heading.normalize();
    prevHeading = new Vec3D(heading);
    age=10.0f;
    step=10.0f;//step=1.0f;
    newTurnPerStep=turnPerStep=0.10f*(random(100f)<50f?-1f:1f);
    overEdge=false;
    ageStep=1.01f;
    inactive=true;
    polarity=(random(1000f)<50f)?true:false;
  }

  Nerve4(Vec3D position, Vec3D heading){
    this.position = new Vec3D(position);
    prevPosition=new Vec3D(position);
    this.heading = new Vec3D(heading);
    heading.normalize();
    prevHeading = new Vec3D(heading);
    age=1.0f;
    step=1.0f;

    newTurnPerStep=turnPerStep=random(1.0001f,1.005f)*(random(100f)<50f?-1f:1f);
    
    overEdge=true;
    ageStep=0.01f;
    inactive=false;
    polarity=(random(100f)<50f)?false:true;
  }

  void reset(){

    heading.normalize();
    prevPosition.set(position);
    prevHeading.set(heading);
    overEdge=true;
    age=1.0f;
    step=1.0f;
    ageStep*=0.9f;
        
        //crooked step
        newTurnPerStep=turnPerStep=0.10f*(random(100f)<50f?-1f:1f);
        
        //straight step
        //newTurnPerStep=turnPerStep=0.10f*(random(100f)<10f?-1f:1f);
    
    inactive=false;
    polarity=(random(100f)<20f)?true:false;

  }
  void update(int[][] Grid){
    prevPosition.set(position);
    prevHeading.set(heading);
    
    //change to false for straight paths   
    overEdge = false;
    position.addSelf(heading.scale(step));
    
    //collisions
    if(position.x < 2){ 
      position.x += width - 4;
      overEdge = false;
    }
    if(position.x >= width - 2){ 
      position.x -= width - 4;
      overEdge = false;
    }
    if(position.y < 2){ 
      position.y += height - 4;
      overEdge = false;
    }
    if(position.y >= height - 2){ 
      position.y -= height - 4;
      overEdge = false;
    }
    
    //default heading  
    Vec3D newHeading = new Vec3D(heading.x*cos(turnPerStep) - heading.y*sin(turnPerStep),heading.y*cos(turnPerStep) + heading.x*sin(turnPerStep),0f);
    //alt heading
    //Vec3D newHeading = new Vec3D(heading.x*random(cos(turnPerStep))*age-heading.y*random(sin(turnPerStep))*frameRate/300,heading.y*random(cos(turnPerStep))*age+heading.x*random(sin(turnPerStep))*frameRate/300,0f);
    heading.set(newHeading);


    if(overEdge){

      inactive=true;
    }


  }


 void drawCenter(){
 
   
    fill(250, 250, 250, 5*frameRate/30);
    rect(position.x*20, position.y,sin(age)*2,sin(age)*2);
  
  }

}
