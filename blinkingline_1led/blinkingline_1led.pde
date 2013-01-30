

int ledPin1 = 13; // LED connected to digital pin 13

int inputPin1 = 2;

int val1 = 0;

int Oshimashita1 = 0;

test

void setup()                    // run once, when the sketch starts
{
  pinMode(ledPin1, OUTPUT);      // sets the digital pin as output
  pinMode(inputPin1,INPUT);
}


void loop()                     // run over and over again
{
  val1 = digitalRead(inputPin1);
  if (val1== LOW){ 
    Oshimashita1 = 1;
  }
  if(Oshimashita1 == 1){
    val1 = digitalRead(inputPin1);

    if(val1 == HIGH){
      Oshimashita1 =2;
    }
  }
  if(Oshimashita1 == 2){
    for(int time=0; time<7; time++){
      digitalWrite(ledPin1,HIGH); //ledPin on
      delay(100);
      digitalWrite(ledPin1,LOW); //ledPin off
      delay(100);
    }
    //number wo kaete kurikaesu koto de ennshutsu wo suru
    
    for(int time=0; time<5; time++){
      digitalWrite(ledPin1,HIGH); //ledPin on
      delay(150);
      digitalWrite(ledPin1,LOW); //ledPin off
      delay(150);
    }
    
    for(int time=0; time<3; time++){
      digitalWrite(ledPin1,HIGH); //ledPin on
      delay(200);
      digitalWrite(ledPin1,LOW); //ledPin off
      delay(200);
    }
    
    for(int time=0; time<2; time++){
      digitalWrite(ledPin1,HIGH); //ledPin on
      delay(250);
      digitalWrite(ledPin1,LOW); //ledPin off
      delay(250);
    }

    for(int i=0; i<1; i++){
      digitalWrite(ledPin1,HIGH); //ledPin on
      delay(350);
      digitalWrite(ledPin1,LOW); //ledPin off
      delay(0);
    }
    
    


  }
  Oshimashita1 = 0;
}



