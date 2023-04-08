// Define the pins used for the IR sensors
const int IR_SENSOR_1 = 7;
const int IR_SENSOR_2 = 8;

// Define the variables to store the current and previous states of the IR sensors
int irSensor1State = LOW;
int irSensor2State = LOW;
int previousIrSensor1State = LOW;
int previousIrSensor2State = LOW;

// Define the variables to store the entry and exit counts
int entryCount = -1;
int exitCount = -1;

void setup() {
  // Set the IR sensor pins as inputs
  pinMode(IR_SENSOR_1, INPUT);
  pinMode(IR_SENSOR_2, INPUT);
  
  // Start serial communication for debugging
  Serial.begin(9600);
}

void loop() {
  // Read the current states of the IR sensors
  irSensor1State = digitalRead(IR_SENSOR_1);
  irSensor2State = digitalRead(IR_SENSOR_2);

  // Check if the IR sensor states have changed since the last loop
  if (irSensor1State != previousIrSensor1State) {
    // If the state of IR sensor 1 has changed, check if it's now HIGH (i.e. detecting someone)
       delay(800);
      if (irSensor2State == HIGH) {
        // If IR sensor 1 is now HIGH and IR sensor 2 is LOW, increment the entry count
        entryCount++;
        Serial.println("Entry detected!");
      }
    }

  if (irSensor2State != previousIrSensor2State) {
    // If the state of IR sensor 2 has changed, check if it's now HIGH (i.e. detecting someone)
        delay(800);
      if (irSensor1State == HIGH) {
        // If IR sensor 2 is now HIGH and IR sensor 1 is LOW, increment the exit count
        exitCount++;
        Serial.println("Exit detected!");
      }
    }

  // Store the current states of the IR sensors for comparison in the next loop
  previousIrSensor1State = irSensor1State;
  previousIrSensor2State = irSensor2State;

  // Print the current entry and exit counts for debugging
  Serial.print("Entry count: ");
  Serial.println(entryCount);
  Serial.print("Exit count: ");
  Serial.println(exitCount);

  // Delay for a short amount of time to prevent false readings due to rapid changes in sensor states
  delay(500);
}
