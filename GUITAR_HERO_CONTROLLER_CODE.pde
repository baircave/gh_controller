int brightness = 0;

int fadeAmount = 5;    // how many points to fade the LED by

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

int i = 0;

int delay1 = 400;
int delay2 = 40;
int repetitions = 20;



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
}

void loop() {
  while (i < repetitions) {
    analogWrite(led1, 255);
    analogWrite(led3, 255);
    analogWrite(led5, 255);
    analogWrite(led7, 255);
    analogWrite(led9, 255);
    analogWrite(led11, 255);
    analogWrite(led2, 0);
    analogWrite(led4, 0);
    analogWrite(led6, 0);
    analogWrite(led8, 0);
    analogWrite(led10, 0);
    analogWrite(10,255);
    delay(400);
    analogWrite(led1, 0);
    analogWrite(led3, 0);
    analogWrite(led5, 0);
    analogWrite(led7, 0);
    analogWrite(led9, 0);
    analogWrite(led11, 0);
    analogWrite(led2, 255);
    analogWrite(led4, 255);
    analogWrite(led6, 255);
    analogWrite(led8, 255);
    analogWrite(led10, 255);
    analogWrite(10,0);
    delay(400);
    i = i + 1;
  }
  i = 0;
  while (i < repetitions) {
    analogWrite(led1,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led1,0);
    analogWrite(led2,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led2,0);
    analogWrite(led3,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led3,0);
    analogWrite(led4,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led4,0);
    analogWrite(led5,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led5,0);
    analogWrite(led6,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led6,0);
    analogWrite(led7,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led7,0);
    analogWrite(led8,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led8,0);
    analogWrite(led9,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led9,0);
    analogWrite(led10,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led10,0);
    analogWrite(led11,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    
    analogWrite(led10,255);
    analogWrite(led11,0);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led10,0);
    analogWrite(led9,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led9,0);
    analogWrite(led8,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led8,0);
    analogWrite(led7,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led7,0);
    analogWrite(led6,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led6,0);
    analogWrite(led5,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led5,0);
    analogWrite(led4,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led4,0);
    analogWrite(led3,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led3,0);
    analogWrite(led2,255);
      analogWrite(10, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }   
    delay(delay2);
    analogWrite(led2,0);
    analogWrite(led1,255);
    i = i + 1;
  }
  i = 0;
}
