FROM eclipse-mosquitto:2

# Copia il file di configurazione
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Copia il file delle password
COPY password.txt /mosquitto/config/password.txt

# Crea il file delle password in formato Mosquitto
RUN mosquitto_passwd -U /mosquitto/config/password.txt

# Esponi la porta MQTT
EXPOSE 1883
