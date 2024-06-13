#include <LiquidCrystal.h>
#include <DFRobot_DHT11.h>
DFRobot_DHT11 DHT;
#define DHT11_PIN 5
#define light 6
#define fan 7
#define rotor 8

LiquidCrystal lcd(2,4, 9, 10,11,12);
void setup()
{

   pinMode(light,OUTPUT);
   pinMode(fan,OUTPUT);
   pinMode(rotor,OUTPUT);
}
void loop()
{
  
  lcd.begin ( 16, 2);
  DHT.read(DHT11_PIN);
  float t = (DHT.temperature);
  lcd.setCursor(0, 0);
  lcd.print("Temp= ");
  lcd.print(t);
  lcd.print("C ");
  
  digitalWrite(fan,HIGH);
  float h = (DHT.humidity);
  lcd.setCursor(0, 1);
  lcd.print("Humidity= ");
  lcd.print(h);
  lcd.print("% ");
  if (h>75)
  delay(10);
  {
    digitalWrite(fan,LOW);
  }
  if (t>37)
  {
    digitalWrite(light,LOW);
  }
  if (t<37)
  {
  digitalWrite(light,HIGH);
  }
  digitalWrite(rotor,HIGH);
  delay(5000);
  digitalWrite(rotor,LOW);
}
