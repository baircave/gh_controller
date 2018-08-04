double micValue = 0.0;

void setup() {
  Serial.begin(38400);
  
}

void loop() {
  micValue = analogRead(A8);
  Serial.println(micValue);
  delay(30);
}
