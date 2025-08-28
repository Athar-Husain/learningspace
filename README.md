# 🎓 Learning Space – LMS Web Application

Welcome to the **Learning Space** web application repository.

This project is a custom-built **Learning Management System (LMS)** developed for the **Learning Space team**. It supports core LMS features including student management, tutor approvals, course uploads, quizzes, assessments, live classes, payments, and more.


---

### ✅ This file includes:
- Everything your client needs to **understand, set up, and run** the app.
- Specific instructions about using `lslms.sql` instead of migrations.
- Clean structure without Laravel promo content.
- No sensitive data.
- Clear callout to contact you for support.

Let me know if:
- You want me to also provide a production deployment guide (e.g., Nginx/Apache setup).
- You’d like to add screenshots, API endpoints, or user guides.

Would you like this saved as a downloadable `.md` file?

---


## 🚀 Features Overview

- User roles: Admin, Tutor, Student
- Tutor onboarding with admin approval
- Course creation & content upload (by tutors)
- Student enrollment & dashboard
- Live classes via Zoom integration
- Quiz & assessment modules
- Payment system integration (configurable from admin)
- Media storage integration with Wasabi
- Admin panel to manage platform, users, settings

---

## ⚙️ Tech Stack

- **Backend**: Laravel (PHP)
- **Frontend**: Blade (Laravel templating engine)
- **Database**: MySQL
- **Video/Live Classes**: Zoom API
- **Storage**: Wasabi cloud storage
- **Payments**: Custom Payment API (configurable via admin panel)

---

## 🛠️ Getting Started (Local Setup)

Follow the steps below to set up the project locally.

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
2. Install PHP & JS Dependencies
bash
Copy code
composer install
npm install
npm run dev
3. Configure Environment
Copy the example environment file:

bash
Copy code
cp .env.example .env
⚠️ Important: Do not run migrations immediately.

4. Import the Database
Inside the root of the project, you’ll find a file named lslms.sql

Import this SQL file into your MySQL database manually (e.g., via phpMyAdmin or command line)

Then, update the .env file with your database credentials to connect to the imported DB.

5. Generate Application Key
bash
Copy code
php artisan key:generate
6. Serve the Application
bash
Copy code
php artisan serve
The app will now be accessible at:
📍 http://localhost:8000

📂 Project Structure (Quick Overview)
/app – Laravel app logic (Models, Controllers)

/resources/views – Blade templates (Frontend views)

/routes/web.php – Web routes

/public – Public assets

/database – Migrations and seeders (if needed)

lslms.sql – ✅ Pre-configured database dump (import before running)

🔐 Admin Panel
The application includes a full-featured admin panel for:

Managing tutors, students, and courses

Controlling platform settings

Configuring Zoom and Payment APIs

Reviewing tutor applications

No admin credentials are included in this README. Please refer to your internal documentation or contact the developer if needed.



