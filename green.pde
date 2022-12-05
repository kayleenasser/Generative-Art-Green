int amount_of_shapes = 20; // The amount of shapes to be generated
Shape[] shapes = new Shape[amount_of_shapes]; // Array of shapes with shape class
// Lots of green hex codes in array of colors
color[] greens = {#16f792, #66cdaa, #aaf0d1, #96ded1, #00a86b, #a0d6b4, #96c8a2, #aaf0d1, #addfad, #0ffc56, #019306, #50ce5f, #50ce5f, #05844b, #93db1e, #88e8a0, #059170, #64efbc, #6aed1a, #cce25d, #5bc94c};
PGraphics pg;
int gSize = 4;
float cx, cy;
int offset = 3;

void setup() {
  size(900, 900);
  imageMode(CENTER);
  background(#FFFFFF);
  fill(#011c01);
  rect(50, 50, 800, 800);
  cx = width / 2;
  cy = height / 2;
  for (int i = 0; i < amount_of_shapes; i++) {
    float x = random(random(0.05, 0.8), 0.18) * width;
    float y = random(random(0.05, 0.8), 0.18) * height;
    float w = random(cx * 0.25) * random(random(4.5));
    float h = random(0.5, 1.5) * w;
    float a = int(random(5)) * TAU / 8;
    float n = int(random(3));
    color c = greens[(int) random(0, greens.length - 1)];
    shapes[i] = new Shape(x, y, w, h, a, n, c);
  }
}

void draw() {
  pg = createGraphics(gSize, gSize);
  pg.beginDraw();
  pg.background(255);
  for (int i = 0; i < (shapes.length) - 1; i++) {
    pg.push();
    pg.translate(shapes[i].x - (width - gSize) * 0.5, shapes[i].y - (height - gSize) * 0.5);
    pg.rotate(shapes[i].a);
    pg.fill(shapes[i].c);
    pg.noStroke();
    pg.strokeWeight(0.25);
    if (shapes[i].n == 0) {
      pg.circle(0, 0, shapes[i].w);
    } else if (shapes[i].n == 1) {
      pg.rect(-shapes[i].w / 2, -shapes[i].h / 2, shapes[i].w, shapes[i].h);
    } else if (shapes[i].n == 2) {
      pg.rect(-shapes[i].w / 2, -shapes[i].h / 2, shapes[i].w * 2, 5);
    }
    pg.pop();
  }
  fill(0, 100);
  noStroke();
  image(pg, cx, cy, gSize + offset * 0.75, gSize + offset * 0.75);
}

class Shape {
  float x, y, w, h, a, n;
  color c;
  Shape(float x, float y, float w, float h, float a, float n, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.a = a;
    this.n = n;
    this.c = c;
  }
}

void backPressed() {
}

void keyPressed() {
  if (keyPressed) {
    if (key == 'c' || key == 'C') {
      background(#FFFFFF);
      fill(#011c01);
      rect(50, 50, 800, 800);
    }
    if (key == 'b' || key == 'B'){
      fill(#FFFFFF, 0);
      stroke(#FFFFFF, 250);
      strokeWeight(99);
      rect(0, 0, width, height);
    }
  }
}

  void mousePressed() {
    for (int i = 0; i < amount_of_shapes; i++) {
      float x = random(random(0.05, 0.8), 0.18) * width;
      float y = random(random(0.05, 0.8), 0.18) * height;
      float w = random(cx * 0.25) * random(random(4.5));
      float h = random(0.5, 1.5) * w;
      float a = int(random(5)) * TAU / 8;
      float n = int(random(3));
      color c = greens[(int) random(0, greens.length - 1)];
      shapes[i] = new Shape(x, y, w, h, a, n, c);
    }
    strokeWeight(0.25);
    for (int i = 0; i < (shapes.length) - 1; i++) {
      push();
      translate(shapes[i].x, shapes[i].y);
      rotate(shapes[i].a);
      if (i < 10)
        fill(shapes[i].c);
      else
        fill(shapes[i].c, random(10, 200));
      noStroke();
      if (shapes[i].n == 0) {
        circle(0, 0, shapes[i].w);
      } else if (shapes[i].n == 1) {
        rect(-shapes[i].w / 2, -shapes[i].h / 2, shapes[i].w, shapes[i].h);
      } else if (shapes[i].n == 2) {
        rect(-shapes[i].w / 2, -shapes[i].h / 2, shapes[i].w * 2, 5);
      }
      pop();
    }
    redraw();
  }
