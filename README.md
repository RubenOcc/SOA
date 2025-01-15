Order Management System

This is a web-based application for managing orders, including functionality to create orders, send email notifications, and display existing orders in a user-friendly interface. The application is built using Flask, a Python web framework.

Features

Create new orders through a web form.

Send email notifications to clients upon successful order creation.

Display a table of all orders.

Requirements

To run this project, you need the following installed on your system:

Python 3.8 or higher

Flask

A Gmail account for sending email notifications

Installation

Clone the repository:

git clone https://github.com/your-username/your-repo.git
cd your-repo

Set up a virtual environment (recommended):

python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

Install dependencies:

pip install -r requirements.txt

Set up environment variables:

Create a .env file in the root of the project and add the following:

EMAIL_SENDER="your_email@gmail.com"
EMAIL_PASSWORD="your_app_password"
RECIPIENT_EMAIL ="recipient@gmail.com"

Replace your_email@gmail.com with your Gmail address and your_app_password with your Gmail app password.

Usage

Run the application:

flask run

Open your browser and navigate to http://127.0.0.1:5000.

Use the form to create new orders. Successfully created orders will trigger an email notification and display on the orders table.

Project Structure

.
├── app
│   ├── controllers
│   │   └── order.py
│   ├── models
│   │   └── order.py
│   ├── repositories
│   │   └── order.py
│   ├── schemas
│   │   └── order_dto.py
│   ├── services
│   │   ├── notification.py
│   │   └── order.py
│   └── templates
│       ├── order_error.html
│       ├── order_form.html
│       └── order_success.html
├── .env
├── requirements.txt
├── README.md
└── run.py

License

This project is licensed under the MIT License. See the LICENSE file for details.

Contributing

If you'd like to contribute to this project:

Fork the repository.

Create a new branch for your feature/bugfix.

Commit your changes.

Submit a pull request.

Acknowledgments

Flask documentation: https://flask.palletsprojects.com

Python documentation: https://docs.python.org

Special thanks to the team members for their collaboration on this project!