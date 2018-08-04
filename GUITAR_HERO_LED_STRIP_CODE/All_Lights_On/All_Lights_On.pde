
#include <PICxel.h>

#define numOfLEDS 58
#define stripPin 0
#define delay1 25

int green = 0;
int red = 255;
int blue = 0;
int led1 = 23;
int led2 = 25;
int led3 = 45;
int led4 = 29;
int led5 = 31;
int led6 = 33;
int led7 = 35;
int led8 = 37;
int led9 = 39;
int led10 = 41;
int led11 = 43;

PICxel strip(numOfLEDS, stripPin, GRB);

void setup() {
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(led5, OUTPUT);
  pinMode(led6, OUTPUT);
  pinMode(led7, OUTPUT);
  pinMode(led8, OUTPUT);
  pinMode(led9, OUTPUT);
  pinMode(led10, OUTPUT);
  pinMode(led11, OUTPUT);
  pinMode(10,OUTPUT);
  strip.begin();
  strip.setBrightness(30);
  strip.clear();
  //Serial.begin(38400);
}

void loop() {
  //singlePixelCircles();
  analogWrite(led1, 255);
  analogWrite(led2, 255);
  analogWrite(led3, 255);
  analogWrite(led4, 255);
  analogWrite(led5, 255);
  analogWrite(led6, 255);
  analogWrite(led7, 255);
  analogWrite(led8, 255);
  analogWrite(led9, 255);
  analogWrite(led10, 255);
  analogWrite(led11, 255);
  analogWrite(10, 255);
  for (int i = 0; i <= strip.getNumberOfLEDs(); i++) {
    strip.GRBsetLEDColor(i, 0, 0, 255);
  }
  strip.refreshLEDs();
  while(true){}
}

