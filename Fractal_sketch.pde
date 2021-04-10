float theta;
void setup() {
  size(300, 300);
  smooth();
}

void draw() {
  background(255);
  theta = map(mouseX, 0, width, 0, PI/2);
  translate(width/2, height);
  stroke(mouseY, mouseY/2, mouseY/4);
  branch(60);
  
}

void branch(float len) {
  len *= 0.66;  
  strokeWeight(2);
  line(0, 0, 0, -len);
  translate(0, -len);
    
  if(len > 2){
  pushMatrix();
  rotate(theta);
  //line(0, 0, 0, -150);
  branch(len);
  popMatrix();
  
  pushMatrix();
  rotate(-theta);
  //line(0, 0, 0, -150);
  branch(len);
  popMatrix();
  }
}
