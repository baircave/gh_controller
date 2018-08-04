int brightness = 0;

int fadeAmount = 5;    // how many points to fade the LED by

//LEDs on the fretboard and tuningPegs
int fret6 = 23;
int fret7 = 25;
int fret8 = 45;
int fret9 = 29;
int fret10 = 31;
int fret11 = 33;
int fret12 = 35;
int fret13 = 37;
int fret14 = 39;
int fret15 = 41;
int fret16 = 43;
int tuningPegs = 10;

//current delay/repetition values for rotation through programs
int delay1 = 400;
int delay2 = 40;
int repetitions = 20;

//fretboard array for looping
int fretBoard[11] = {fret6,fret7,fret8,fret9,fret10,fret11,fret12,fret13,fret14,fret15,fret16};

//on/off values
int ledON = 255;
int ledOFF = 0;

void setup() {
  pinMode(fret6, OUTPUT);
  pinMode(fret7, OUTPUT);
  pinMode(fret8, OUTPUT);
  pinMode(fret9, OUTPUT);
  pinMode(fret10, OUTPUT);
  pinMode(fret11, OUTPUT);
  pinMode(fret12, OUTPUT);
  pinMode(fret13, OUTPUT);
  pinMode(fret14, OUTPUT);
  pinMode(fret15, OUTPUT);
  pinMode(fret16, OUTPUT);
  pinMode(tuningPegs,OUTPUT);
}

void loop() {
  lightEveryOtherFretAndAlternate();
  lightFretboardBackAndForth();
}

//lights every even fret (fret6 through fret16) then every odd. Also lights tuning pegs on and off
void lightEveryOtherFretAndAlternate() {
  for (int i = 0; i < repetitions; i++) {
    for (int j = 0; j < sizeof(fretBoard); j++) {
      analogWrite(tuningPegs,ledON);
      if ((j % 2) == 0) {
        analogWrite(fretBoard[j],ledON);
      } else {
        analogWrite(fretBoard[j],ledOFF);
      }
    }
    delay(delay1);
    for (int j = 0; j < sizeof(fretBoard); j++) {
      analogWrite(tuningPegs,ledOFF );
      if ((j % 2) == 0) {
        analogWrite(fretBoard[j],ledOFF);
      } else {
        analogWrite(fretBoard[j],ledON);
      }
    }
  }
}


void lightFretboardBackAndForth() {
  for (int i = 0; i < repetitions; i++) {
    for (int j = 0; j < sizeof(fretBoard); j++) {
      analogWrite(fretBoard[j],ledON);
      if (j != 0) {
        analogWrite(fretBoard[j-1],ledOFF);
      }
      if (brightness == 255 || brightness == 0) {
        fadeAmount = -fadeAmount;
      }
      analogWrite(tuningPegs,brightness);
      delay(delay2);
    }
    for (int j = sizeof(fretBoard)-2; j >= 0; j--) {
      analogWrite(fretBoard[j],ledON);
      analogWrite(fretBoard[j+1],ledOFF);
      if (brightness == 255 || brightness == 0) {
        fadeAmount = -fadeAmount;
      }
      analogWrite(tuningPegs,brightness);
      delay(delay2);
    }
  }
}
