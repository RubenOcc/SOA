import smtplib
from email.mime.text import MIMEText
import os
from dotenv import load_dotenv

# Cargar las variables de entorno desde el archivo .env
load_dotenv()

class NotificationService:
    def send_email(self, recipient, subject, body):
        # Recuperar la contraseña desde las variables de entorno
        sender = os.getenv("EMAIL_USER")
        password = os.getenv("EMAIL_PASSWORD")

        message = MIMEText(body)
        message["Subject"] = subject
        message["From"] = sender
        message["To"] = recipient

        try:
            with smtplib.SMTP("smtp.gmail.com", 587) as server:
                server.starttls()
                server.login(sender, password)
                server.sendmail(sender, recipient, message.as_string())
        except Exception as e:
            print(f"Error sending email: {e}")