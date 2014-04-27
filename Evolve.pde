PartialCollection partials;
float zRotation = 0;

void setup()
{
  size(800, 400, OPENGL);
  background(0);
  
  partials = new PartialCollection();
  
  Partial fundamental = new Partial();
  fundamental.addPoint(new MyPoint(0.0, 0.0, 0));
  fundamental.addPoint(new MyPoint(0.3, 0.4, 0));
  fundamental.addPoint(new MyPoint(0.45, 0.3, 0));
  fundamental.addPoint(new MyPoint(0.60, 0.2, 0));
  fundamental.addPoint(new MyPoint(0.90, 0.5, 0));
  fundamental.addPoint(new MyPoint(0.98, 0.9, 0));
  fundamental.addPoint(new MyPoint(1.0, 1.0, 0));
  
  Partial two = new Partial();
  two.addPoint(new MyPoint(0.0, 1.0, 1));
  two.addPoint(new MyPoint(0.6, 0.4, 1));
  two.addPoint(new MyPoint(0.7, 0.3, 1));
  two.addPoint(new MyPoint(0.80, 0.6, 1));
  two.addPoint(new MyPoint(0.90, 0.9, 1));
  two.addPoint(new MyPoint(1.0, 1.0, 1));
  
  partials.add(two);
  partials.add(fundamental);
}
//
//void createRandomPartials() {
//  int num = 12;
//  for(int i = 0; i < num; i++) {
//    Partial p = new Partial();
//    int numPoints = (int) random(6);
//    for(int j = 0; j < numPoints; j++) {
//      p.addPoint(new MyPoint(random(1), random(1.0), i));
//    }
//  } 
//}

void draw()
{
  lights();
  background(0);
  stroke(0);
  rotateY(-PI/8);
  //translate(0, -100, -100);
  partials.render();
}
