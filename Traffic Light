const int LDR = A0;
const int ledPin1 = 7;
const int ledPin2 = 6;
const int ledPin3 = 5;

int valor_LDR = 0;

void setup() {
    pinMode(ledPin1, OUTPUT);
    Serial.begin(9600);
    pinMode(ledPin2, OUTPUT);
    Serial.begin(9600);
    pinMode(ledPin3, OUTPUT);
    Serial.begin(9600);
}

void loop() {
    valor_LDR = analogRead(LDR);

    Serial.print("LDR: ");
    Serial.println(valor_LDR);

    if (valor_LDR < 800) {
        digitalWrite(ledPin1, HIGH);
        digitalWrite(ledPin2, HIGH);
        digitalWrite(ledPin3, HIGH);
    } else if (valor_LDR < 900){
        digitalWrite(ledPin1, HIGH);
        digitalWrite(ledPin2, HIGH);
        digitalWrite(ledPin3, LOW);
    } else if (valor_LDR < 990) {
        digitalWrite(ledPin1, HIGH);
        digitalWrite(ledPin2, LOW);
        digitalWrite(ledPin3, LOW);
    } else {
        digitalWrite(ledPin1, LOW);
        digitalWrite(ledPin2, LOW);
        digitalWrite(ledPin3, LOW);
    }

    delay(100);
}
