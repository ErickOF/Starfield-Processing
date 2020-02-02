// Array with stars
Star[] stars = new Star[600];

void setup () {
  // Init screen
  size(600, 800);
  // Init stars
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  // Background = black
  background(0);
  // Centering stars
  translate(width / 2, height / 2);

  for (int i = 0; i < stars.length; i++) {
    // Update star's position
    stars[i].update();
    // Draw star
    stars[i].show();
  }
}
