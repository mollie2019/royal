<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Royal Lux Beauty Club | Luxury Beauty Experience</title>

    <meta name="description" content="Royal Lux Beauty Club offers premium barbering, beauty services, memberships and luxury products." />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet" />

    <style>
        /* ============================================================
           ROYAL LUX BEAUTY CLUB - COMPLETE STYLES
           ============================================================ */

        :root {
            --gold: #c9a84c;
            --gold-light: #f1d77a;
            --black: #070707;
            --dark: #111111;
            --card: #171717;
            --text: #ffffff;
            --muted: #a7a7a7;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: radial-gradient(circle at top, rgba(201, 168, 76, 0.18), transparent 35%), var(--black);
            color: var(--text);
            font-family: "Montserrat", sans-serif;
            line-height: 1.6;
        }

        h1,
        h2,
        h3 {
            font-family: "Playfair Display", serif;
        }

        /* ---------- HEADER ---------- */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 8%;
            z-index: 1000;
            background: rgba(7, 7, 7, 0.75);
            backdrop-filter: blur(15px);
            border-bottom: 1px solid rgba(201, 168, 76, 0.15);
            transition: box-shadow 0.3s ease;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 12px;
            text-decoration: none;
            color: white;
            font-family: "Playfair Display", serif;
            font-size: 25px;
            letter-spacing: 2px;
        }

        .logo img {
            width: 45px;
            height: 45px;
            object-fit: contain;
            background: #c9a84c;
            border-radius: 50%;
            padding: 5px;
        }

        /* Logo fallback when image is missing */
        .logo-fallback {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 45px;
            height: 45px;
            background: linear-gradient(135deg, var(--gold), var(--gold-light));
            border-radius: 50%;
            font-size: 18px;
            font-weight: 700;
            color: #070707;
        }

        .navigation {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .navigation a {
            color: #ddd;
            text-decoration: none;
            transition: 0.3s;
            font-size: 14px;
            font-weight: 500;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .navigation a:hover {
            color: var(--gold);
        }

        /* ---------- BUTTONS ---------- */
        .gold-btn {
            background: linear-gradient(135deg, var(--gold), var(--gold-light));
            border: none;
            color: #080808;
            padding: 14px 30px;
            border-radius: 50px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s ease;
            font-family: "Montserrat", sans-serif;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-size: 13px;
        }

        .gold-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(201, 168, 76, 0.35);
        }

        .outline-btn {
            background: transparent;
            color: var(--gold);
            border: 2px solid var(--gold);
            padding: 12px 28px;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-family: "Montserrat", sans-serif;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-size: 13px;
            font-weight: 600;
        }

        .outline-btn:hover {
            background: var(--gold);
            color: #080808;
            transform: translateY(-3px);
        }

        /* ---------- HERO ---------- */
        .hero {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: relative;
            overflow: hidden;
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.9)),
                url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Crect width='100' height='100' fill='%231a1a1a'/%3E%3Ccircle cx='50' cy='50' r='40' fill='none' stroke='%23c9a84c' stroke-width='0.5' opacity='0.1'/%3E%3C/svg%3E");
            background-size: cover;
            background-position: center;
        }

        .hero::before {
            content: "";
            position: absolute;
            inset: -50%;
            background: conic-gradient(transparent, rgba(201, 168, 76, 0.25), transparent 30%);
            animation: rotate 12s linear infinite;
        }

        @keyframes rotate {
            to {
                transform: rotate(360deg);
            }
        }

        .hero-content {
            position: relative;
            max-width: 900px;
            padding: 20px;
            z-index: 2;
        }

        .hero h1 {
            font-size: 80px;
            line-height: 1;
            font-weight: 700;
        }

        .hero h1 span {
            display: block;
            color: var(--gold);
            font-size: 45px;
            letter-spacing: 8px;
            font-weight: 500;
        }

        .hero p {
            color: #ccc;
            font-size: 20px;
            margin: 30px auto;
            max-width: 650px;
            font-weight: 300;
        }

        .hero-buttons {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
        }

        /* ---------- SECTIONS ---------- */
        .section {
            padding: 100px 8%;
            text-align: center;
        }

        .section h2,
        .membership h2 {
            font-size: 50px;
            color: var(--gold);
            margin-bottom: 20px;
        }

        .subtitle {
            color: var(--muted);
            margin-bottom: 50px;
            font-size: 18px;
            font-weight: 300;
        }

        /* ---------- CARDS ---------- */
        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }

        .card {
            background: linear-gradient(145deg, #111, #1d1d1d);
            border: 1px solid rgba(201, 168, 76, 0.2);
            border-radius: 25px;
            padding: 35px;
            transition: all 0.4s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            border-color: var(--gold);
            box-shadow: 0 0 40px rgba(201, 168, 76, 0.1);
        }

        .card h3 {
            font-size: 28px;
            margin-bottom: 15px;
            color: var(--gold);
        }

        .card p {
            color: #aaa;
            margin-bottom: 20px;
        }

        .card strong {
            color: var(--gold);
            font-size: 24px;
        }

        /* ---------- MEMBERSHIP ---------- */
        .membership {
            padding: 100px 8%;
            background: #0d0d0d;
            text-align: center;
        }

        .membership-card {
            max-width: 420px;
            margin: auto;
            padding: 50px;
            border-radius: 30px;
            background: linear-gradient(145deg, #191919, #090909);
            border: 1px solid var(--gold);
            transition: all 0.4s ease;
        }

        .membership-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 60px rgba(201, 168, 76, 0.15);
        }

        .membership-card h3 {
            font-size: 32px;
            color: var(--gold);
            margin-bottom: 10px;
        }

        .price {
            font-size: 45px;
            color: var(--gold);
            margin: 20px 0;
            font-weight: 700;
        }

        .membership-card ul {
            list-style: none;
            margin: 25px 0;
        }

        .membership-card li {
            padding: 10px;
            color: #ddd;
            position: relative;
            padding-left: 30px;
        }

        .membership-card li::before {
            content: "✦";
            position: absolute;
            left: 0;
            color: var(--gold);
        }

        /* ---------- BOOKING ---------- */
        .booking form {
            max-width: 600px;
            margin: auto;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        input,
        select {
            padding: 16px;
            border-radius: 10px;
            background: #111;
            border: 1px solid #333;
            color: white;
            font-family: "Montserrat", sans-serif;
            font-size: 15px;
            transition: border-color 0.3s ease;
        }

        input:focus,
        select:focus {
            outline: none;
            border-color: var(--gold);
        }

        input::placeholder {
            color: #666;
        }

        select option {
            background: #111;
        }

        /* ---------- FOOTER ---------- */
        footer {
            padding: 50px;
            text-align: center;
            background: #050505;
            border-top: 1px solid rgba(201, 168, 76, 0.2);
        }

        footer h3 {
            color: var(--gold);
            font-size: 28px;
            margin-bottom: 5px;
        }

        footer p {
            color: #666;
            font-size: 14px;
            margin-bottom: 3px;
        }

        /* ---------- HAMBURGER MENU ---------- */
        .hamburger {
            display: none;
            background: transparent;
            border: 2px solid var(--gold);
            color: var(--gold);
            font-size: 28px;
            padding: 5px 15px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-family: "Montserrat", sans-serif;
        }

        .hamburger:hover {
            background: rgba(201, 168, 76, 0.1);
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 768px) {
            .navigation {
                display: none;
                flex-direction: column;
                position: absolute;
                top: 80px;
                left: 0;
                width: 100%;
                background: rgba(7, 7, 7, 0.95);
                padding: 30px 8%;
                backdrop-filter: blur(15px);
                border-bottom: 1px solid rgba(201, 168, 76, 0.15);
                gap: 20px;
                z-index: 999;
            }

            .navigation.active {
                display: flex;
            }

            .hamburger {
                display: block;
            }

            .hero h1 {
                font-size: 50px;
            }

            .hero h1 span {
                font-size: 30px;
                letter-spacing: 4px;
            }

            .hero p {
                font-size: 16px;
                padding: 0 20px;
            }

            .section h2,
            .membership h2 {
                font-size: 35px;
            }

            .hero-buttons {
                flex-direction: column;
                align-items: center;
            }

            .cards {
                grid-template-columns: 1fr;
            }

            .membership-card {
                padding: 30px 20px;
                margin: 0 20px;
            }

            .booking form {
                padding: 0 20px;
            }

            .logo {
                font-size: 20px;
            }

            .logo img,
            .logo-fallback {
                width: 35px;
                height: 35px;
                font-size: 14px;
            }
        }

        @media (max-width: 480px) {
            .hero h1 {
                font-size: 38px;
            }

            .hero h1 span {
                font-size: 24px;
            }

            .section {
                padding: 60px 5%;
            }

            .membership {
                padding: 60px 5%;
            }

            .card {
                padding: 25px 20px;
            }

            .gold-btn,
            .outline-btn {
                padding: 12px 24px;
                font-size: 12px;
            }
        }
    </style>
</head>

<body>
    <!-- ============================================================
    HEADER
    ============================================================ -->
    <header class="header">
        <a class="logo" href="#">
            <!-- Logo Fallback (works without image) -->
            <div class="logo-fallback">RL</div>
            <span>ROYAL LUX</span>
        </a>

        <button class="hamburger" aria-label="Toggle navigation">☰</button>

        <nav class="navigation">
            <a href="#services">Services</a>
            <a href="#membership">Membership</a>
            <a href="#shop">Shop</a>
            <a href="#booking">Book</a>
            <button class="gold-btn">Login</button>
        </nav>
    </header>

    <!-- ============================================================
    HERO
    ============================================================ -->
    <section class="hero">
        <div class="hero-content">
            <h1>
                Royal Lux
                <span>Beauty Club</span>
            </h1>
            <p>
                A premium destination where grooming, beauty,
                confidence and luxury meet.
            </p>
            <div class="hero-buttons">
                <button class="gold-btn" onclick="document.getElementById('booking').scrollIntoView({behavior:'smooth'})">
                    Book Appointment
                </button>
                <button class="outline-btn" onclick="document.getElementById('membership').scrollIntoView({behavior:'smooth'})">
                    View Membership
                </button>
            </div>
        </div>
    </section>

    <!-- ============================================================
    SERVICES
    ============================================================ -->
    <section id="services" class="section">
        <h2>Premium Services</h2>
        <p class="subtitle">Designed for men and women who expect excellence.</p>

        <div class="cards">
            <article class="card">
                <h3>Signature Haircut</h3>
                <p>Professional haircut, styling and finishing.</p>
                <strong>Starting at $25</strong>
            </article>

            <article class="card">
                <h3>Beard Experience</h3>
                <p>Shape, detail and premium grooming treatment.</p>
                <strong>Starting at $20</strong>
            </article>

            <article class="card">
                <h3>Beauty Treatments</h3>
                <p>Luxury skin, nails, lashes and wellness services.</p>
                <strong>Contact for pricing</strong>
            </article>
        </div>
    </section>

    <!-- ============================================================
    MEMBERSHIP
    ============================================================ -->
    <section id="membership" class="membership">
        <h2>Royal Membership</h2>

        <div class="membership-card">
            <h3>VIP Member</h3>
            <div class="price">$100/month</div>

            <ul>
                <li>Priority booking</li>
                <li>Exclusive discounts</li>
                <li>Member rewards</li>
                <li>Special offers</li>
            </ul>

            <button class="gold-btn" id="joinBtn">Join Now</button>
        </div>
    </section>

    <!-- ============================================================
    BOOKING
    ============================================================ -->
    <section id="booking" class="section booking">
        <h2>Book Your Experience</h2>

        <form>
            <input type="text" placeholder="Full Name" required />
            <input type="tel" placeholder="Phone Number" required />
            <select required>
                <option value="">Choose Service</option>
                <option value="Haircut">Haircut</option>
                <option value="Beard Grooming">Beard Grooming</option>
                <option value="Beauty Service">Beauty Service</option>
            </select>
            <input type="date" required />
            <button class="gold-btn" type="submit">Confirm Booking</button>
        </form>
    </section>

    <!-- ============================================================
    FOOTER
    ============================================================ -->
    <footer>
        <h3>Royal Lux Beauty Club</h3>
        <p>Luxury beauty. Premium experience.</p>
        <p>© 2026 Royal Lux Beauty Club</p>
    </footer>

    <!-- ============================================================
    JAVASCRIPT
    ============================================================ -->
    <script>
        document.addEventListener("DOMContentLoaded", function() {

            console.log("👑 Royal Lux Beauty Club Loaded");

            // ----------------------------------------------------------
            // 1. HAMBURGER MENU
            // ----------------------------------------------------------
            var hamburger = document.querySelector(".hamburger");
            var navigation = document.querySelector(".navigation");

            if (hamburger && navigation) {
                hamburger.addEventListener("click", function() {
                    navigation.classList.toggle("active");
                    this.textContent = navigation.classList.contains("active") ? "✕" : "☰";
                });

                navigation.querySelectorAll("a").forEach(function(link) {
                    link.addEventListener("click", function() {
                        navigation.classList.remove("active");
                        if (hamburger) hamburger.textContent = "☰";
                    });
                });
            }

            // ----------------------------------------------------------
            // 2. SMOOTH SCROLLING
            // ----------------------------------------------------------
            document.querySelectorAll("a[href^='#']").forEach(function(link) {
                link.addEventListener("click", function(e) {
                    var target = document.querySelector(this.getAttribute("href"));
                    if (target) {
                        e.preventDefault();
                        var headerHeight = document.querySelector(".header")?.offsetHeight || 80;
                        var targetPosition = target.getBoundingClientRect().top +
                            window.pageYOffset - headerHeight - 20;
                        window.scrollTo({
                            top: targetPosition,
                            behavior: "smooth"
                        });
                    }
                });
            });

            // ----------------------------------------------------------
            // 3. BOOKING FORM
            // ----------------------------------------------------------
            var bookingForm = document.querySelector(".booking form");

            if (bookingForm) {
                bookingForm.addEventListener("submit", function(e) {
                    e.preventDefault();

                    var name = this.querySelector('input[type="text"]')?.value?.trim() || "";
                    var phone = this.querySelector('input[type="tel"]')?.value?.trim() || "";
                    var service = this.querySelector("select")?.value || "";
                    var date = this.querySelector('input[type="date"]')?.value || "";

                    if (!name) {
                        alert("❌ Please enter your full name.");
                        this.querySelector('input[type="text"]')?.focus();
                        return;
                    }

                    if (!phone) {
                        alert("❌ Please enter your phone number.");
                        this.querySelector('input[type="tel"]')?.focus();
                        return;
                    }

                    if (!service || service === "Choose Service") {
                        alert("❌ Please select a service.");
                        this.querySelector("select")?.focus();
                        return;
                    }

                    if (!date) {
                        alert("❌ Please select a date.");
                        this.querySelector('input[type="date"]')?.focus();
                        return;
                    }

                    alert(
                        "✅ Thank you, " + name + "!\n\n" +
                        "Your " + service + " appointment has been booked for " + date + ".\n" +
                        "We'll contact you at " + phone + " to confirm.\n\n" +
                        "✨ Royal Lux Beauty Club - Luxury beauty. Premium experience."
                    );

                    this.reset();
                });
            }

            // ----------------------------------------------------------
            // 4. MEMBERSHIP JOIN
            // ----------------------------------------------------------
            var joinBtn = document.getElementById("joinBtn");
            if (joinBtn) {
                joinBtn.addEventListener("click", function() {
                    alert(
                        "👑 Royal Membership\n\n" +
                        "VIP Member Benefits:\n" +
                        "• Priority booking\n" +
                        "• Exclusive discounts\n" +
                        "• Member rewards\n" +
                        "• Special offers\n\n" +
                        "✨ Please visit us in-store to complete your registration."
                    );
                });
            }

            // ----------------------------------------------------------
            // 5. STICKY HEADER SHADOW
            // ----------------------------------------------------------
            var header = document.querySelector(".header");
            window.addEventListener("scroll", function() {
                if (window.scrollY > 50) {
                    header.style.boxShadow = "0 4px 30px rgba(0, 0, 0, 0.8)";
                } else {
                    header.style.boxShadow = "none";
                }
            });

            // ----------------------------------------------------------
            // 6. SCROLL REVEAL ANIMATION
            // ----------------------------------------------------------
            var observer = new IntersectionObserver(
                function(entries) {
                    entries.forEach(function(entry) {
                        if (entry.isIntersecting) {
                            entry.target.style.opacity = "1";
                            entry.target.style.transform = "translateY(0)";
                            if (entry.target.classList.contains("card")) {
                                entry.target.style.boxShadow = "0 0 30px rgba(201,168,76,.1)";
                            }
                        }
                    });
                }, {
                    threshold: 0.15,
                    rootMargin: "0px 0px -50px 0px"
                }
            );

            document.querySelectorAll(".card, .membership-card").forEach(function(card) {
                card.style.opacity = "0";
                card.style.transform = "translateY(40px)";
                card.style.transition = "all 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94)";
                observer.observe(card);
            });

            // ----------------------------------------------------------
            // 7. DYNAMIC FOOTER YEAR
            // ----------------------------------------------------------
            var footer = document.querySelector("footer");
            if (footer) {
                var yearP = footer.querySelector("p:last-child");
                if (yearP && yearP.textContent.includes("2026")) {
                    var currentYear = new Date().getFullYear();
                    yearP.textContent = "© " + currentYear + " Royal Lux Beauty Club";
                }
            }

            // ----------------------------------------------------------
            // 8. CONSOLE WELCOME
            // ----------------------------------------------------------
            console.log("%c✨ Royal Lux Beauty Club ✨", "font-size: 20px; color: #c9a84c; font-weight: bold;");
            console.log("%c👑 Luxury beauty. Premium experience.", "font-size: 14px; color: #a7a7a7;");

        });
    </script>

</body>
</html>
