Fluid fluid;

void settings() {
 size(N*SCALE, N*SCALE); 
}

void setup() {
  fluid = new Fluid(0.01, 0.0001, 0);

}

void mouseDragged() {
  fluid.addDensity(mouseX/SCALE, mouseY/SCALE, 5000);
  float amtX = mouseX - pmouseX;
  float amtY = mouseY - pmouseY;
  fluid.addVelocity(mouseX/SCALE, mouseY/SCALE, amtX, amtY);
}

void draw() {
  background(0);
  fluid.step();
  fluid.renderD();
  fluid.fadeD();

}
