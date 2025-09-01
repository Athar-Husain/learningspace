<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Learning Space LMS - README</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif;
            line-height: 1.6;
            color: #24292f;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background: #ffffff;
        }
        
        .header {
            text-align: center;
            margin-bottom: 40px;
            padding: 40px 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border-radius: 12px;
            box-shadow: 0 8px 32px rgba(0,0,0,0.1);
        }
        
        .header h1 {
            margin: 0;
            font-size: 2.5em;
            font-weight: 700;
            text-shadow: 0 2px 4px rgba(0,0,0,0.3);
        }
        
        .header .subtitle {
            font-size: 1.2em;
            margin-top: 10px;
            opacity: 0.9;
        }
        
        .badges {
            text-align: center;
            margin: 20px 0;
        }
        
        .badge {
            display: inline-block;
            padding: 4px 8px;
            margin: 2px;
            background: #f6f8fa;
            border: 1px solid #d0d7de;
            border-radius: 6px;
            font-size: 12px;
            font-weight: 500;
            color: #24292f;
            text-decoration: none;
        }
        
        .badge.primary {
            background: #2ea043;
            color: white;
            border-color: #2ea043;
        }
        
        .section {
            margin: 40px 0;
            padding: 30px;
            background: #f8f9fa;
            border-radius: 8px;
            border-left: 4px solid #667eea;
        }
        
        .section h2 {
            color: #1f2328;
            font-size: 1.8em;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .section h3 {
            color: #656d76;
            font-size: 1.3em;
            margin: 25px 0 15px 0;
        }
        
        .tech-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin: 20px 0;
        }
        
        .tech-item {
            background: white;
            padding: 15px;
            border-radius: 8px;
            border: 1px solid #d0d7de;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
        }
        
        .tech-item strong {
            color: #667eea;
            display: block;
            margin-bottom: 5px;
        }
        
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 15px;
            margin: 20px 0;
        }
        
        .feature-item {
            background: white;
            padding: 20px;
            border-radius: 8px;
            border: 1px solid #d0d7de;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }
        
        .feature-item:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 16px rgba(0,0,0,0.1);
        }
        
        .feature-item .icon {
            font-size: 1.5em;
            margin-bottom: 10px;
            color: #667eea;
        }
        
        .code-block {
            background: #f6f8fa;
            border: 1px solid #d0d7de;
            border-radius: 6px;
            padding: 16px;
            font-family: 'SFMono-Regular', Consolas, 'Liberation Mono', Menlo, monospace;
            font-size: 14px;
            overflow-x: auto;
            margin: 15px 0;
        }
        
        .command {
            background: #0d1117;
            color: #f0f6fc;
            padding: 12px 16px;
            border-radius: 6px;
            font-family: monospace;
            margin: 10px 0;
            border-left: 3px solid #667eea;
        }
        
        .warning {
            background: #fff8dc;
            border: 1px solid #f1c40f;
            border-radius: 6px;
            padding: 15px;
            margin: 15px 0;
            border-left: 4px solid #f39c12;
        }
        
        .warning .warning-title {
            font-weight: bold;
            color: #e67e22;
            margin-bottom: 5px;
        }
        
        .requirements-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
        }
        
        .requirements-table th,
        .requirements-table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #d0d7de;
        }
        
        .requirements-table th {
            background: #667eea;
            color: white;
            font-weight: 600;
        }
        
        .requirements-table tr:hover {
            background: #f8f9fa;
        }
        
        .contact {
            text-align: center;
            margin-top: 40px;
            padding: 30px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border-radius: 12px;
        }
        
        .contact h3 {
            margin-top: 0;
            font-size: 1.5em;
        }
        
        .contact a {
            color: #ffffff;
            text-decoration: none;
            font-weight: 500;
        }
        
        .contact a:hover {
            text-decoration: underline;
        }
        
        .step {
            background: white;
            margin: 15px 0;
            padding: 20px;
            border-radius: 8px;
            border-left: 4px solid #667eea;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
        }
        
        .step h4 {
            margin: 0 0 10px 0;
            color: #667eea;
            font-size: 1.1em;
        }
        
        .emoji {
            font-size: 1.2em;
            margin-right: 8px;
        }
        
        .toc {
            background: white;
            padding: 20px;
            border-radius: 8px;
            border: 1px solid #d0d7de;
            margin: 20px 0;
        }
        
        .toc ul {
            list-style: none;
            padding-left: 0;
        }
        
        .toc li {
            margin: 8px 0;
        }
        
        .toc a {
            color: #667eea;
            text-decoration: none;
            font-weight: 500;
        }
        
        .toc a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header class="header">
        <h1><span class="emoji">🎓</span>Learning Space LMS</h1>
        <div class="subtitle">Comprehensive Learning Management System for Modern Education</div>
    </header>

    <div class="badges">
        <span class="badge primary">Laravel 9</span>
        <span class="badge">PHP 8.0+</span>
        <span class="badge">MySQL</span>
        <span class="badge">Bootstrap 5</span>
        <span class="badge">Zoom Integration</span>
        <span class="badge">Multi-Payment Gateway</span>
        <span class="badge">SCORM Compatible</span>
    </div>

    <nav class="toc">
        <h3><span class="emoji">📋</span>Table of Contents</h3>
        <ul>
            <li><a href="#overview">🚀 Project Overview</a></li>
            <li><a href="#features">✨ Key Features</a></li>
            <li><a href="#tech-stack">⚙️ Technology Stack</a></li>
            <li><a href="#requirements">📋 System Requirements</a></li>
            <li><a href="#installation">🔧 Installation Guide</a></li>
            <li><a href="#configuration">⚙️ Configuration</a></li>
            <li><a href="#admin-access">🔐 Admin Panel</a></li>
            <li><a href="#contributing">🤝 Contributing</a></li>
            <li><a href="#support">📞 Support</a></li>
        </ul>
    </nav>

    <section id="overview" class="section">
        <h2><span class="emoji">🚀</span>Project Overview</h2>
        <p>Learning Space is a comprehensive Learning Management System designed to facilitate online education with a focus on scalability, user experience, and feature completeness. Built with Laravel 9 and modern web technologies, it provides a robust platform for educational institutions, training organizations, and individual educators.</p>

        <p>The platform supports multiple user roles and provides end-to-end learning experiences from course creation to student certification, with integrated payment processing and live instruction capabilities.</p>
    </section>

    <section id="features" class="section">
        <h2><span class="emoji">✨</span>Key Features</h2>
        <div class="features-grid">
            <div class="feature-item">
                <div class="icon">👥</div>
                <h4>Multi-Role System</h4>
                <p>Comprehensive user management with Admin, Tutor, and Student roles with granular permissions.</p>
            </div>
            <div class="feature-item">
                <div class="icon">📚</div>
                <h4>Course Management</h4>
                <p>Complete course creation, media upload, and content organization with Wasabi cloud storage.</p>
            </div>
            <div class="feature-item">
                <div class="icon">📊</div>
                <h4>Assessment System</h4>
                <p>Advanced quiz and assessment tools with automated grading and detailed analytics.</p>
            </div>
            <div class="feature-item">
                <div class="icon">🎥</div>
                <h4>Live Classes</h4>
                <p>Seamless Zoom integration for real-time virtual classroom experiences.</p>
            </div>
            <div class="feature-item">
                <div class="icon">💳</div>
                <h4>Payment Processing</h4>
                <p>Multiple payment gateways including Razorpay, Stripe, PayPal, Paystack, and more.</p>
            </div>
            <div class="feature-item">
                <div class="icon">📖</div>
                <h4>SCORM Support</h4>
                <p>Industry-standard SCORM compatibility for interactive learning content.</p>
            </div>
            <div class="feature-item">
                <div class="icon">✅</div>
                <h4>Tutor Approval</h4>
                <p>Streamlined tutor onboarding process with admin verification system.</p>
            </div>
            <div class="feature-item">
                <div class="icon">📈</div>
                <h4>Analytics Dashboard</h4>
                <p>Comprehensive reporting and analytics for tracking learning progress and platform usage.</p>
            </div>
        </div>
    </section>

    <section id="tech-stack" class="section">
        <h2><span class="emoji">⚙️</span>Technology Stack</h2>
        <div class="tech-grid">
            <div class="tech-item">
                <strong>Backend Framework</strong>
                <div>Laravel 9 with PHP 8.0+</div>
            </div>
            <div class="tech-item">
                <strong>Frontend</strong>
                <div>Blade Templates + Bootstrap 5</div>
            </div>
            <div class="tech-item">
                <strong>Database</strong>
                <div>MySQL with Eloquent ORM</div>
            </div>
            <div class="tech-item">
                <strong>Cloud Storage</strong>
                <div>Wasabi (S3-Compatible)</div>
            </div>
            <div class="tech-item">
                <strong>Video Integration</strong>
                <div>Zoom API for Live Classes</div>
            </div>
            <div class="tech-item">
                <strong>Real-time Features</strong>
                <div>Laravel Echo + Pusher</div>
            </div>
            <div class="tech-item">
                <strong>Payment Processing</strong>
                <div>Multi-Gateway Support</div>
            </div>
            <div class="tech-item">
                <strong>E-Learning Standards</strong>
                <div>SCORM 1.2/2004 Compatible</div>
            </div>
        </div>
    </section>

    <section id="requirements" class="section">
        <h2><span class="emoji">📋</span>System Requirements</h2>
        <table class="requirements-table">
            <thead>
                <tr>
                    <th>Component</th>
                    <th>Minimum Version</th>
                    <th>Recommended</th>
                    <th>Notes</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>PHP</strong></td>
                    <td>8.0.2</td>
                    <td>8.1.x / 8.2.x</td>
                    <td>Required extensions: OpenSSL, PDO, Mbstring, Tokenizer, XML, Ctype, JSON</td>
                </tr>
                <tr>
                    <td><strong>Node.js</strong></td>
                    <td>14.x</td>
                    <td>18.x LTS</td>
                    <td>For asset compilation and package management</td>
                </tr>
                <tr>
                    <td><strong>MySQL</strong></td>
                    <td>5.7</td>
                    <td>8.0+</td>
                    <td>MariaDB 10.3+ also supported</td>
                </tr>
                <tr>
                    <td><strong>Composer</strong></td>
                    <td>2.0</td>
                    <td>Latest</td>
                    <td>PHP dependency management</td>
                </tr>
                <tr>
                    <td><strong>Web Server</strong></td>
                    <td>Apache 2.4 / Nginx 1.15</td>
                    <td>Latest</td>
                    <td>With mod_rewrite enabled</td>
                </tr>
            </tbody>
        </table>
    </section>

    <section id="installation" class="section">
        <h2><span class="emoji">🔧</span>Installation Guide</h2>

        <div class="warning">
            <div class="warning-title">⚠️ Important Prerequisites</div>
            Before starting the installation, ensure you have the SQL database file (<code>lslms.sql</code>) ready for import. This file contains the initial database structure and sample data.
        </div>

        <div class="step">
            <h4>Step 1: Clone the Repository</h4>
            <div class="command">
                git clone https://github.com/Athar-Husain/learningspace.git<br>
                cd learningspace
            </div>
        </div>

        <div class="step">
            <h4>Step 2: Install Dependencies</h4>
            <div class="command">
                # Install PHP dependencies<br>
                composer install<br><br>
                # Install Node.js dependencies<br>
                npm install
            </div>
        </div>

        <div class="step">
            <h4>Step 3: Environment Configuration</h4>
            <div class="command">
                # Copy environment file<br>
                cp .env.example .env<br><br>
                # Generate application key<br>
                php artisan key:generate
            </div>
            <p>Update your <code>.env</code> file with your database credentials and other configuration settings.</p>
        </div>

        <div class="step">
            <h4>Step 4: Database Setup</h4>
            <div class="command">
                # Import the database (replace with your credentials)<br>
                mysql -u your_username -p your_database_name &lt; lslms.sql<br><br>
                # Alternative: Use phpMyAdmin to import the SQL file
            </div>
        </div>

        <div class="step">
            <h4>Step 5: File Permissions</h4>
            <div class="command">
                # Set proper permissions (Linux/macOS)<br>
                chmod -R 755 storage bootstrap/cache<br>
                chown -R www-data:www-data storage bootstrap/cache
            </div>
        </div>

        <div class="step">
            <h4>Step 6: Asset Compilation</h4>
            <div class="command">
                # Compile assets<br>
                npm run dev<br><br>
                # For production<br>
                npm run production
            </div>
        </div>

        <div class="step">
            <h4>Step 7: Start the Application</h4>
            <div class="command">
                # Start Laravel development server<br>
                php artisan serve<br><br>
                # Application will be available at:<br>
                # 🌐 http://localhost:8000
            </div>
        </div>
    </section>

    <section id="configuration" class="section">
        <h2><span class="emoji">⚙️</span>Configuration</h2>

        <h3>🔐 Required Environment Variables</h3>
        <div class="code-block">

# Database Configuration

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_username
DB_PASSWORD=your_password

# Wasabi Storage Configuration

WASABI_ACCESS_KEY_ID=your_access_key
WASABI_SECRET_ACCESS_KEY=your_secret_key
WASABI_DEFAULT_REGION=us-east-1
WASABI_BUCKET=your_bucket_name

# Zoom API Configuration

ZOOM_API_KEY=your_zoom_api_key
ZOOM_API_SECRET=your_zoom_api_secret

# Payment Gateway Configuration

RAZORPAY_KEY=your_razorpay_key
RAZORPAY_SECRET=your_razorpay_secret
STRIPE_KEY=your_stripe_publishable_key
STRIPE_SECRET=your_stripe_secret_key

# Pusher Configuration (for real-time features)

PUSHER_APP_ID=your_pusher_app_id
PUSHER_APP_KEY=your_pusher_key
PUSHER_APP_SECRET=your_pusher_secret
PUSHER_HOST=
PUSHER_PORT=443
PUSHER_SCHEME=https
</div>

        <h3>📦 Key Package Dependencies</h3>
        <table class="requirements-table">
            <thead>
                <tr>
                    <th>Package</th>
                    <th>Version</th>
                    <th>Purpose</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Laravel Framework</td>
                    <td>^9.2</td>
                    <td>Core application framework</td>
                </tr>
                <tr>
                    <td>Laravel Passport</td>
                    <td>^11.8</td>
                    <td>API authentication</td>
                </tr>
                <tr>
                    <td>Laravel Sanctum</td>
                    <td>^2.14</td>
                    <td>SPA authentication</td>
                </tr>
                <tr>
                    <td>SCORM Package</td>
                    <td>^4.0</td>
                    <td>E-learning content support</td>
                </tr>
                <tr>
                    <td>Zoom Laravel</td>
                    <td>^1.2</td>
                    <td>Video conferencing integration</td>
                </tr>
                <tr>
                    <td>Laravel Datatables</td>
                    <td>~9.0</td>
                    <td>Advanced table management</td>
                </tr>
                <tr>
                    <td>Pusher PHP Server</td>
                    <td>^7.2</td>
                    <td>Real-time notifications</td>
                </tr>
            </tbody>
        </table>
    </section>

    <section id="admin-access" class="section">
        <h2><span class="emoji">🔐</span>Admin Panel Access</h2>
        <p>The admin panel provides comprehensive control over the entire LMS platform:</p>

        <div class="features-grid">
            <div class="feature-item">
                <div class="icon">👨‍💼</div>
                <h4>User Management</h4>
                <p>Create, edit, and manage admin, tutor, and student accounts with role-based permissions.</p>
            </div>
            <div class="feature-item">
                <div class="icon">✅</div>
                <h4>Tutor Approvals</h4>
                <p>Review and approve tutor applications with document verification.</p>
            </div>
            <div class="feature-item">
                <div class="icon">📚</div>
                <h4>Course Administration</h4>
                <p>Oversee all courses, manage content, and monitor student progress.</p>
            </div>
            <div class="feature-item">
                <div class="icon">🎥</div>
                <h4>Live Class Control</h4>
                <p>Configure Zoom settings, schedule classes, and manage virtual classrooms.</p>
            </div>
            <div class="feature-item">
                <div class="icon">💰</div>
                <h4>Payment Configuration</h4>
                <p>Set up and manage multiple payment gateways and transaction monitoring.</p>
            </div>
            <div class="feature-item">
                <div class="icon">📊</div>
                <h4>Analytics & Reporting</h4>
                <p>Access detailed reports on user activity, course performance, and revenue.</p>
            </div>
        </div>

        <div class="warning">
            <div class="warning-title">🔒 Security Notice</div>
            Admin credentials are not included in this repository for security reasons. Please contact the development team or refer to internal documentation for administrative access.
        </div>
    </section>

    <section id="contributing" class="section">
        <h2><span class="emoji">🤝</span>Contributing</h2>
        <p>We welcome contributions to improve Learning Space LMS! Here's how you can help:</p>

        <h3>Development Workflow</h3>
        <ol>
            <li><strong>Fork</strong> the repository</li>
            <li><strong>Create</strong> a feature branch (<code>git checkout -b feature/amazing-feature</code>)</li>
            <li><strong>Commit</strong> your changes (<code>git commit -m 'Add amazing feature'</code>)</li>
            <li><strong>Push</strong> to the branch (<code>git push origin feature/amazing-feature</code>)</li>
            <li><strong>Open</strong> a Pull Request</li>
        </ol>

        <h3>Code Standards</h3>
        <ul>
            <li>Follow PSR-12 coding standards for PHP</li>
            <li>Write meaningful commit messages</li>
            <li>Include tests for new features</li>
            <li>Update documentation as needed</li>
        </ul>
    </section>

    <section id="support" class="section">
        <h2><span class="emoji">📞</span>Support & Documentation</h2>

        <h3>🐛 Issue Reporting</h3>
        <p>If you encounter any bugs or have feature requests, please:</p>
        <ul>
            <li>Check existing issues first</li>
            <li>Provide detailed reproduction steps</li>
            <li>Include error logs and screenshots when applicable</li>
            <li>Specify your environment details (PHP version, OS, etc.)</li>
        </ul>

        <h3>📚 Additional Resources</h3>
        <ul>
            <li><a href="https://laravel.com/docs/9.x" target="_blank">Laravel 9 Documentation</a></li>
            <li><a href="https://getbootstrap.com/docs/5.1/" target="_blank">Bootstrap 5 Documentation</a></li>
            <li><a href="https://marketplace.zoom.us/docs/api-reference/zoom-api" target="_blank">Zoom API Documentation</a></li>
        </ul>
    </section>

    <footer class="contact">
        <h3><span class="emoji">👨‍💻</span>Developer Contact</h3>
        <p>
            <strong>Athar Husain</strong><br>
            Software Developer<br>
            <a href="https://github.com/Athar-Husain">GitHub Profile</a>
        </p>
        <p>
            <em>This application has been crafted with scalability, performance, and extensibility in mind.
            It's ready for further development or production deployment as needed.</em>
        </p>
    </footer>

    <script>
        // Smooth scrolling for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });

        // Add copy functionality to code blocks
        document.querySelectorAll('.command, .code-block').forEach(block => {
            block.addEventListener('click', function() {
                navigator.clipboard.writeText(this.textContent).then(() => {
                    const originalBg = this.style.backgroundColor;
                    this.style.backgroundColor = '#28a745';
                    setTimeout(() => {
                        this.style.backgroundColor = originalBg;
                    }, 200);
                });
            });
            block.style.cursor = 'pointer';
            block.title = 'Click to copy';
        });

        // Add loading animation for feature items
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, observerOptions);

        document.querySelectorAll('.feature-item, .tech-item').forEach(item => {
            item.style.opacity = '0';
            item.style.transform = 'translateY(20px)';
            item.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
            observer.observe(item);
        });
    </script>

</body>
</html>
