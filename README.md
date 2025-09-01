🎓 Learning Space – LMS Web Application
Welcome to the Learning Space LMS platform. This is a custom-built Learning Management System developed for the Learning Space team to support online education with robust features including course management, student-tutor workflows, assessments, live classes, and integrations with video and payment APIs.

🚀 Project Overview
Multi-role user system: Admin, Tutor, Student

Tutor onboarding with admin approvals

Course creation and media content upload (Wasabi integrated)

Student dashboard & enrollments

Quizzes and assessments

Zoom-based live class management

Integrated payment gateways (Razorpay, Stripe, PayPal, Paystack, Mollie, MercadoPago, etc.)

Admin panel for full system control

SCORM support for interactive learning content

⚙️ Tech Stack
Layer

Stack

Backend

Laravel 9 (PHP 8.0+)

Frontend

Blade templates (with Bootstrap 5)

Database

MySQL

Video

Zoom API

Storage

Wasabi (via S3-compatible integration)

Payments

Multiple Gateways (Configurable)

Realtime

Laravel Echo + Pusher

SCORM

devianl2/laravel-scorm integration

🧰 Local Setup Instructions
Important: Before you begin, please copy the provided SQL file to your local machine.
To get the project running locally, follow these simple steps:

1. Clone the Repository
git clone [https://github.com/Athar-Husain/learningspace.git](https://github.com/Athar-Husain/learningspace.git)
cd learningspace


2. Install Dependencies
npm install
composer install


3. Setup Environment File
cp .env.example .env


Update your .env file with your local MySQL database credentials.

4. Import the Database
Remember to import the pre-built SQL dump before running the app. The file, lslms.sql, is located at the root of the project. You can import it via phpMyAdmin or the MySQL CLI.

mysql -u your_username -p your_database_name < lslms.sql


5. Generate Application Key
php artisan key:generate


6. Run the Application
php artisan serve


Visit your app at: 👉 http://localhost:8000

🛠️ PHP & Node Requirements
Requirement

Version

PHP

Minimum: PHP 8.0.2<br>Recommended: PHP 8.1.x or 8.2.x

Node.js

>=14.x

NPM

>=6.x

📦 Core Package Versions
Package

Version

Laravel Framework

^9.2

Laravel Mix

^6.0.6

Bootstrap

^5.1.3

Vue.js

^2.6.12

Laravel Passport & Sanctum

^11.8, ^2.14

SCORM Integration

^4.0

Payment Packages

Multi

Zoom API Integration

jubaer/zoom-laravel ^1.2

Pusher

^7.2

Laravel Datatables

~9.0

Laravel UI

^3.4

🔐 Admin Panel Access
A fully functional admin panel is included, allowing you to:

Manage users (admins, tutors, students)

Approve tutor applications

Upload and manage courses

Configure live classes via Zoom

Set up and control payment gateways

Manage SCORM content

Configure platform-wide settings

Note: Admin credentials are not included here. Please refer to internal documentation or contact the developer for access.

📁 Key Directory Structure
/app                  => Models, Controllers, Services
/resources/views      => Blade frontend templates
/routes/web.php       => Route definitions
/public               => Public assets (CSS, JS, etc.)
/database             => Migrations, seeders
/storage              => Uploaded files, logs


🤝 Closing Note
This application has been crafted with scalability, performance, and extensibility in mind. It's ready for further development or production deployment as needed.

If you encounter any issues or need enhancements, feel free to reach out.

Best Regards,
Athar
Software Developer