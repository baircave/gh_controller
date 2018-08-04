
#include <PICxel.h>

#define numOfLEDS 58
#define stripPin 0
#define delay1 25

int green = 0;
int red = 255;
int blue = 0;

PICxel strip(numOfLEDS, stripPin, GRB);

void setup() {
  strip.begin();
  strip.setBrightness(30);
  strip.clear();
  //Serial.begin(38400);
}

void loop() {
  micSensitiveLighting();
  //singlePixelCircles();
}


void micSensitiveLighting() {
  //for (int j = 0; j < 1000; j++) {
    int micValue = analogRead(A8);
   // Serial.println(micValue);
   // Serial.println(micValue > 700);
    if (micValue > 700 || micValue < 300) {
      //Serial.println("HEREEEEE");
      for (int j = 255; j > 0; j=j-50) {    
        for (int i = 0; i <= strip.getNumberOfLEDs(); i++) {
          strip.GRBsetLEDColor(i, 0, 0, j);
          strip.refreshLEDs();
        }
        delay(5);
      }
    }
    for (int i = 0; i <= strip.getNumberOfLEDs(); i++) {
      strip.GRBsetLEDColor(i, 0, 0, 0);
      strip.refreshLEDs();  
    }
    delay(10);
 // }
}

void micSensitiveLighting2  () {
  //for (int j = 0; j < 1000; j++) {
    int micValue = analogRead(A8);
   // Serial.println(micValue);
   // Serial.println(micValue > 700);
    if (micValue > 550 || micValue < 480) {
      //Serial.println("HEREEEEE");
      for (int j = 255; j > 0; j=j-50) {    
        for (int i = 0; i <= strip.getNumberOfLEDs(); i++) {
          strip.GRBsetLEDColor(i, 0, 0, j);
          strip.refreshLEDs();
        }
        delay(5);
      }
    }
    for (int i = 0; i <= strip.getNumberOfLEDs(); i++) {
      strip.GRBsetLEDColor(i, 0, 0, 0);
      strip.refreshLEDs();  
    }
    delay(10);
 // }
}

void singlePixelCircles() {
  for (int i = 0; i <= strip.getNumberOfLEDs(); i++) {
    int prevLED1 = i - 1;
    int prevLED2 = i - 2;
    int prevLED3 = i - 3;
    int prevLED4 = i - 4;
    int prevLED5 = i - 5;
    if (prevLED1 < 0) {
      prevLED1 = prevLED1 + 1 + numOfLEDS;
    }
    if (prevLED2 < 0) {
      prevLED2 = prevLED2 + 1 + numOfLEDS;
    }
    if (prevLED3 < 0) {
      prevLED3 = prevLED3 + 1 + numOfLEDS;
    }
    if (prevLED4 < 0) {
      prevLED4 = prevLED4 + 1 + numOfLEDS;
    }
    if (prevLED5 < 0) {
      prevLED5 = prevLED5 + 1 + numOfLEDS;
    }
    strip.GRBsetLEDColor(i, 255, 0, 0);
    strip.GRBsetLEDColor(prevLED1, 205, 0, 35);
    strip.GRBsetLEDColor(prevLED2, 155, 0, 70);
    strip.GRBsetLEDColor(prevLED3, 105, 0, 105);
    strip.GRBsetLEDColor(prevLED4, 55, 0, 140);
    strip.GRBsetLEDColor(prevLED5, 0, 0, 0);
    strip.refreshLEDs();
    delay(delay1);
  }
}

//calls helper to rotate all LEDs through rainbow (in sync)
void fullBrightnessRainbow() {
  for (int i = 0; i < strip.getNumberOfLEDs(); i++) {
    strip.GRBsetLEDColor(i, green, red, blue);
    strip.refreshLEDs();
  }
  cycleColors();
  delay(10);
}

//increments stuff by 15...rotates through color wheel
void cycleColors() {
  if (red == 255 && blue == 0 && green < 255) {
    green+=15;
  }
  if (green == 255 && blue == 0 && red > 0) {
    red-=15;
  }
  if (green == 255 && red == 0 && blue < 255) {
    blue+=15;
  }
  if (blue == 255 && red == 0 && green > 0) {
    green-=15;
  }
  if (green == 0 && blue == 255 && red < 255) {
    red+=15;
  }
  if (red == 255 && green == 0 && blue > 0) {
    blue-=15;
  }
}
