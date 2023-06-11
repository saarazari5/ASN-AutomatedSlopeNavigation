#include "WiFi.h"
#include <ESPAsyncWebServer.h>
#include <HTTPClient.h>
#include <esp_task_wdt.h>
#include <AsyncTCP.h>

int printonce = 0;
int count_degree = 0;
int flag = 0;

const char* ssid = "AndroidAPN";
const char* password = "123456789";

#include <LiquidCrystal_I2C.h>

// lcd I2C address, 16 rows, 2 columns
LiquidCrystal_I2C lcd(0x27, 16, 2);


const int trigPin = 33;
const int echoPin = 25;
#define SOUND_SPEED 0.034
long duration;
float distanceCm;

void test();

AsyncWebServer server(80);

void setup() {
  Serial.begin(115200);

  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(100);
  }
  Serial.println();
  Serial.println(WiFi.macAddress());
  Serial.println(WiFi.localIP());

  test();

  lcd.init();
  lcd.backlight();
}

void loop() {
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(2);
  digitalWrite(trigPin, LOW);
  duration = pulseIn(echoPin, HIGH);
  distanceCm = duration * SOUND_SPEED / 2;

  //Serial.println(distanceCm);
  delay(1000);

  if (printonce) {
    Serial.println("*************************");
    Serial.println("alert stair");
    Serial.println("enter to steep slope mode");
    Serial.println("driving in 30% speed");
    Serial.println("lower arm to 80%");
    Serial.println("upper arm to 90%");
    Serial.println("*************************");

    lcd.setCursor(0, 0);
    lcd.print("alert stair");
    lcd.setCursor(0, 0);
    delay(2500);
    lcd.print("                    ");
    lcd.setCursor(0, 0);
    lcd.print("enter to steep");
    lcd.setCursor(0, 1);
    lcd.print("slope mode");
    lcd.setCursor(0, 0);
    delay(2500);
    lcd.setCursor(0, 1);
    lcd.print("                    ");
    lcd.setCursor(0, 0);
    lcd.print("                    ");
    lcd.setCursor(0, 0);
    lcd.print("driving in");
    lcd.setCursor(0, 1);
    lcd.print("30% speed");
    delay(2500);
    lcd.setCursor(0, 1);
    lcd.print("                    ");
    lcd.setCursor(0, 0);
    lcd.print("                    ");
    delay(2500);
    lcd.setCursor(0, 0);
    lcd.print("lower arm");
    lcd.setCursor(0, 1);
    lcd.print("to 80%");
    delay(2500);
    lcd.setCursor(0, 1);
    lcd.print("                    ");
    lcd.setCursor(0, 0);
    lcd.print("                    ");
    lcd.setCursor(0, 0);
    lcd.print("upper arm");
    lcd.setCursor(0, 1);
    lcd.print("to 90%");
    delay(2500);
    lcd.setCursor(0, 1);
    lcd.print("                    ");
    lcd.setCursor(0, 0);
    lcd.print("                    ");

    printonce = 0;
  }
}

void test() {
  server.on("/distance", HTTP_GET, [](AsyncWebServerRequest* request) {
    request->send(200, "text/plain", String(distanceCm));
    //Serial.println("distance sent");
  });

  server.on("/stair", HTTP_GET, [](AsyncWebServerRequest* request) {
    int params = request->params();
    for (int i = 0; i < params; i++) {
      AsyncWebParameter* p = request->getParam(i);
      Serial.printf("GET[%s]: %s\n", p->name().c_str(), p->value().c_str());
    }
    //Serial.println("distance sent");
    if (distanceCm < 50) {
      flag = 1;
      printonce = 1;
    } else {
      flag = 0;
    }

    request->send(200, "text/plain", String(distanceCm));
  });

  server.on("/angle", HTTP_POST, [](AsyncWebServerRequest* request) {
    if (flag) {
      int params = request->params();
      int deg = 0;
      for (int i = 0; i < params; i++) {
        AsyncWebParameter* p = request->getParam(i);
        if (p->isPost()) {
          Serial.printf("POST[%s]: %s\n", p->name().c_str(), p->value().c_str());
          deg = atoi(p->value().c_str());
        }
      }
      Serial.println("change the arm speed to 100%");
      Serial.println("finish stair");
      Serial.print("angle is: ");
      Serial.println(deg);

      lcd.setCursor(0, 1);
      lcd.print("                    ");
      lcd.setCursor(0, 0);
      lcd.print("                    ");
      delay(2500);
      lcd.setCursor(0, 0);
      lcd.print("angle is: ");
      lcd.setCursor(0, 1);
      lcd.print(deg);
      delay(2500);
      lcd.setCursor(0, 1);
      lcd.print("                    ");
      lcd.setCursor(0, 0);
      lcd.print("                    ");
      delay(2500);
      lcd.setCursor(0, 0);
      lcd.print("change the arm");
      lcd.setCursor(0, 1);
      lcd.print("speed to 100%");
      delay(2500);
      lcd.setCursor(0, 1);
      lcd.print("                    ");
      lcd.setCursor(0, 0);
      lcd.print("                    ");
      delay(2500);
      lcd.setCursor(0, 0);
      lcd.print("finish stair");
      delay(2500);
    }

    request->send(200, "text/plain", "POST request received");
  });

  server.begin();
}