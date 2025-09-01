# 🎓 Learning Space LMS

<div align="center">

**Comprehensive Learning Management System for Modern Education**

[![Laravel](https://img.shields.io/badge/Laravel-9.x-red.svg)](https://laravel.com)
[![PHP](https://img.shields.io/badge/PHP-8.0%2B-blue.svg)](https://php.net)
[![MySQL](https://img.shields.io/badge/MySQL-5.7%2B-orange.svg)](https://mysql.com)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-5.1-purple.svg)](https://getbootstrap.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

</div>

---

## 📋 Table of Contents

- [🚀 Project Overview](#-project-overview)
- [✨ Key Features](#-key-features)
- [⚙️ Technology Stack](#️-technology-stack)
- [📋 System Requirements](#-system-requirements)
- [🔧 Installation Guide](#-installation-guide)
- [⚙️ Configuration](#️-configuration)
- [🔐 Admin Panel](#-admin-panel)
- [📁 Project Structure](#-project-structure)
- [🤝 Contributing](#-contributing)
- [📞 Support](#-support)

---

## 🚀 Project Overview

Learning Space is a feature-rich Learning Management System built with Laravel 9, designed to provide a comprehensive online education platform. It supports multiple user roles, course management, live instruction, and integrated payment processing to deliver a complete e-learning experience.

**Perfect for:**
- Educational institutions
- Training organizations
- Individual educators
- Corporate learning programs

---

## ✨ Key Features

| Feature | Description |
|---------|-------------|
| 👥 **Multi-Role System** | Admin, Tutor, and Student roles with granular permissions |
| 📚 **Course Management** | Complete course creation with media upload and organization |
| 🎥 **Live Classes** | Zoom integration for real-time virtual classrooms |
| 📊 **Assessment Tools** | Advanced quizzes with automated grading and analytics |
| 💳 **Payment Processing** | Multiple gateways: Razorpay, Stripe, PayPal, Paystack, Mollie, MercadoPago |
| 📖 **SCORM Support** | Industry-standard e-learning content compatibility |
| ☁️ **Cloud Storage** | Wasabi integration for scalable media storage |
| 🔔 **Real-time Updates** | Laravel Echo + Pusher for live notifications |
| ✅ **Tutor Approval** | Streamlined instructor onboarding with verification |
| 📈 **Analytics Dashboard** | Comprehensive reporting and progress tracking |

---

## ⚙️ Technology Stack

<table>
<tr>
<td>

**Backend**
- Laravel 9 (PHP 8.0+)
- MySQL Database
- Laravel Passport (API Auth)
- Laravel Sanctum (SPA Auth)

</td>
<td>

**Frontend**
- Blade Templates
- Bootstrap 5
- Vue.js 2.6
- Laravel Mix

</td>
<td>

**Integrations**
- Zoom API
- Wasabi Storage
- Pusher (WebSockets)
- Multiple Payment Gateways

</td>
</tr>
</table>

---

## 📋 System Requirements

| Component | Minimum | Recommended | Notes |
|-----------|---------|-------------|-------|
| **PHP** | 8.0.2 | 8.1.x / 8.2.x | Extensions: OpenSSL, PDO, Mbstring, Tokenizer, XML, Ctype, JSON |
| **Node.js** | 14.x | 18.x LTS | For asset compilation |
| **MySQL** | 5.7 | 8.0+ | MariaDB 10.3+ also supported |
| **Composer** | 2.0 | Latest | PHP dependency management |
| **Web Server** | Apache 2.4 / Nginx 1.15 | Latest | mod_rewrite enabled |

---

## 🔧 Installation Guide

> **⚠️ Important:** Ensure you have the SQL database file (`lslms.sql`) ready before starting the installation.

### Step 1: Clone Repository
```bash
git clone https://github.com/Athar-Husain/learningspace.git
cd learningspace
```

### Step 2: Install Dependencies
```bash
# Install PHP dependencies
composer install

# Install Node.js dependencies
npm install
```

### Step 3: Environment Setup
```bash
# Copy environment file
cp .env.example .env

# Generate application key
php artisan key:generate
```

**Configure your `.env` file with database credentials and API keys.**

### Step 4: Database Setup
```bash
# Import the provided SQL file
mysql -u your_username -p your_database_name < lslms.sql
```

*Alternative: Use phpMyAdmin to import the `lslms.sql` file*

### Step 5: Set Permissions
```bash
# Linux/macOS
chmod -R 755 storage bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache

# Windows (Run as Administrator)
icacls storage /grant Everyone:F /T
icacls bootstrap/cache /grant Everyone:F /T
```

### Step 6: Compile Assets
```bash
# Development
npm run dev

# Production
npm run production
```

### Step 7: Launch Application
```bash
php artisan serve
```

🌐 **Application URL:** [http://localhost:8000](http://localhost:8000)

---

## ⚙️ Configuration

### Required Environment Variables

```env
# Database Configuration
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_username
DB_PASSWORD=your_password

# Wasabi Storage
WASABI_ACCESS_KEY_ID=your_access_key
WASABI_SECRET_ACCESS_KEY=your_secret_key
WASABI_DEFAULT_REGION=us-east-1
WASABI_BUCKET=your_bucket_name

# Zoom API
ZOOM_API_KEY=your_zoom_api_key
ZOOM_API_SECRET=your_zoom_api_secret

# Payment Gateways
RAZORPAY_KEY=your_razorpay_key
RAZORPAY_SECRET=your_razorpay_secret
STRIPE_KEY=your_stripe_publishable_key
STRIPE_SECRET=your_stripe_secret_key

# Real-time Features
PUSHER_APP_ID=your_pusher_app_id
PUSHER_APP_KEY=your_pusher_key
PUSHER_APP_SECRET=your_pusher_secret
```

### Core Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| Laravel Framework | ^9.2 | Core application framework |
| Laravel Passport | ^11.8 | API authentication |
| Laravel Sanctum | ^2.14 | SPA authentication |
| SCORM Package | ^4.0 | E-learning content support |
| Zoom Laravel | ^1.2 | Video conferencing |
| Laravel Datatables | ~9.0 | Advanced tables |
| Pusher PHP | ^7.2 | Real-time features |

---

## 🔐 Admin Panel

The admin panel provides comprehensive platform control:

### 🎛️ **Core Functions**
- **User Management:** Create and manage admin, tutor, and student accounts
- **Tutor Approvals:** Review applications with document verification
- **Course Administration:** Oversee content, monitor progress, manage enrollments
- **Live Class Control:** Configure Zoom settings and virtual classrooms
- **Payment Configuration:** Set up multiple gateways and monitor transactions
- **Analytics & Reporting:** Access detailed performance and revenue reports
- **SCORM Management:** Upload and manage interactive learning content
- **Platform Settings:** Configure system-wide preferences and features

> **🔒 Security Note:** Admin credentials are not included in this repository. Contact the development team for administrative access.

---

## 📁 Project Structure

```
learningspace/
├── app/
│   ├── Http/Controllers/     # Application controllers
│   ├── Models/              # Eloquent models
│   ├── Services/            # Business logic services
│   └── Providers/           # Service providers
├── resources/
│   ├── views/               # Blade templates
│   ├── js/                  # JavaScript files
│   └── sass/                # SCSS stylesheets
├── routes/
│   ├── web.php              # Web routes
│   ├── api.php              # API routes
│   └── channels.php         # Broadcast channels
├── database/
│   ├── migrations/          # Database migrations
│   └── seeders/             # Database seeders
├── public/                  # Public assets
├── storage/                 # File storage and logs
└── lslms.sql               # Database dump file
```

---

## 🤝 Contributing

We welcome contributions! Here's how to get started:

### Development Workflow
1. **Fork** the repository
2. **Create** a feature branch: `git checkout -b feature/amazing-feature`
3. **Commit** your changes: `git commit -m 'Add amazing feature'`
4. **Push** to branch: `git push origin feature/amazing-feature`
5. **Open** a Pull Request

### Code Standards
- Follow **PSR-12** coding standards
- Write **meaningful commit messages**
- Include **tests** for new features
- Update **documentation** as needed
- Ensure **backward compatibility**

### Before Contributing
- Check existing issues and pull requests
- Test your changes thoroughly
- Update relevant documentation
- Follow the established code style

---

## 🐛 Troubleshooting

### Common Issues

| Issue | Solution |
|-------|----------|
| **Permission Errors** | Run `chmod -R 755 storage bootstrap/cache` |
| **Composer Install Fails** | Check PHP version and required extensions |
| **Database Connection** | Verify `.env` database credentials |
| **Assets Not Loading** | Run `npm run dev` or `npm run production` |
| **Zoom Integration Issues** | Verify Zoom API credentials in `.env` |

### Getting Help
- Check the [Issues](https://github.com/Athar-Husain/learningspace/issues) page
- Review Laravel 9 [documentation](https://laravel.com/docs/9.x)
- Contact the development team

---

## 📞 Support

### 📚 Documentation Resources
- [Laravel 9 Documentation](https://laravel.com/docs/9.x)
- [Bootstrap 5 Documentation](https://getbootstrap.com/docs/5.1/)
- [Zoom API Reference](https://marketplace.zoom.us/docs/api-reference/zoom-api)
- [SCORM Implementation Guide](https://scorm.com/scorm-explained/)

### 🐛 Issue Reporting
When reporting issues, please include:
- Detailed reproduction steps
- Error logs and screenshots
- Environment details (PHP version, OS, etc.)
- Expected vs actual behavior

---

## 👨‍💻 Developer

**Athar Husain**  
*Software Developer*

[![GitHub](https://img.shields.io/badge/GitHub-Profile-black?logo=github)](https://github.com/Athar-Husain)

---

<div align="center">

**Built with ❤️ for modern education**

*This application has been crafted with scalability, performance, and extensibility in mind.*  
*Ready for development, customization, and production deployment.*

</div>

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">
<sub>⭐ Star this repository if you find it helpful!</sub>
</div>
