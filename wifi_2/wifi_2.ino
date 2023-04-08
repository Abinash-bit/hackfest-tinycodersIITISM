#include <IRremote.h>
#include <WiFi.h>
#include <HTTPClient.h>

const char* ssid = "Poco M2";
const char* password = "12345555";

const char* serverName = "https://aahaar.000webhostapp.com/post-data.php";

const int irReceiverPin = 7;
IRrecv irrecv(irReceiverPin);
decode_results results;

void setup() {
  Serial.begin(9600);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi...");
  }
  Serial.println("Connected to WiFi");
  irrecv.enableIRIn();
}

void loop() {
  if (irrecv.decode(&results)) {
    Serial.println(results.value, HEX);
    irrecv.resume();

    String url = serverName;
    url += "?irdata=";
    url += results.value;

    HTTPClient http;
    http.begin(url);

    int httpResponseCode = http.GET();
    if (httpResponseCode > 0) {
      Serial.printf("HTTP response code: %d\n", httpResponseCode);
      String response = http.getString();
      Serial.println(response);
    }
    else {
      Serial.printf("HTTP request failed, error: %s\n", http.errorToString(httpResponseCode).c_str());
    }
    http.end();
  }
}
