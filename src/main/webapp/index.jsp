<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)" integrity="" crossorigin="anonymous">

    <style>
        :root {
            --bg: #f8fafc;
            --surface: #ffffff;
            --primary: #0f172a;
            --primary-soft: #1e293b;
            --accent: #6366f1;
            --accent-hover: #4f46e5;
            --accent-glow: rgba(99,102,241,0.15);
            --muted: #64748b;
            --muted-light: #94a3b8;
            --border: #e2e8f0;
            --success: #10b981;
            --danger: #ef4444;
            --warning: #f59e0b;
            --star: #f59e0b;
            --radius-sm: 8px;
            --radius: 14px;
            --radius-lg: 20px;
            --shadow-sm: 0 1px 3px rgba(0,0,0,0.04), 0 1px 2px rgba(0,0,0,0.06);
            --shadow: 0 4px 6px -1px rgba(0,0,0,0.04), 0 2px 4px -2px rgba(0,0,0,0.05);
            --shadow-md: 0 10px 25px -5px rgba(0,0,0,0.06), 0 8px 10px -6px rgba(0,0,0,0.03);
            --shadow-lg: 0 20px 40px -8px rgba(0,0,0,0.08);
            --container: 1240px;
            --transition: 0.22s ease;
        }

        *,
        *::before,
        *::after { box-sizing: border-box; margin: 0; padding: 0; }

        html { scroll-behavior: smooth; scroll-padding-top: 80px; }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            color: var(--primary);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            line-height: 1.6;
            min-height: 100vh;
        }

        a { color: inherit; text-decoration: none; }
        img { max-width: 100%; display: block; }
        button { font-family: inherit; cursor: pointer; }
        ul { list-style: none; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ── Skip Link ── */
        .skip-link {
            position: absolute;
            top: -100%;
            left: 16px;
            background: var(--accent);
            color: #fff;
            padding: 10px 18px;
            border-radius: 0 0 var(--radius-sm) var(--radius-sm);
            z-index: 999;
            font-weight: 600;
            transition: top 0.2s;
        }
        .skip-link:focus { top: 0; }

        /* ── Header ── */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255,255,255,0.85);
            backdrop-filter: blur(14px) saturate(180%);
            border-bottom: 1px solid var(--border);
            transition: box-shadow var(--transition);
        }
        header.scrolled { box-shadow: var(--shadow-md); }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 12px 0;
            min-height: 64px;
        }

        .header-left { display: flex; align-items: center; gap: 20px; }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 22px;
            color: var(--primary);
            letter-spacing: -0.02em;
        }
        .brand .accent { color: var(--accent); }

        /* ── Desktop Nav ── */
        .desktop-nav ul {
            display: flex;
            gap: 4px;
            align-items: center;
        }
        .desktop-nav a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 10px 14px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            font-size: 14px;
            color: var(--primary-soft);
            transition: all var(--transition);
        }
        .desktop-nav a:hover,
        .desktop-nav a.active {
            background: var(--accent-glow);
            color: var(--accent);
        }

        /* ── Search ── */
        .search-wrapper {
            position: relative;
            flex: 0 1 380px;
            min-width: 200px;
        }
        .search-box {
            display: flex;
            align-items: center;
            background: var(--bg);
            border: 2px solid transparent;
            border-radius: 999px;
            padding: 4px 4px 4px 18px;
            transition: all var(--transition);
        }
        .search-box:focus-within {
            border-color: var(--accent);
            background: var(--surface);
            box-shadow: 0 0 0 4px var(--accent-glow);
        }
        .search-box input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            color: var(--primary);
            padding: 8px 0;
        }
        .search-box input::placeholder { color: var(--muted-light); }
        .search-box button {
            background: var(--accent);
            color: #fff;
            border: 0;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 14px;
            transition: background var(--transition);
            flex-shrink: 0;
        }
        .search-box button:hover { background: var(--accent-hover); }

        .search-suggestions {
            position: absolute;
            top: calc(100% + 8px);
            left: 0;
            right: 0;
            background: var(--surface);
            border-radius: var(--radius);
            box-shadow: var(--shadow-lg);
            border: 1px solid var(--border);
            display: none;
            z-index: 30;
            overflow: hidden;
        }
        .search-suggestions.visible { display: block; }
        .search-suggestions .suggestion {
            padding: 12px 18px;
            cursor: pointer;
            font-size: 14px;
            transition: background 0.15s;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .search-suggestions .suggestion:hover,
        .search-suggestions .suggestion:focus { background: var(--bg); }

        /* ── Header Actions ── */
        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .icon-btn {
            position: relative;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 0;
            background: transparent;
            color: var(--primary-soft);
            font-size: 18px;
            transition: all var(--transition);
        }
        .icon-btn:hover { background: var(--bg); color: var(--accent); }

        .cart-btn {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--primary-soft);
            color: #fff;
            padding: 8px 16px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 14px;
            border: 0;
            transition: all var(--transition);
        }
        .cart-btn:hover { background: var(--primary); transform: translateY(-1px); }
        .cart-count {
            background: var(--accent);
            min-width: 22px;
            height: 22px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
            font-size: 12px;
            font-weight: 700;
        }
        .cart-count.pulse { animation: pulse 0.4s ease; }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.35); }
        }

        /* ── Hamburger ── */
        .hamburger {
            display: none;
            width: 40px;
            height: 40px;
            border: 0;
            background: transparent;
            flex-direction: column;
            justify-content: center;
            gap: 6px;
            padding: 8px;
            cursor: pointer;
        }
        .hamburger span {
            display: block;
            height: 2.5px;
            background: var(--primary);
            border-radius: 2px;
            transition: all 0.3s;
        }
        .hamburger.open span:nth-child(1) { transform: rotate(45deg) translate(6px, 6px); }
        .hamburger.open span:nth-child(2) { opacity: 0; }
        .hamburger.open span:nth-child(3) { transform: rotate(-45deg) translate(6px, -6px); }

        /* ── Mobile Menu ── */
        .mobile-menu {
            display: none;
            position: fixed;
            inset: 0;
            top: 65px;
            background: var(--surface);
            z-index: 49;
            flex-direction: column;
            padding: 24px;
            gap: 8px;
            overflow-y: auto;
            animation: slideDown 0.25s ease;
        }
        .mobile-menu.open { display: flex; }
        @keyframes slideDown {
            from { opacity: 0; transform: translateY(-12px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .mobile-menu a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 14px 18px;
            border-radius: var(--radius-sm);
            font-size: 16px;
            font-weight: 500;
            transition: background 0.15s;
        }
        .mobile-menu a:hover { background: var(--bg); color: var(--accent); }

        /* ── Cart Drawer ── */
        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(15,23,42,0.5);
            z-index: 60;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.3s;
        }
        .overlay.open { opacity: 1; pointer-events: auto; }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            width: 420px;
            max-width: 90vw;
            height: 100vh;
            background: var(--surface);
            z-index: 61;
            box-shadow: var(--shadow-lg);
            transform: translateX(100%);
            transition: transform 0.35s cubic-bezier(0.4,0,0.2,1);
            display: flex;
            flex-direction: column;
        }
        .cart-drawer.open { transform: translateX(0); }

        .cart-drawer-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 24px;
            border-bottom: 1px solid var(--border);
        }
        .cart-drawer-body {
            flex: 1;
            overflow-y: auto;
            padding: 20px 24px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }
        .cart-empty {
            text-align: center;
            padding: 48px 20px;
            color: var(--muted);
        }
        .cart-empty i { font-size: 56px; margin-bottom: 16px; opacity: 0.3; }
        .cart-item {
            display: flex;
            gap: 14px;
            align-items: center;
            padding: 12px;
            border-radius: var(--radius-sm);
            background: var(--bg);
        }
        .cart-item img {
            width: 64px;
            height: 64px;
            border-radius: var(--radius-sm);
            object-fit: cover;
        }
        .cart-item-info { flex: 1; min-width: 0; }
        .cart-item-title { font-weight: 600; font-size: 14px; }
        .cart-item-price { color: var(--accent); font-weight: 700; font-size: 14px; }
        .cart-item-remove {
            background: none;
            border: 0;
            color: var(--muted-light);
            cursor: pointer;
            padding: 6px;
            font-size: 16px;
            transition: color 0.15s;
        }
        .cart-item-remove:hover { color: var(--danger); }
        .cart-drawer-footer {
            padding: 20px 24px;
            border-top: 1px solid var(--border);
        }
        .cart-total {
            display: flex;
            justify-content: space-between;
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 16px;
        }
        .checkout-btn {
            width: 100%;
            padding: 14px;
            background: var(--accent);
            color: #fff;
            border: 0;
            border-radius: 999px;
            font-size: 16px;
            font-weight: 700;
            transition: background var(--transition);
        }
        .checkout-btn:hover { background: var(--accent-hover); }

        /* ── Hero ── */
        .hero {
            display: flex;
            align-items: center;
            min-height: 440px;
            background: linear-gradient(135deg, #0f172a 0%, #1e1b4b 50%, #312e81 100%);
            color: #fff;
            position: relative;
            overflow: hidden;
            margin-bottom: 8px;
        }
        .hero::after {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 70% 50%, rgba(99,102,241,0.3) 0%, transparent 60%);
        }
        .hero .container { position: relative; z-index: 2; display: flex; align-items: center; gap: 48px; }
        .hero-content { flex: 1; padding: 48px 0; }
        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255,255,255,0.12);
            padding: 6px 16px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 20px;
            backdrop-filter: blur(8px);
        }
        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: clamp(32px, 5vw, 52px);
            font-weight: 800;
            line-height: 1.15;
            margin-bottom: 16px;
            letter-spacing: -0.03em;
        }
        .hero h1 .highlight {
            background: linear-gradient(135deg, #a5b4fc, #818cf8);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .hero p {
            font-size: 17px;
            opacity: 0.85;
            max-width: 540px;
            margin-bottom: 28px;
            line-height: 1.7;
        }
        .hero-buttons { display: flex; gap: 12px; flex-wrap: wrap; }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 13px 24px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 15px;
            border: 0;
            cursor: pointer;
            transition: all var(--transition);
            white-space: nowrap;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            box-shadow: 0 4px 14px rgba(99,102,241,0.4);
        }
        .btn-primary:hover {
            background: var(--accent-hover);
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(99,102,241,0.5);
        }
        .btn-outline {
            background: transparent;
            border: 2px solid rgba(255,255,255,0.25);
            color: #fff;
        }
        .btn-outline:hover { background: rgba(255,255,255,0.08); border-color: rgba(255,255,255,0.45); }

        .hero-visual {
            display: none;
            flex-shrink: 0;
            width: 320px;
            height: 320px;
            border-radius: 50%;
            background: radial-gradient(circle, rgba(99,102,241,0.25) 0%, transparent 70%);
        }
        @media (min-width: 900px) { .hero-visual { display: flex; align-items: center; justify-content: center; } }

        /* ── Sections ── */
        .section { padding: 56px 0; }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 28px;
            flex-wrap: wrap;
        }
        .section-header h2 {
            font-family: 'Poppins', sans-serif;
            font-size: 26px;
            font-weight: 700;
            letter-spacing: -0.02em;
        }
        .section-header .subtitle { color: var(--muted); font-size: 15px; margin-top: 4px; }
        .see-all {
            color: var(--accent);
            font-weight: 600;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 4px;
            transition: gap 0.2s;
        }
        .see-all:hover { gap: 8px; }

        /* ── Filter Pills ── */
        .filter-pills {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
            margin-bottom: 24px;
        }
        .filter-pill {
            padding: 8px 18px;
            border-radius: 999px;
            border: 2px solid var(--border);
            background: var(--surface);
            font-size: 13px;
            font-weight: 600;
            color: var(--muted);
            cursor: pointer;
            transition: all var(--transition);
        }
        .filter-pill:hover { border-color: var(--accent); color: var(--accent); }
        .filter-pill.active {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }

        /* ── Categories Grid ── */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(170px, 1fr));
            gap: 16px;
        }
        .cat-card {
            background: var(--surface);
            border-radius: var(--radius);
            padding: 28px 20px;
            text-align: center;
            cursor: pointer;
            border: 2px solid transparent;
            transition: all var(--transition);
            box-shadow: var(--shadow-sm);
        }
        .cat-card:hover {
            border-color: var(--accent);
            transform: translateY(-4px);
            box-shadow: var(--shadow-md);
        }
        .cat-card .icon-circle {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background: var(--accent-glow);
            display: inline-grid;
            place-items: center;
            font-size: 24px;
            color: var(--accent);
            margin-bottom: 14px;
            transition: all var(--transition);
        }
        .cat-card:hover .icon-circle {
            background: var(--accent);
            color: #fff;
            transform: scale(1.08);
        }
        .cat-card h4 { font-size: 15px; font-weight: 600; margin-bottom: 4px; }
        .cat-card .count { font-size: 13px; color: var(--muted-light); }

        /* ── Products Grid ── */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 20px;
        }
        .product-card {
            background: var(--surface);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow-sm);
            transition: all var(--transition);
            display: flex;
            flex-direction: column;
            position: relative;
            border: 1px solid var(--border);
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-lg);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            aspect-ratio: 1 / 1;
            background: var(--bg);
        }
        .product-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-card:hover img { transform: scale(1.06); }
        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 5px 10px;
            border-radius: 6px;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.03em;
            z-index: 2;
        }
        .badge-sale { background: #fef2f2; color: var(--danger); }
        .badge-new { background: #ecfdf5; color: var(--success); }
        .badge-best { background: #fffbeb; color: #d97706; }
        .wishlist-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            border: 0;
            background: rgba(255,255,255,0.9);
            backdrop-filter: blur(4px);
            color: var(--muted-light);
            font-size: 16px;
            cursor: pointer;
            display: grid;
            place-items: center;
            z-index: 2;
            transition: all var(--transition);
            box-shadow: var(--shadow-sm);
        }
        .wishlist-btn:hover { color: var(--danger); transform: scale(1.1); }
        .wishlist-btn.liked { color: var(--danger); }
        .product-body {
            padding: 16px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            flex: 1;
        }
        .product-category {
            font-size: 12px;
            color: var(--muted-light);
            text-transform: uppercase;
            letter-spacing: 0.04em;
            font-weight: 600;
        }
        .product-title {
            font-size: 15px;
            font-weight: 600;
            line-height: 1.4;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 13px;
        }
        .stars { color: var(--star); letter-spacing: 1px; }
        .review-count { color: var(--muted-light); }
        .product-price-row {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin-top: auto;
        }
        .product-price { font-size: 20px; font-weight: 700; color: var(--primary); }
        .product-old-price {
            font-size: 14px;
            color: var(--muted-light);
            text-decoration: line-through;
        }
        .add-to-cart {
            width: 100%;
            padding: 12px;
            background: var(--primary-soft);
            color: #fff;
            border: 0;
            border-radius: var(--radius-sm);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .add-to-cart:hover { background: var(--accent); }
        .add-to-cart.added {
            background: var(--success);
            pointer-events: none;
        }

        /* ── Deal Banner ── */
        .deal-banner {
            display: flex;
            background: linear-gradient(135deg, #0f172a, #1e1b4b);
            border-radius: var(--radius-lg);
            overflow: hidden;
            color: #fff;
            box-shadow: var(--shadow-md);
        }
        .deal-banner .deal-img {
            width: 45%;
            min-height: 320px;
            object-fit: cover;
        }
        .deal-banner .deal-content {
            flex: 1;
            padding: 40px 36px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-banner h3 { font-family: 'Poppins', sans-serif; font-size: 28px; margin-bottom: 8px; }
        .deal-banner .deal-meta { color: rgba(255,255,255,0.7); margin-bottom: 20px; }
        .countdown {
            display: flex;
            gap: 12px;
            margin-bottom: 24px;
        }
        .countdown .time-box {
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(4px);
            border-radius: var(--radius-sm);
            padding: 14px 18px;
            text-align: center;
            min-width: 72px;
        }
        .countdown .time-box .num { font-size: 28px; font-weight: 800; font-family: 'Poppins', sans-serif; }
        .countdown .time-box .lbl { font-size: 11px; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.05em; }
        .deal-price { font-size: 32px; font-weight: 800; }
        .deal-price .old { font-size: 18px; font-weight: 500; text-decoration: line-through; opacity: 0.5; margin-left: 8px; }
        .deal-stock { margin-top: 12px; color: #fbbf24; font-weight: 500; font-size: 14px; }
        .deal-stock .stock-bar {
            width: 100%;
            height: 6px;
            border-radius: 3px;
            background: rgba(255,255,255,0.15);
            margin-top: 8px;
            overflow: hidden;
        }
        .deal-stock .stock-fill {
            height: 100%;
            background: linear-gradient(90deg, #fbbf24, #f59e0b);
            border-radius: 3px;
            transition: width 0.5s;
        }

        /* ── Testimonials ── */
        .testimonials-scroll {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            padding: 8px 4px 20px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar { height: 6px; }
        .testimonials-scroll::-webkit-scrollbar-track { background: var(--border); border-radius: 3px; }
        .testimonials-scroll::-webkit-scrollbar-thumb { background: var(--muted-light); border-radius: 3px; }
        .testimonial-card {
            min-width: 320px;
            max-width: 380px;
            background: var(--surface);
            padding: 24px;
            border-radius: var(--radius);
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border);
            scroll-snap-align: start;
            flex-shrink: 0;
        }
        .testimonial-card .quote { font-size: 15px; line-height: 1.7; margin-bottom: 16px; color: var(--primary-soft); }
        .testimonial-card .author { display: flex; align-items: center; gap: 12px; }
        .testimonial-card .author img {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
        }
        .testimonial-card .author-name { font-weight: 700; font-size: 14px; }
        .testimonial-card .author-tag { font-size: 12px; color: var(--muted); }

        /* ── Newsletter ── */
        .newsletter {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 48px 32px;
            text-align: center;
            box-shadow: var(--shadow-sm);
        }
        .newsletter h3 { font-family: 'Poppins', sans-serif; font-size: 24px; margin-bottom: 8px; }
        .newsletter p { color: var(--muted); margin-bottom: 24px; max-width: 480px; margin-inline: auto; }
        .newsletter-form {
            display: flex;
            gap: 12px;
            justify-content: center;
            flex-wrap: wrap;
            max-width: 480px;
            margin: 0 auto;
        }
        .newsletter-form input {
            flex: 1;
            min-width: 220px;
            padding: 14px 18px;
            border-radius: 999px;
            border: 2px solid var(--border);
            font-size: 15px;
            outline: none;
            transition: border var(--transition);
        }
        .newsletter-form input:focus { border-color: var(--accent); }
        .newsletter-msg {
            margin-top: 14px;
            font-size: 14px;
            font-weight: 600;
            min-height: 20px;
        }

        /* ── Toast ── */
        .toast-container {
            position: fixed;
            bottom: 24px;
            right: 24px;
            z-index: 100;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .toast {
            background: var(--primary-soft);
            color: #fff;
            padding: 14px 20px;
            border-radius: var(--radius-sm);
            font-size: 14px;
            font-weight: 500;
            box-shadow: var(--shadow-lg);
            animation: slideInRight 0.35s ease, fadeOut 0.35s ease 2.5s forwards;
            display: flex;
            align-items: center;
            gap: 10px;
            max-width: 360px;
        }
        .toast.success { border-left: 4px solid var(--success); }
        .toast.error { border-left: 4px solid var(--danger); }
        @keyframes slideInRight {
            from { transform: translateX(120%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }
        @keyframes fadeOut {
            to { opacity: 0; transform: translateY(-12px); }
        }

        /* ── Footer ── */
        footer {
            background: var(--surface);
            border-top: 1px solid var(--border);
            padding: 48px 0 24px;
            margin-top: 32px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 32px;
            margin-bottom: 32px;
        }
        .footer-brand { font-family: 'Poppins', sans-serif; font-size: 20px; font-weight: 700; margin-bottom: 12px; }
        .footer-desc { color: var(--muted); font-size: 14px; line-height: 1.7; max-width: 300px; }
        .footer-social { display: flex; gap: 10px; margin-top: 16px; }
        .footer-social a {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--bg);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: all var(--transition);
        }
        .footer-social a:hover { background: var(--accent); color: #fff; }
        footer h4 { font-weight: 700; font-size: 14px; margin-bottom: 16px; text-transform: uppercase; letter-spacing: 0.04em; }
        footer ul { display: flex; flex-direction: column; gap: 10px; }
        footer ul a { color: var(--muted); font-size: 14px; transition: color 0.15s; }
        footer ul a:hover { color: var(--accent); }
        .footer-bottom {
            border-top: 1px solid var(--border);
            padding-top: 20px;
            text-align: center;
            color: var(--muted-light);
            font-size: 13px;
        }

        /* ── Back to Top ── */
        .back-to-top {
            position: fixed;
            bottom: 24px;
            left: 24px;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--surface);
            border: 1px solid var(--border);
            box-shadow: var(--shadow-md);
            display: grid;
            place-items: center;
            cursor: pointer;
            z-index: 30;
            opacity: 0;
            pointer-events: none;
            transition: all var(--transition);
            color: var(--primary);
            font-size: 18px;
        }
        .back-to-top.visible { opacity: 1; pointer-events: auto; }
        .back-to-top:hover { background: var(--accent); color: #fff; border-color: var(--accent); }

        /* ── Responsive ── */
        @media (max-width: 1024px) {
            .footer-grid { grid-template-columns: 1fr 1fr; }
            .deal-banner { flex-direction: column; }
            .deal-banner .deal-img { width: 100%; max-height: 240px; }
            .deal-banner .deal-content { padding: 28px 24px; }
            .search-wrapper { flex: 0 1 260px; }
        }
        @media (max-width: 768px) {
            .desktop-nav { display: none; }
            .hamburger { display: flex; }
            .search-wrapper { flex: 1; min-width: 0; }
            .hero .container { flex-direction: column; gap: 0; }
            .hero-content { padding: 40px 0 32px; text-align: center; }
            .hero p { margin-inline: auto; }
            .hero-buttons { justify-content: center; }
            .hero-visual { width: 180px; height: 180px; margin-bottom: 20px; }
            .products-grid { grid-template-columns: repeat(auto-fill, minmax(160px, 1fr)); gap: 12px; }
            .product-body { padding: 12px; }
            .product-title { font-size: 13px; }
            .product-price { font-size: 16px; }
            .categories-grid { grid-template-columns: repeat(auto-fill, minmax(140px, 1fr)); gap: 10px; }
            .cat-card { padding: 20px 14px; }
            .countdown .time-box { padding: 10px 14px; min-width: 58px; }
            .countdown .time-box .num { font-size: 22px; }
            .footer-grid { grid-template-columns: 1fr; gap: 24px; }
            .cart-drawer { width: 100%; max-width: 100%; }
            .section { padding: 36px 0; }
            .section-header h2 { font-size: 22px; }
        }
    </style>
</head>

<body>

    <!-- Skip to content -->
    <a href="#main-content" class="skip-link">Skip to main content</a>

    <!-- ─── Header ─── -->
    <header id="header">
        <div class="container header-inner">
            <div class="header-left">
                <button class="hamburger" id="hamburger" aria-label="Toggle menu" aria-expanded="false">
                    <span></span><span></span><span></span>
                </button>
                <a class="brand" href="#" aria-label="NexusShop home">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
                <nav class="desktop-nav" aria-label="Primary navigation">
                    <ul>
                        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    </ul>
                </nav>
            </div>

            <div class="search-wrapper" role="search" aria-label="Product search">
                <div class="search-box">
                    <input type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" autocomplete="off" />
                    <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
                </div>
                <div class="search-suggestions" id="searchSuggestions" role="listbox"></div>
            </div>

            <div class="header-actions">
                <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                <button class="icon-btn" title="Wishlist" aria-label="Wishlist" id="wishlistBtn"><i class="far fa-heart"></i></button>
                <button class="cart-btn" id="cartBtn" aria-label="View cart">
                    <i class="fas fa-shopping-cart"></i>
                    Cart
                    <span class="cart-count" id="cartCount">0</span>
                </button>
            </div>
        </div>

        <!-- Mobile Menu -->
        <nav class="mobile-menu" id="mobileMenu" aria-label="Mobile navigation">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
            <a href="#products"><i class="fas fa-fire"></i> Trending</a>
            <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
            <a href="#"><i class="far fa-user"></i> My Account</a>
            <a href="#"><i class="far fa-heart"></i> Wishlist</a>
        </nav>
    </header>

    <!-- ─── Overlay ─── -->
    <div class="overlay" id="overlay"></div>

    <!-- ─── Cart Drawer ─── -->
    <aside class="cart-drawer" id="cartDrawer" aria-label="Shopping cart">
        <div class="cart-drawer-header">
            <h3>Shopping Cart (<span id="cartDrawerCount">0</span>)</h3>
            <button class="icon-btn" id="closeCart" aria-label="Close cart"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-drawer-body" id="cartDrawerBody">
            <div class="cart-empty">
                <i class="fas fa-shopping-bag"></i>
                <p>Your cart is empty</p>
                <p style="font-size:13px;color:var(--muted-light);margin-top:4px">Add some products to get started!</p>
            </div>
        </div>
        <div class="cart-drawer-footer" id="cartDrawerFooter" style="display:none;">
            <div class="cart-total">
                <span>Total</span>
                <span id="cartTotal">$0</span>
            </div>
            <button class="checkout-btn">Proceed to Checkout</button>
        </div>
    </aside>

    <!-- ─── Main Content ─── -->
    <main id="main-content">

        <!-- Hero -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="hero-content">
                    <div class="hero-badge">
                        <i class="fas fa-sparkles"></i> New Collection 2026
                    </div>
                    <h1>Discover <span class="highlight">Premium Picks</span> for Every Style</h1>
                    <p>Curated fashion, cutting-edge tech, and everyday essentials — with free shipping on orders over $50.</p>
                    <div class="hero-buttons">
                        <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
                        <button class="btn btn-outline" id="exploreDeals">View Deals <i class="fas fa-tag"></i></button>
                    </div>
                </div>
                <div class="hero-visual">
                    <i class="fas fa-bolt" style="font-size: 72px; color: rgba(165,180,252,0.6);"></i>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" id="categories" aria-labelledby="cat-heading">
            <div class="section-header">
                <div>
                    <h2 id="cat-heading">Shop by Category</h2>
                    <p class="subtitle">Find exactly what you're looking for</p>
                </div>
                <a href="#" class="see-all">All Categories <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Trending Products -->
        <section class="section container" id="products" aria-labelledby="prod-heading">
            <div class="section-header">
                <div>
                    <h2 id="prod-heading">Trending Now</h2>
                    <p class="subtitle">Popular picks based on what shoppers love</p>
                </div>
                <a href="#" class="see-all">View All <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="filter-pills" id="filterPills" role="group" aria-label="Filter products">
                <button class="filter-pill active" data-filter="all">All</button>
                <button class="filter-pill" data-filter="phones">Smartphones</button>
                <button class="filter-pill" data-filter="laptops">Laptops</button>
                <button class="filter-pill" data-filter="accessories">Accessories</button>
                <button class="filter-pill" data-filter="footwear">Footwear</button>
                <button class="filter-pill" data-filter="gadgets">Gadgets</button>
            </div>
            <div class="products-grid" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Flash Deal -->
        <section class="section container" id="deals" aria-labelledby="deal-heading">
            <div class="section-header">
                <div>
                    <h2 id="deal-heading">⚡ Flash Sale</h2>
                    <p class="subtitle">Grab these deals before they're gone</p>
                </div>
            </div>
            <div class="deal-banner">
                <img class="deal-img" src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80)" alt="MacBook Air M2 on a desk" loading="lazy" />
                <div class="deal-content">
                    <h3>MacBook Air M2</h3>
                    <p class="deal-meta">Thin, light, and incredibly fast — powered by the M2 chip.</p>
                    <div class="countdown" aria-label="Deal countdown timer">
                        <div class="time-box"><div class="num" id="dealDays">0</div><div class="lbl">Days</div></div>
                        <div class="time-box"><div class="num" id="dealHours">00</div><div class="lbl">Hours</div></div>
                        <div class="time-box"><div class="num" id="dealMinutes">00</div><div class="lbl">Minutes</div></div>
                        <div class="time-box"><div class="num" id="dealSeconds">00</div><div class="lbl">Seconds</div></div>
                    </div>
                    <div class="deal-price">$999 <span class="old">$1,199</span></div>
                    <div class="deal-stock">
                        Only <strong id="dealStockCount">12</strong> left at this price!
                        <div class="stock-bar"><div class="stock-fill" style="width:24%;" id="stockFill"></div></div>
                    </div>
                    <div style="margin-top: 24px;">
                        <button class="btn btn-primary" id="buyDeal">Buy Now <i class="fas fa-arrow-right"></i></button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-heading">
            <div class="section-header">
                <div>
                    <h2 id="test-heading">What Our Customers Say</h2>
                    <p class="subtitle">Real reviews from verified shoppers</p>
                </div>
            </div>
            <div class="testimonials-scroll" id="testimonials"></div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-heading">
            <div class="newsletter">
                <h3 id="news-heading">📬 Stay in the Loop</h3>
                <p>Subscribe to get exclusive deals, early access to sales, and new arrival alerts.</p>
                <form class="newsletter-form" id="newsletterForm" novalidate>
                    <input type="email" id="newsletterEmail" placeholder="you@example.com" aria-label="Email address" required />
                    <button type="submit" class="btn btn-primary">Subscribe</button>
                </form>
                <div class="newsletter-msg" id="newsletterMsg" aria-live="polite"></div>
            </div>
        </section>

    </main>

    <!-- ─── Footer ─── -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div>
                    <div class="footer-brand">Nexus<span style="color:var(--accent)">Shop</span></div>
                    <p class="footer-desc">A modern e-commerce experience built with thoughtful design and smooth interactions.</p>
                    <div class="footer-social">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div>
                    <h4>Shop</h4>
                    <ul>
                        <li><a href="#">All Products</a></li>
                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Sale</a></li>
                    </ul>
                </div>
                <div>
                    <h4>Company</h4>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div>
                    <h4>Support</h4>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping & Returns</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- Back to Top -->
    <button class="back-to-top" id="backToTop" aria-label="Back to top"><i class="fas fa-chevron-up"></i></button>

    <!-- Toast Container -->
    <div class="toast-container" id="toastContainer" aria-live="polite"></div>

    <script>
        // ═══════════════════════════════════════
        //  DATA
        // ═══════════════════════════════════════
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 56 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 32 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 29 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 41 },
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 4.8, reviews: 128, badge: 'sale', img: '[images.unsplash.com](https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80)', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14" M3', price: 1999, rating: 4.7, reviews: 86, img: '[images.unsplash.com](https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80)', category: 'laptops', badge: 'best' },
            { id: 3, title: 'Apple Watch Series 9', price: 349, oldPrice: 429, rating: 4.9, reviews: 214, badge: 'sale', img: '[images.unsplash.com](https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80)', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4.5, reviews: 53, img: '[images.unsplash.com](https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80)', category: 'footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 4.9, reviews: 42, img: '[images.unsplash.com](https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80)', category: 'gadgets', badge: 'new' },
            { id: 6, title: 'Chanel No. 5 Eau de Parfum', price: 120, rating: 4.6, reviews: 189, img: '[images.unsplash.com](https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80)', category: 'accessories' },
            { id: 7, title: 'Premium Travel Backpack', price: 79, oldPrice: 99, rating: 4.3, reviews: 67, img: '[images.unsplash.com](https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80)', category: 'accessories', badge: 'sale' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 4.8, reviews: 156, img: '[images.unsplash.com](https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80)', category: 'gadgets' },
        ];

        const TESTIMONIALS = [
            { text: 'Fast shipping and excellent customer support. The product exceeded my expectations!', name: 'Ava Martin', tag: 'Verified buyer', rating: 5, img: '[images.unsplash.com](https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80)' },
            { text: 'Great selection and the checkout was smooth. Will definitely shop again.', name: 'Michael Lee', tag: 'Frequent buyer', rating: 4, img: '[images.unsplash.com](https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80)' },
            { text: 'The quality is outstanding. My go-to store for all tech purchases now.', name: 'Sarah Chen', tag: 'Verified buyer', rating: 5, img: '[images.unsplash.com](https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=80)' },
            { text: 'Love the curated collections. Saved me so much time browsing!', name: 'James Wilson', tag: 'New customer', rating: 5, img: '[images.unsplash.com](https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80)' },
        ];

        // ═══════════════════════════════════════
        //  STATE
        // ═══════════════════════════════════════
        const state = {
            cart: JSON.parse(localStorage.getItem('nexusshop_cart') || '[]'),
            wishlist: JSON.parse(localStorage.getItem('nexusshop_wishlist') || '[]'),
            currentFilter: 'all',
        };

        function saveCart() { localStorage.setItem('nexusshop_cart', JSON.stringify(state.cart)); }
        function saveWishlist() { localStorage.setItem('nexusshop_wishlist', JSON.stringify(state.wishlist)); }

        function getCartCount() { return state.cart.reduce((sum, item) => sum + item.qty, 0); }
        function getCartTotal() { return state.cart.reduce((sum, item) => sum + item.price * item.qty, 0); }

        // ═══════════════════════════════════════
        //  DOM REFS
        // ═══════════════════════════════════════
        const $ = (sel) => document.querySelector(sel);
        const $$ = (sel) => document.querySelectorAll(sel);

        const categoriesGrid = $('#categoriesGrid');
        const productsGrid = $('#productsGrid');
        const cartCountEl = $('#cartCount');
        const cartDrawerCount = $('#cartDrawerCount');
        const cartDrawerBody = $('#cartDrawerBody');
        const cartDrawerFooter = $('#cartDrawerFooter');
        const cartTotalEl = $('#cartTotal');
        const cartDrawer = $('#cartDrawer');
        const overlay = $('#overlay');
        const toastContainer = $('#toastContainer');
        const searchInput = $('#searchInput');
        const searchSuggestions = $('#searchSuggestions');
        const mobileMenu = $('#mobileMenu');
        const hamburger = $('#hamburger');
        const backToTop = $('#backToTop');

        // ═══════════════════════════════════════
        //  UTILITIES
        // ═══════════════════════════════════════
        function escapeHtml(text) {
            const map = { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' };
            return String(text).replace(/[&<>"']/g, s => map[s]);
        }

        function showToast(message, type = 'success') {
            const toast = document.createElement('div');
            toast.className = `toast ${type}`;
            toast.innerHTML = `<i class="fas fa-${type === 'success' ? 'check-circle' : 'exclamation-circle'}"></i> ${message}`;
            toastContainer.appendChild(toast);
            setTimeout(() => toast.remove(), 3000);
        }

        function debounce(fn, ms) {
            let timer;
            return (...args) => { clearTimeout(timer); timer = setTimeout(() => fn(...args), ms); };
        }

        // ═══════════════════════════════════════
        //  RENDER: CATEGORIES
        // ═══════════════════════════════════════
        function renderCategories() {
            categoriesGrid.innerHTML = CATEGORIES.map(cat => `
                <div class="cat-card" role="button" tabindex="0" data-category="${cat.id}" aria-label="Browse ${cat.name}">
                    <div class="icon-circle"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} products</div>
                </div>
            `).join('');

            categoriesGrid.querySelectorAll('.cat-card').forEach(card => {
                card.addEventListener('click', () => {
                    const catId = card.dataset.category;
                    const cat = CATEGORIES.find(c => c.id === catId);
                    searchInput.value = cat ? cat.name : '';
                    setFilter(catId);
                    $('#products').scrollIntoView({ behavior: 'smooth' });
                });
            });
        }

        // ═══════════════════════════════════════
        //  RENDER: PRODUCTS
        // ═══════════════════════════════════════
        function getFilteredProducts() {
            if (state.currentFilter === 'all') return PRODUCTS;
            return PRODUCTS.filter(p => p.category === state.currentFilter);
        }

        function renderProducts(products = getFilteredProducts()) {
            if (products.length === 0) {
                productsGrid.innerHTML = `
                    <div style="grid-column:1/-1;text-align:center;padding:48px;color:var(--muted);">
                        <i class="fas fa-search" style="font-size:48px;margin-bottom:12px;opacity:0.3;display:block;"></i>
                        <p>No products found. Try a different search or filter.</p>
                    </div>`;
                return;
            }

            productsGrid.innerHTML = products.map(p => {
                const wishlisted = state.wishlist.includes(p.id);
                const badgeLabel = { sale: 'Sale', new: 'New', best: 'Best' };
                const badgeClass = { sale: 'badge-sale', new: 'badge-new', best: 'badge-best' };
                return `
                <article class="product-card">
                    <div class="img-wrap">
                        ${p.badge ? `<span class="product-badge ${badgeClass[p.badge]}">${badgeLabel[p.badge]}</span>` : ''}
                        <button class="wishlist-btn ${wishlisted ? 'liked' : ''}" data-id="${p.id}" aria-label="${wishlisted ? 'Remove from wishlist' : 'Add to wishlist'}">
                            <i class="fa${wishlisted ? 's' : 'r'} fa-heart"></i>
                        </button>
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy" />
                    </div>
                    <div class="product-body">
                        <div class="product-category">${p.category}</div>
                        <h3 class="product-title">${escapeHtml(p.title)}</h3>
                        <div class="product-rating">
                            <span class="stars">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 >= 0.5 ? '½' : ''}</span>
                            <span class="review-count">${p.rating} (${p.reviews})</span>
                        </div>
                        <div class="product-price-row">
                            <span class="product-price">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="product-old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                    </div>
                    <div style="padding:0 16px 16px;">
                        <button class="add-to-cart" data-id="${p.id}">
                            <i class="fas fa-cart-plus"></i> Add to Cart
                        </button>
                    </div>
                </article>`;
            }).join('');

            // Attach listeners
            productsGrid.querySelectorAll('.add-to-cart').forEach(btn => {
                btn.addEventListener('click', () => addToCart(Number(btn.dataset.id), btn));
            });
            productsGrid.querySelectorAll('.wishlist-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    toggleWishlist(Number(btn.dataset.id), btn);
                });
            });
        }

        // ═══════════════════════════════════════
        //  RENDER: TESTIMONIALS
        // ═══════════════════════════════════════
        function renderTestimonials() {
            const container = $('#testimonials');
            container.innerHTML = TESTIMONIALS.map(t => `
                <div class="testimonial-card">
                    <div class="stars" style="margin-bottom:12px;">${'★'.repeat(t.rating)}${'☆'.repeat(5 - t.rating)}</div>
                    <p class="quote">"${escapeHtml(t.text)}"</p>
                    <div class="author">
                        <img src="${t.img}" alt="${escapeHtml(t.name)}" loading="lazy" />
                        <div>
                            <div class="author-name">${escapeHtml(t.name)}</div>
                            <div class="author-tag">${escapeHtml(t.tag)}</div>
                        </div>
                    </div>
                </div>
            `).join('');
        }

        // ═══════════════════════════════════════
        //  CART LOGIC
        // ═══════════════════════════════════════
        function addToCart(productId, buttonEl) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;

            const existing = state.cart.find(item => item.id === productId);
            if (existing) {
                existing.qty += 1;
            } else {
                state.cart.push({ id: product.id, title: product.title, price: product.price, img: product.img, qty: 1 });
            }

            saveCart();
            updateCartUI();

            // Button feedback
            if (buttonEl) {
                buttonEl.classList.add('added');
                buttonEl.innerHTML = '<i class="fas fa-check"></i> Added!';
                setTimeout(() => {
                    buttonEl.classList.remove('added');
                    buttonEl.innerHTML = '<i class="fas fa-cart-plus"></i> Add to Cart';
                }, 1500);
            }

            showToast(`${product.title} added to cart!`);
        }

        function removeFromCart(productId) {
            state.cart = state.cart.filter(item => item.id !== productId);
            saveCart();
            updateCartUI();
            renderCartDrawer();
        }

        function updateCartUI() {
            const count = getCartCount();
            cartCountEl.textContent = count;
            cartDrawerCount.textContent = count;

            if (count > 0) {
                cartCountEl.classList.add('pulse');
                setTimeout(() => cartCountEl.classList.remove('pulse'), 400);
            }

            cartCountEl.style.display = count > 0 ? 'inline-grid' : 'none';
            if (count === 0) cartCountEl.style.display = 'inline-grid'; // always show
        }

        function renderCartDrawer() {
            if (state.cart.length === 0) {
                cartDrawerBody.innerHTML = `
                    <div class="cart-empty">
                        <i class="fas fa-shopping-bag"></i>
                        <p>Your cart is empty</p>
                        <p style="font-size:13px;color:var(--muted-light);margin-top:4px">Add some products to get started!</p>
                    </div>`;
                cartDrawerFooter.style.display = 'none';
            } else {
                cartDrawerBody.innerHTML = state.cart.map(item => `
                    <div class="cart-item">
                        <img src="${item.img}" alt="${escapeHtml(item.title)}" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">${escapeHtml(item.title)}</div>
                            <div style="font-size:13px;color:var(--muted);margin:4px 0;">Qty: ${item.qty}</div>
                            <div class="cart-item-price">$${(item.price * item.qty).toLocaleString()}</div>
                        </div>
                        <button class="cart-item-remove" data-id="${item.id}" aria-label="Remove ${escapeHtml(item.title)}">
                            <i class="fas fa-trash-alt"></i>
                        </button>
                    </div>
                `).join('');
                cartDrawerFooter.style.display = 'block';
                cartTotalEl.textContent = `$${getCartTotal().toLocaleString()}`;

                cartDrawerBody.querySelectorAll('.cart-item-remove').forEach(btn => {
                    btn.addEventListener('click', () => removeFromCart(Number(btn.dataset.id)));
                });
            }
            updateCartUI();
        }

        function openCart() {
            cartDrawer.classList.add('open');
            overlay.classList.add('open');
            document.body.style.overflow = 'hidden';
            renderCartDrawer();
        }

        function closeCart() {
            cartDrawer.classList.remove('open');
            overlay.classList.remove('open');
            document.body.style.overflow = '';
        }

        // ═══════════════════════════════════════
        //  WISHLIST
        // ═══════════════════════════════════════
        function toggleWishlist(productId, buttonEl) {
            const idx = state.wishlist.indexOf(productId);
            if (idx > -1) {
                state.wishlist.splice(idx, 1);
                showToast('Removed from wishlist', 'error');
            } else {
                state.wishlist.push(productId);
                showToast('Added to wishlist!');
            }
            saveWishlist();

            // Update button
            if (buttonEl) {
                const liked = state.wishlist.includes(productId);
                buttonEl.classList.toggle('liked', liked);
                buttonEl.querySelector('i').className = `fa${liked ? 's' : 'r'} fa-heart`;
                buttonEl.setAttribute('aria-label', liked ? 'Remove from wishlist' : 'Add to wishlist');
            }
        }

        // ═══════════════════════════════════════
        //  FILTER
        // ═══════════════════════════════════════
        function setFilter(category) {
            state.currentFilter = category;
            $$('.filter-pill').forEach(pill => {
                pill.classList.toggle('active', pill.dataset.filter === category);
            });
            renderProducts();
            // Smooth scroll to products
            $('#products').scrollIntoView({ behavior: 'smooth' });
        }

        // ═══════════════════════════════════════
        //  SEARCH
        // ═══════════════════════════════════════
        function searchProducts(query) {
            const q = query.trim().toLowerCase();
            if (!q) {
                setFilter('all');
                return;
            }
            state.currentFilter = 'all';
            $$('.filter-pill').forEach(p => p.classList.toggle('active', p.dataset.filter === 'all'));

            const results = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(results);
            $('#products').scrollIntoView({ behavior: 'smooth' });
        }

        function showSuggestions(query) {
            const q = query.trim().toLowerCase();
            if (!q || q.length < 2) {
                searchSuggestions.classList.remove('visible');
                return;
            }
            const matches = PRODUCTS.filter(p => p.title.toLowerCase().includes(q)).slice(0, 5);
            if (matches.length === 0) {
                searchSuggestions.classList.remove('visible');
                return;
            }
            searchSuggestions.innerHTML = matches.map(p => `
                <div class="suggestion" role="option" data-title="${escapeHtml(p.title)}">
                    <img src="${p.img}" alt="" style="width:36px;height:36px;border-radius:6px;object-fit:cover;" />
                    <span>${escapeHtml(p.title)}</span>
                    <span style="margin-left:auto;font-weight:700;color:var(--accent);">$${p.price}</span>
                </div>
            `).join('');
            searchSuggestions.classList.add('visible');

            searchSuggestions.querySelectorAll('.suggestion').forEach(s => {
                s.addEventListener('click', () => {
                    searchInput.value = s.dataset.title;
                    searchSuggestions.classList.remove('visible');
                    searchProducts(s.dataset.title);
                });
            });
        }

        // ═══════════════════════════════════════
        //  MOBILE MENU
        // ═══════════════════════════════════════
        function toggleMobileMenu() {
            const isOpen = mobileMenu.classList.toggle('open');
            hamburger.classList.toggle('open', isOpen);
            hamburger.setAttribute('aria-expanded', isOpen);
            document.body.style.overflow = isOpen ? 'hidden' : '';
        }

        function closeMobileMenu() {
            mobileMenu.classList.remove('open');
            hamburger.classList.remove('open');
            hamburger.setAttribute('aria-expanded', 'false');
            document.body.style.overflow = '';
        }

        // ═══════════════════════════════════════
        //  COUNTDOWN TIMER
        // ═══════════════════════════════════════
        function setupDealTimer() {
            const target = new Date(Date.now() + (22 * 3600 + 14 * 60 + 33) * 1000);

            function tick() {
                const diff = target - Date.now();
                if (diff <= 0) {
                    ['dealDays', 'dealHours', 'dealMinutes', 'dealSeconds'].forEach(id => $(`#${id}`).textContent = '0'.padStart(id === 'dealDays' ? 1 : 2, '0'));
                    return;
                }
                const days = Math.floor(diff / 86400000);
                const hours = Math.floor((diff % 86400000) / 3600000);
                const mins = Math.floor((diff % 3600000) / 60000);
                const secs = Math.floor((diff % 60000) / 1000);

                $('#dealDays').textContent = days;
                $('#dealHours').textContent = String(hours).padStart(2, '0');
                $('#dealMinutes').textContent = String(mins).padStart(2, '0');
                $('#dealSeconds').textContent = String(secs).padStart(2, '0');

                // Simulate stock decreasing
                const stockLeft = Math.max(1, Math.floor(12 * (diff / (24 * 3600 * 1000))));
                $('#dealStockCount').textContent = stockLeft;
                $('#stockFill').style.width = `${Math.max(2, (stockLeft / 50) * 100)}%`;
            }

            tick();
            setInterval(tick, 1000);
        }

        // ═══════════════════════════════════════
        //  BACK TO TOP
        // ═══════════════════════════════════════
        function handleScroll() {
            const header = $('#header');
            header.classList.toggle('scrolled', window.scrollY > 20);
            backToTop.classList.toggle('visible', window.scrollY > 600);
        }

        // ═══════════════════════════════════════
        //  NEWSLETTER
        // ═══════════════════════════════════════
        function handleNewsletter(e) {
            e.preventDefault();
            const email = $('#newsletterEmail').value.trim();
            const msg = $('#newsletterMsg');

            if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                msg.textContent = 'Please enter a valid email address.';
                msg.style.color = 'var(--danger)';
                return;
            }
            msg.textContent = '🎉 Thanks! You\'re subscribed.';
            msg.style.color = 'var(--success)';
            $('#newsletterEmail').value = '';
            setTimeout(() => { msg.textContent = ''; }, 4000);
        }

        // ═══════════════════════════════════════
        //  INITIALIZATION
        // ═══════════════════════════════════════
        function init() {
            renderCategories();
            renderProducts();
            renderTestimonials();
            updateCartUI();
            setupDealTimer();
            $('#year').textContent = new Date().getFullYear();

            // Cart drawer toggle
            $('#cartBtn').addEventListener('click', openCart);
            $('#closeCart').addEventListener('click', closeCart);
            overlay.addEventListener('click', () => {
                closeCart();
                closeMobileMenu();
            });

            // Mobile menu
            hamburger.addEventListener('click', toggleMobileMenu);
            mobileMenu.querySelectorAll('a').forEach(link => {
                link.addEventListener('click', closeMobileMenu);
            });

            // Search
            $('#searchBtn').addEventListener('click', () => searchProducts(searchInput.value));
            searchInput.addEventListener('keydown', e => {
                if (e.key === 'Enter') {
                    searchSuggestions.classList.remove('visible');
                    searchProducts(e.target.value);
                }
            });
            searchInput.addEventListener('input', debounce(e => showSuggestions(e.target.value), 200));
            searchInput.addEventListener('focus', () => { if (searchInput.value.length >= 2) showSuggestions(searchInput.value); });
            document.addEventListener('click', e => {
                if (!searchSuggestions.contains(e.target) && e.target !== searchInput) {
                    searchSuggestions.classList.remove('visible');
                }
            });

            // Filters
            $$('.filter-pill').forEach(pill => {
                pill.addEventListener('click', () => setFilter(pill.dataset.filter));
            });

            // Category cards keyboard
            categoriesGrid.addEventListener('keydown', e => {
                if (e.key === 'Enter' && e.target.classList.contains('cat-card')) {
                    e.target.click();
                }
            });

            // Scroll
            window.addEventListener('scroll', handleScroll, { passive: true });
            backToTop.addEventListener('click', () => window.scrollTo({ top: 0, behavior: 'smooth' }));

            // Hero buttons
            $('#shopNow').addEventListener('click', () => $('#products').scrollIntoView({ behavior: 'smooth' }));
            $('#exploreDeals').addEventListener('click', () => $('#deals').scrollIntoView({ behavior: 'smooth' }));

            // Deal buy button
            $('#buyDeal').addEventListener('click', () => {
                const macbook = PRODUCTS.find(p => p.title.includes('MacBook'));
                if (macbook) addToCart(macbook.id);
                else {
                    state.cart.push({ id: 999, title: 'MacBook Air M2', price: 999, img: '[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80)', qty: 1 });
                    saveCart();
                    updateCartUI();
                }
                openCart();
                showToast('MacBook Air M2 added to cart!');
            });

            // Newsletter
            $('#newsletterForm').addEventListener('submit', handleNewsletter);

            // Esc key
            document.addEventListener('keydown', e => {
                if (e.key === 'Escape') {
                    closeCart();
                    closeMobileMenu();
                    searchSuggestions.classList.remove('visible');
                }
            });

            handleScroll();
        }

        document.addEventListener('DOMContentLoaded', init);
    </script>
</body>
</html>
