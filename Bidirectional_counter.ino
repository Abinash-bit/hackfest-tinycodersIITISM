int sensor = D7;
int val= 0;

 
 
 
 void setup() {
  pinMode(sensor,INPUT);
  Serial.begin(115200);

}

void loop() {
  val=digitalRead(sensor);   
 if (val==1)
  {
    Serial.println("DETECTED");
  }
  else
  {
    Serial.println("NOT DETECTED");
  }
}
 
