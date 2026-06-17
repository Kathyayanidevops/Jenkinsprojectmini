<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Vivid — Minimal E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ---------- reset & base ---------- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Space Grotesk', sans-serif;
            background: #faf9f8;
            color: #1c1c1c;
            line-height: 1.5;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            max-width: 100%;
            display: block;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ---------- buttons & badges ---------- */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.95rem;
            border: none;
            cursor: pointer;
            transition: 0.2s ease;
            background: #1c1c1c;
            color: #fff;
        }

        .btn-outline {
            background: transparent;
            border: 2px solid #1c1c1c;
            color: #1c1c1c;
        }

        .btn-outline:hover {
            background: #1c1c1c;
            color: #fff;
        }

        .btn-primary {
            background: #f05454;
            color: #fff;
        }

        .btn-primary:hover {
            background: #d94343;
            transform: scale(0.97);
        }

        .badge {
            display: inline-block;
            background: #f05454;
            color: #fff;
            font-size: 0.7rem;
            font-weight: 600;
            padding: 4px 12px;
            border-radius: 40px;
            letter-spacing: 0.3px;
        }

        /* ---------- header ---------- */
        header {
            background: #fff;
            border-bottom: 1px solid #f0eeec;
            position: sticky;
            top: 0;
            z-index: 50;
            backdrop-filter: blur(6px);
            background: rgba(255, 255, 255, 0.9);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 0;
        }

        .logo {
            font-weight: 700;
            font-size: 1.6rem;
            letter-spacing: -0.5px;
        }

        .logo span {
            color: #f05454;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            list-style: none;
            font-weight: 500;
        }

        .nav-links a {
            transition: color 0.2s;
        }

        .nav-links a:hover {
            color: #f05454;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 18px;
        }

        .header-actions .icon-btn {
            font-size: 1.2rem;
            background: transparent;
            border: none;
            cursor: pointer;
            color: #1c1c1c;
            transition: color 0.2s;
        }

        .header-actions .icon-btn:hover {
            color: #f05454;
        }

        .cart-wrap {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -10px;
            right: -10px;
            background: #f05454;
            color: #fff;
            font-size: 0.65rem;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 1.4rem;
            cursor: pointer;
        }

        /* ---------- hero ---------- */
        .hero {
            padding: 60px 0 48px;
            background: #fff;
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            align-items: center;
        }

        .hero-content h1 {
            font-size: 3.2rem;
            font-weight: 700;
            line-height: 1.2;
            letter-spacing: -1px;
        }

        .hero-content h1 span {
            color: #f05454;
        }

        .hero-content p {
            margin: 20px 0 32px;
            font-size: 1.1rem;
            color: #5a5a5a;
            max-width: 440px;
        }

        .hero-actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        .hero-image img {
            border-radius: 32px;
            box-shadow: 0 30px 50px -20px rgba(0, 0, 0, 0.15);
            width: 100%;
            height: auto;
        }

        /* ---------- section titles ---------- */
        .section-title {
            font-size: 2rem;
            font-weight: 600;
            letter-spacing: -0.5px;
        }

        .section-desc {
            color: #6b6b6b;
            margin-top: 4px;
        }

        .section-head {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            margin-bottom: 28px;
            flex-wrap: wrap;
            gap: 12px;
        }

        /* ---------- categories ---------- */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }

        .cat-card {
            background: #fff;
            border-radius: 20px;
            padding: 24px 12px;
            text-align: center;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
            transition: 0.2s ease;
            border: 1px solid #f0eeec;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-4px);
            border-color: #f05454;
            box-shadow: 0 12px 24px -12px rgba(240, 84, 84, 0.2);
        }

        .cat-card .icon {
            font-size: 2rem;
            color: #f05454;
            margin-bottom: 6px;
        }

        .cat-card h4 {
            font-weight: 600;
            font-size: 0.95rem;
        }

        /* ---------- products ---------- */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }

        .product-card {
            background: #fff;
            border-radius: 24px;
            overflow: hidden;
            border: 1px solid #f0eeec;
            transition: 0.2s ease;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 40px -16px rgba(0, 0, 0, 0.08);
        }

        .product-card img {
            height: 200px;
            width: 100%;
            object-fit: cover;
        }

        .product-body {
            padding: 16px 18px 18px;
        }

        .product-body .product-title {
            font-weight: 600;
            font-size: 1rem;
        }

        .product-body .product-cat {
            font-size: 0.8rem;
            color: #7a7a7a;
            margin-top: 2px;
        }

        .product-meta {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 12px;
        }

        .product-price {
            font-weight: 700;
            font-size: 1.2rem;
        }

        .product-price .old {
            font-weight: 400;
            font-size: 0.85rem;
            color: #999;
            text-decoration: line-through;
            margin-left: 6px;
        }

        .product-rating {
            color: #f5b342;
            font-size: 0.85rem;
        }

        .product-actions {
            padding: 0 18px 18px;
            display: flex;
            gap: 10px;
        }

        .product-actions .add-btn {
            flex: 1;
            background: #1c1c1c;
            color: #fff;
            border: none;
            padding: 10px 0;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            font-size: 0.9rem;
        }

        .product-actions .add-btn:hover {
            background: #f05454;
        }

        .product-actions .wish-btn {
            background: transparent;
            border: 1px solid #e0dedc;
            border-radius: 40px;
            width: 44px;
            cursor: pointer;
            transition: 0.2s;
            font-size: 1rem;
        }

        .product-actions .wish-btn:hover {
            border-color: #f05454;
            color: #f05454;
        }

        /* ---------- deal banner ---------- */
        .deal-banner {
            background: #1c1c1c;
            border-radius: 32px;
            padding: 40px 48px;
            color: #fff;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
        }

        .deal-banner .deal-text h2 {
            font-size: 2rem;
            letter-spacing: -0.5px;
        }

        .deal-banner .deal-text p {
            opacity: 0.7;
            margin-top: 4px;
        }

        .deal-timer {
            display: flex;
            gap: 18px;
        }

        .time-unit {
            background: rgba(255, 255, 255, 0.08);
            padding: 12px 18px;
            border-radius: 16px;
            text-align: center;
            min-width: 68px;
        }

        .time-unit .num {
            font-size: 1.8rem;
            font-weight: 700;
            line-height: 1;
        }

        .time-unit .label {
            font-size: 0.7rem;
            opacity: 0.6;
            text-transform: uppercase;
            margin-top: 4px;
        }

        .deal-price {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 8px;
        }

        .deal-price .current {
            font-size: 2rem;
            font-weight: 700;
        }

        .deal-price .old {
            font-size: 1rem;
            opacity: 0.5;
            text-decoration: line-through;
        }

        .deal-banner .btn {
            background: #f05454;
            color: #fff;
            padding: 12px 32px;
        }

        .deal-banner .btn:hover {
            background: #d94343;
        }

        /* ---------- testimonials ---------- */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
        }

        .testimonial-card {
            background: #fff;
            padding: 24px;
            border-radius: 24px;
            border: 1px solid #f0eeec;
        }

        .testimonial-card .stars {
            color: #f5b342;
            font-size: 0.9rem;
            margin-bottom: 8px;
        }

        .testimonial-card p {
            font-size: 0.95rem;
            color: #2c2c2c;
        }

        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 16px;
        }

        .testimonial-card .author img {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
        }

        .testimonial-card .author .name {
            font-weight: 600;
        }

        .testimonial-card .author .role {
            font-size: 0.8rem;
            color: #7a7a7a;
        }

        /* ---------- newsletter ---------- */
        .newsletter-box {
            background: #faf9f8;
            border-radius: 32px;
            padding: 48px 32px;
            text-align: center;
            border: 1px solid #f0eeec;
        }

        .newsletter-box h3 {
            font-size: 1.8rem;
            font-weight: 600;
        }

        .newsletter-box p {
            color: #5a5a5a;
            margin: 6px 0 24px;
        }

        .newsletter-box form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
        }

        .newsletter-box input {
            padding: 14px 20px;
            border-radius: 60px;
            border: 1px solid #e0dedc;
            background: #fff;
            min-width: 280px;
            font-family: inherit;
            outline: none;
        }

        .newsletter-box input:focus {
            border-color: #f05454;
        }

        .newsletter-box .btn {
            background: #1c1c1c;
        }

        .newsletter-box .btn:hover {
            background: #f05454;
        }

        /* ---------- footer ---------- */
        footer {
            padding: 48px 0 24px;
            border-top: 1px solid #f0eeec;
            margin-top: 32px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 32px;
        }

        .footer-brand p {
            color: #6b6b6b;
            margin-top: 8px;
            max-width: 300px;
        }

        .footer-social {
            display: flex;
            gap: 14px;
            margin-top: 16px;
        }

        .footer-social a {
            font-size: 1.2rem;
            color: #4a4a4a;
            transition: color 0.2s;
        }

        .footer-social a:hover {
            color: #f05454;
        }

        .footer-col h5 {
            font-weight: 600;
            margin-bottom: 12px;
        }

        .footer-col ul {
            list-style: none;
        }

        .footer-col li {
            margin-bottom: 8px;
            color: #6b6b6b;
            cursor: default;
        }

        .footer-col li:hover {
            color: #1c1c1c;
        }

        .footer-bottom {
            text-align: center;
            margin-top: 32px;
            color: #8a8a8a;
            font-size: 0.85rem;
            border-top: 1px solid #f0eeec;
            padding-top: 24px;
        }

        /* ---------- responsive ---------- */
        @media (max-width: 1024px) {
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .hero-grid {
                grid-template-columns: 1fr;
                text-align: center;
            }
            .hero-content p {
                margin-left: auto;
                margin-right: auto;
            }
            .hero-actions {
                justify-content: center;
            }
            .testimonials-grid {
                grid-template-columns: 1fr 1fr;
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }
            .mobile-toggle {
                display: block;
            }
            .hero-content h1 {
                font-size: 2.4rem;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .products-grid {
                grid-template-columns: 1fr 1fr;
            }
            .testimonials-grid {
                grid-template-columns: 1fr;
            }
            .deal-banner {
                flex-direction: column;
                text-align: center;
                padding: 32px 24px;
            }
            .deal-timer {
                justify-content: center;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 24px;
            }
        }

        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr;
            }
            .categories-grid {
                grid-template-columns: 1fr 1fr;
            }
            .hero-content h1 {
                font-size: 2rem;
            }
            .deal-timer {
                gap: 10px;
            }
            .time-unit {
                min-width: 56px;
                padding: 10px 12px;
            }
            .time-unit .num {
                font-size: 1.4rem;
            }
        }
    </style>
</head>

<body>

    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:20px;">
                <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
                <a href="#" class="logo">vivid<span>.</span></a>
            </div>
            <ul class="nav-links">
                <li><a href="#">Home</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#products">Products</a></li>
                <li><a href="#deals">Deals</a></li>
            </ul>
            <div class="header-actions">
                <button class="icon-btn"><i class="far fa-user"></i></button>
                <button class="icon-btn"><i class="far fa-heart"></i></button>
                <div class="cart-wrap">
                    <button class="icon-btn"><i class="fas fa-shopping-bag"></i></button>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
            </div>
        </div>
        <!-- mobile menu -->
        <div id="mobileMenu" style="display:none; background:#fff; border-top:1px solid #f0eeec; padding:16px 0;">
            <div class="container" style="display:flex; flex-direction:column; gap:12px;">
                <a href="#">Home</a>
                <a href="#categories">Categories</a>
                <a href="#products">Products</a>
                <a href="#deals">Deals</a>
            </div>
        </div>
    </header>

    <main>
        <!-- hero -->
        <section class="hero">
            <div class="container hero-grid">
                <div class="hero-content">
                    <h1>Style that <span>speaks</span><br>for itself.</h1>
                    <p>Curated essentials for the modern minimalist. From fashion to tech — discover quality pieces that last.</p>
                    <div class="hero-actions">
                        <button class="btn btn-primary" id="shopNow">Explore <i class="fas fa-arrow-right"></i></button>
                        <button class="btn btn-outline" id="exploreDeals">View deals</button>
                    </div>
                </div>
                <div class="hero-image">
                    <img src="https://images.unsplash.com/photo-1556741533-6e6a62bd8b49?auto=format&fit=crop&w=800&q=80" alt="hero collection">
                </div>
            </div>
        </section>

        <!-- categories -->
        <section class="container" id="categories" style="padding:40px 0;">
            <div class="section-head">
                <div>
                    <h2 class="section-title">Browse categories</h2>
                    <p class="section-desc">Shop by what you love.</p>
                </div>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <!-- products -->
        <section class="container" id="products" style="padding:40px 0;">
            <div class="section-head">
                <div>
                    <h2 class="section-title">Editor's picks</h2>
                    <p class="section-desc">Handpicked just for you.</p>
                </div>
                <span style="color:#f05454; font-weight:600; cursor:default;">view all →</span>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- deals -->
        <section class="container" id="deals" style="padding:40px 0;">
            <div class="section-head">
                <div>
                    <h2 class="section-title">Flash deal</h2>
                    <p class="section-desc">Hurry — limited stock.</p>
                </div>
            </div>
            <div class="deal-banner">
                <div class="deal-text">
                    <h2>AirPods Pro 2</h2>
                    <p>Immersive sound, active noise cancellation.</p>
                    <div class="deal-price">
                        <span class="current">$199</span>
                        <span class="old">$249</span>
                        <span class="badge" style="background:#f05454;">-20%</span>
                    </div>
                </div>
                <div class="deal-timer">
                    <div class="time-unit"><div class="num" id="dealDays">0</div><div class="label">days</div></div>
                    <div class="time-unit"><div class="num" id="dealHours">00</div><div class="label">hrs</div></div>
                    <div class="time-unit"><div class="num" id="dealMinutes">00</div><div class="label">min</div></div>
                    <div class="time-unit"><div class="num" id="dealSeconds">00</div><div class="label">sec</div></div>
                </div>
                <div>
                    <button class="btn" id="buyDeal"><i class="fas fa-bolt"></i> Grab now</button>
                </div>
            </div>
        </section>

        <!-- testimonials -->
        <section class="container" style="padding:40px 0;">
            <div class="section-head">
                <div>
                    <h2 class="section-title">Loved by many</h2>
                    <p class="section-desc">Real stories from real people.</p>
                </div>
            </div>
            <div class="testimonials-grid" id="testimonialsGrid">
                <div class="testimonial-card">
                    <div class="stars">★★★★★</div>
                    <p>"Absolutely love the quality and the minimalist aesthetic. Will definitely order again."</p>
                    <div class="author">
                        <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80" alt="avatar">
                        <div><div class="name">Sophia Chen</div><div class="role">Verified buyer</div></div>
                    </div>
                </div>
                <div class="testimonial-card">
                    <div class="stars">★★★★★</div>
                    <p>"Fast delivery and the product exceeded my expectations. The packaging was beautiful too."</p>
                    <div class="author">
                        <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80" alt="avatar">
                        <div><div class="name">James Park</div><div class="role">Frequent shopper</div></div>
                    </div>
                </div>
                <div class="testimonial-card">
                    <div class="stars">★★★★☆</div>
                    <p>"Great selection and the website is so smooth. I love the clean design."</p>
                    <div class="author">
                        <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=100&q=80" alt="avatar">
                        <div><div class="name">Emma Davis</div><div class="role">Design lover</div></div>
                    </div>
                </div>
            </div>
        </section>

        <!-- newsletter -->
        <section class="container" style="padding:40px 0;">
            <div class="newsletter-box">
                <h3>Join the inner circle</h3>
                <p>Get early access to drops, exclusive offers & style inspiration.</p>
                <form id="newsletterForm">
                    <input type="email" id="newsletterEmail" placeholder="Your email address" required>
                    <button class="btn" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:12px; font-size:0.9rem; display:none;"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-brand">
                    <div style="font-weight:700; font-size:1.4rem;">vivid<span style="color:#f05454;">.</span></div>
                    <p>Minimalist essentials for everyday life. Designed with care.</p>
                    <div class="footer-social">
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h5>Shop</h5>
                    <ul><li>New arrivals</li><li>Best sellers</li><li>Gift cards</li></ul>
                </div>
                <div class="footer-col">
                    <h5>Info</h5>
                    <ul><li>About</li><li>Contact</li><li>Returns</li></ul>
                </div>
                <div class="footer-col">
                    <h5>Support</h5>
                    <ul><li>Help center</li><li>Track order</li><li>Privacy</li></ul>
                </div>
            </div>
            <div class="footer-bottom">© <span id="year"></span> vivid. All rights reserved.</div>
        </div>
    </footer>

    <script>
        // ---------- data ----------
        const CATEGORIES = [
            { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
            { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 15 Pro', price: 1199, oldPrice: 1299, rating: 5, reviews: 142, badge: 'New',
                img: 'https://images.unsplash.com/photo-1696446701796-da61225697cc?auto=format&fit=crop&w=600&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Air M3', price: 1499, rating: 5, reviews: 98, img: 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
            { id: 3, title: 'Sony WH-1000XM5', price: 349, oldPrice: 399, rating: 4, reviews: 214, badge: '-13%',
                img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio' },
            { id: 4, title: 'Nike Air Max 90', price: 140, rating: 4, reviews: 73, img: 'https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
            { id: 5, title: 'Fujifilm X-T5', price: 1699, rating: 5, reviews: 56, img: 'https://images.unsplash.com/photo-1617854818583-09d7b0774c2d?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 6, title: 'Leather Tote Bag', price: 89, oldPrice: 120, rating: 4, reviews: 87, badge: '-26%',
                img: 'https://images.unsplash.com/photo-1544816155-12df9643f363?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 7, title: 'Apple Watch Ultra 2', price: 799, rating: 5, reviews: 124, img: 'https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 8, title: 'Polo Shirt', price: 59, rating: 4, reviews: 43, img: 'https://images.unsplash.com/photo-1586363104862-3a5e2ab60d99?auto=format&fit=crop&w=600&q=80', category: 'clothing' }
        ];

        // ---------- render ----------
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(c => {
                const div = document.createElement('div');
                div.className = 'cat-card';
                div.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4>`;
                div.addEventListener('click', () => {
                    document.getElementById('searchInput') && (document.getElementById('searchInput').value = c.name);
                    filterProducts(c.name);
                });
                categoriesGrid.appendChild(div);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const card = document.createElement('div');
                card.className = 'product-card';
                card.innerHTML = `
                    <img src="${p.img}" alt="${p.title}">
                    <div class="product-body">
                        <div class="product-title">${p.title}</div>
                        <div class="product-cat">${p.category}</div>
                        <div class="product-meta">
                            <div class="product-price">$${p.price}${p.oldPrice ? `<span class="old">$${p.oldPrice}</span>` : ''}</div>
                            <div class="product-rating">${'★'.repeat(Math.round(p.rating))} <span style="color:#999;font-size:0.7rem;">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-actions">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
                        <button class="wish-btn"><i class="far fa-heart"></i></button>
                    </div>
                `;
                productsGrid.appendChild(card);
            });
            document.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', () => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        function filterProducts(query) {
            const q = query.trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        function addToCart(id) {
            const p = PRODUCTS.find(x => x.id === id);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
            if (btn) {
                const orig = btn.innerHTML;
                btn.innerHTML = '✓ Added';
                btn.style.background = '#28a745';
                setTimeout(() => { btn.innerHTML = orig; btn.style.background = ''; }, 1200);
            }
        }

        // ---------- search (hidden input on this version, but we keep filter) ----------
        // we use category click to filter

        // ---------- mobile toggle ----------
        document.getElementById('mobileToggle').addEventListener('click', function() {
            const menu = document.getElementById('mobileMenu');
            menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
        });

        // ---------- deal timer ----------
        (function setupTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (36 * 60 + 20) * 60 * 1000); // 36h20m
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        // ---------- newsletter ----------
        document.getElementById('newsletterForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'Please enter a valid email.';
                msg.style.color = '#d94343';
                return;
            }
            msg.style.display = 'block';
            msg.textContent = 'You\'re in! 🎉';
            msg.style.color = '#28a745';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // ---------- actions ----------
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount++;
            cartCountEl.textContent = cartCount;
            alert('Deal added to cart!');
        });

        // ---------- init ----------
        renderCategories();
        renderProducts(PRODUCTS);
        document.getElementById('year').textContent = new Date().getFullYear();
    </script>
</body>

</html>
