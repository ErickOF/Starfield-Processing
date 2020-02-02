class Star {
  // Position
  private float x, y, z, pz;
  // Some settings
  private int speed;
  private int starColor;
  private int starRadio;
  
  // Default constructor
  Star() {
    this.initRandomPosition();
    this.starColor = 255;
    this.starRadio = 8;
    this.speed = 25;
  }
  
  private void initRandomPosition() {
    // Current position
    this.x = random(-width, width);
    this.y = random(-height, height);
    this.z = random(width);
    // Previous position
    this.pz = z;
  }
  
  public void update() {
    this.z -= this.speed;
    
    // Reposition star
    if (this.z < 1) {
      this.initRandomPosition();
    }
  }
  
  public void show() {
    fill(this.starColor);
    // Disables drawing the stroke
    noStroke();

    // Mapping position
    float sx = map(this.x / this.z, 0, 1, 0, width);
    float sy = map(this.y / this.z, 0, 1, 0, height);
    // Mapping readio
    float r = map(z, 0, width, this.starRadio, 0);
    
    
    // Previous position
    float px = map(this.x / this.pz, 0, 1, 0, width);
    float py = map(this.y / this.pz, 0, 1, 0, height);
    
    // Draw light trail
    stroke(255);
    line(px, py, sx, sy);

    // Update previous z
    this.pz = this.z;

    // Draw star
    ellipse(sx, sy, r, r);
  }
  
  // Getters
  public float getX() {
    return this.x;
  }
  
  public float getY() {
    return this.y;
  }
  
  public float getZ() {
    return this.z;
  }
  
  public float getSpeed() {
    return this.speed;
  }
  
  public float getStarColor() {
    return this.starColor;
  }
  
  public float getStarRadio() {
    return this.starRadio;
  }
  
  // Setters
  public void setSpeed(int speed) {
    this.speed = speed;
  }
  
  public void setStarColor(int starColor) {
    this.starColor = starColor;
  }
  
  public void setStarRadio(int starRadio) {
    this.starRadio = starRadio;
  }
}
