int softpotPin = A12; //analog pin 12

int led1 = 45;
int led2 = 43;
int led3 = 41;
int led4 = 39;
int led5 = 37;
int led6 = 35;
int led7 = 33;
int led8 = 31;
int led9 = 29;
int led10 = 25;
int led11 = 23;
int tuningPegs = 10;

void setup(){
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
  pinMode(tuningPegs,OUTPUT);
  digitalWrite(softpotPin, HIGH); //enable pullup resistor?
  Serial.begin(38400);
}

void loop(){
  
  int softpotReading = analogRead(softpotPin)*2;  // read the analog input value, then assign it to variable "adc_value"
  int scaledReading = scaleDown(softpotReading/2);
  
  analogWrite(tuningPegs,255);
  Serial.write(241);                   // send SENSOR NUMBER associated with sensor
  if (softpotReading/2 > 520) { //write 0 if ribbon isn't being touched
    Serial.write((byte)0);
   } else {
   Serial.write(scaledReading);             // send the sensor data  
  }
  
  if (softpotReading >= 990 && softpotReading <= 1005) {
    fretsOff();
  } else {
    if (softpotReading >= 33 && softpotReading <= 98) {
      analogWrite(led11,255);
    } else {
      analogWrite(led11,0);
    }
    if (softpotReading >= 99 && softpotReading <= 167) {
      analogWrite(led10,255);
    } else {
      analogWrite(led10,0);
    }
    if (softpotReading >= 168 && softpotReading <= 242) {
      analogWrite(led9,255);
    } else {
      analogWrite(led9,0);
    }
    if (softpotReading >= 243 && softpotReading <= 325) {
      analogWrite(led8,255);
    } else {
      analogWrite(led8,0);
    }
    if (softpotReading >= 326 && softpotReading <= 411) {
      analogWrite(led7,255);
    } else {
      analogWrite(led7,0);
    }
    if (softpotReading >= 412 && softpotReading <= 511) {
      analogWrite(led6,255);
    } else {
      analogWrite(led6,0);
    }
    if (softpotReading >= 512 && softpotReading <= 615) {
      analogWrite(led5,255);
    } else {
      analogWrite(led5,0);
    }
    if (softpotReading >= 616 && softpotReading <= 727) {
      analogWrite(led4,255);
    } else {
      analogWrite(led4,0);
    }
    if (softpotReading >= 728 && softpotReading <= 839) {
      analogWrite(led3,255);
    } else {
      analogWrite(led3,0);
    }
    if (softpotReading >= 840 && softpotReading <= 959) {
      analogWrite(led2,255);
    } else {
      analogWrite(led2,0);
    }
    if (softpotReading >= 960 && softpotReading <= 1023) {
      analogWrite(led1,255);
    } else {
      analogWrite(led1,0);
    }
  }
  //Serial.println(softpotReading);
  delay(20); //just here to slow down the output for easier reading
}

void fretsOff(){
  analogWrite(led1,0);
  analogWrite(led2,0);
  analogWrite(led3,0);
  analogWrite(led4,0);
  analogWrite(led5,0);
  analogWrite(led6,0);
  analogWrite(led7,0);
  analogWrite(led8,0);
  analogWrite(led9,0);
  analogWrite(led10,0);
  analogWrite(led11,0);
}

int scaleDown(int softpotReading){
  double newSoftpotValue = 0.471 * softpotReading;
  int roundedValue = (int) round(newSoftpotValue);
  return roundedValue;
}
