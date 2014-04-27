class PartialCollection 
{
  ArrayList<Partial> partials = new ArrayList<Partial>();  
  
  void add(Partial p) 
  {
    partials.add(p);
  }
  
  void get(int i) 
  {
    partials.get(i);
  }
  
  void render() {
    stroke(255);
    strokeWeight(1);

    for(int i = 0; i < partials.size(); i++) 
    {
      pushMatrix();
      translate(width/3, height/3, i * -250);
      noFill();
      Partial p = partials.get(i);
      MyPoint tmp = null;for(int j = 0; j < p.points.size(); j++) 
      {
        MyPoint curr = p.points.get(j);
        ellipse(width/2 * curr.X(), height/2 * curr.Y(), 20, 20);
        if (tmp == null) {
          tmp = p.points.get(0);
        }
        line(width/2 * tmp.X(), height/2 * tmp.Y(), width/2 * curr.X(), height/2 * curr.Y());
        tmp = curr; 
      }
      popMatrix();
    }
  }
}
