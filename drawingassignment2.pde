int moveX, moveY;

void setup(){
  size(1080,1080);
  background(#BAADB5);
}


void draw(){
  stroke(color(0));
  strokeWeight(2);
  smooth();
  fill(color(random(255),random(255),random(255)));
  triangle(moveX, moveY, pmouseX, pmouseY, 540, 540);
  //Draw if mouse is pressed
  if(mousePressed){
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  saveFrame("output/######.png");
}


void mouseMoved(){
  moveX = mouseX;
  moveY = mouseY;
}


void keyPressed(){
  if(key == 's'){
  println("saving...");
  save("scren####.jpg");
  println("Done saving");
}

  if(key=='c'){
  println("Clearing...");
  background(color(random(255),random(255),random(255)));
}

}
