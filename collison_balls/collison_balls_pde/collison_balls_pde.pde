float sz = 100;
float sz2 = 50;
PVector loc,vel,acc;
PVector mouse;
PVector loc2,vel2,acc2;

void setup(){
  size(1000,800);
  background(0);
  loc=new PVector(width/2,height/2);
  vel=PVector.random2D();
  acc=new PVector(0,0);
  mouse=new PVector();
  loc2=new PVector(random(sz2,width-sz2),random(sz2,height-sz2));
  vel2=PVector.random2D();
  acc2=new PVector(0,0);
}

void draw(){
  background(0);
  vel.add(acc);
  loc.add(vel);
  vel2.add(acc2);
  loc2.add(vel2);

  if (loc.dist(mouse) < sz/2) {
    fill(10,100,230);
    vel.mult(-1); 
  } else {
    fill(200,10,50);
  }
  if(loc.x<mouse.x){
   vel.x=-abs(vel.x); 
  }else{
    vel.x=abs(vel.x);
  }
  if(loc.y<mouse.y){
   vel.y=-abs(vel.y); 
  }else{
    vel.y=abs(vel.y);
  }
  
  ellipse(loc.x, loc.y, sz, sz);
  ellipse(loc2.x,loc2.y,sz2,sz2);

  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }
  
  if (loc2.x + sz2/2 > width || loc2.x - sz2/2 < 0) {
    vel2.x *= -1;
  }
  if (loc2.y + sz2/2 > height || loc2.y - sz2/2 < 0) {
    vel2.y *= -1;
  }
}
