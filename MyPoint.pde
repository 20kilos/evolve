class MyPoint
{
  private float x;
  private float y;
  private int z;
  
  public MyPoint(float x, float y, int z) 
  {
    this.x = x;
    this.y = y;
    this.z = z; 
  }
  
  public float X() { return x; }
  public void setX(float tx) {  x = tx; }
  
  public float Y() { return y; }
  public void setY(float ty) {  y = ty;}

  public int Z() { return z; }
  public void setZ(int ty) {  y = ty;}
}
