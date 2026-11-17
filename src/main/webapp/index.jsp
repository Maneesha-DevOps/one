<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop — Dark Edition</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Syne:wght@700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ========== REDESIGNED ROOT ========== */
    :root {
      --bg: #0b0b10;
      --bg-elevated: #12121a;
      --bg-card: #1a1a24;
      --bg-card-hover: #22222e;
      --primary: #c084fc;
      --primary-glow: #a855f7;
      --primary-dim: #7e22ce;
      --accent: #38bdf8;
      --accent-dim: #0ea5e9;
      --text: #f1f5f9;
      --text-muted: #94a3b8;
      --text-dim: #64748b;
      --border: #2d2d3d;
      --border-light: #3f3f52;
      --success: #34d399;
      --warning: #fbbf24;
      --danger: #f87171;
      --radius: 20px;
      --radius-sm: 12px;
      --radius-xs: 8px;
      --shadow: 0 8px 32px rgba(0, 0, 0, 0.6);
      --shadow-glow: 0 0 40px rgba(168, 85, 247, 0.15);
      --transition: 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      --container: 1280px;
    }

    /* ========== RESET ========== */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Space Grotesk', system-ui, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      overflow-x: hidden;
    }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
      color: inherit;
    }
    input, select { font-family: inherit; }
    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 28px;
    }
    .sr-only {
      position: absolute; width: 1px; height: 1px;
      padding: 0; margin: -1px; overflow: hidden;
      clip: rect(0,0,0,0); border: 0;
    }

    /* ========== TYPOGRAPHY ========== */
    h1, h2, h3, h4, h5 {
      font-family: 'Syne', sans-serif;
      font-weight: 800;
      letter-spacing: -0.03em;
    }

    /* ========== BUTTONS ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 30px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 2px solid transparent;
      font-family: 'Space Grotesk', sans-serif;
      letter-spacing: 0.01em;
    }
    .btn-primary {
      background: linear-gradient(135deg, var(--primary), var(--primary-glow));
      color: #0b0b10;
      border-color: transparent;
      box-shadow: 0 4px 20px rgba(168, 85, 247, 0.35);
    }
    .btn-primary:hover {
      transform: translateY(-3px) scale(1.02);
      box-shadow: 0 8px 32px rgba(168, 85, 247, 0.55);
    }
    .btn-secondary {
      background: var(--bg-card);
      color: var(--text);
      border-color: var(--border);
    }
    .btn-secondary:hover {
      background: var(--bg-card-hover);
      border-color: var(--primary);
      transform: translateY(-3px);
      box-shadow: var(--shadow-glow);
    }
    .btn-outline {
      background: transparent;
      color: var(--text);
      border-color: var(--border-light);
    }
    .btn-outline:hover {
      border-color: var(--primary);
      color: var(--primary);
      transform: translateY(-2px);
    }
    .btn-sm { padding: 9px 20px; font-size: 13px; }

    /* ========== HEADER ========== */
    header {
      position: sticky;
      top: 0;
      z-index: 200;
      background: rgba(11, 11, 16, 0.85);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid var(--border);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 18px;
      padding: 14px 0;
      min-height: 76px;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
      font-family: 'Syne', sans-serif;
      font-weight: 800;
      font-size: 24px;
      letter-spacing: -0.04em;
      color: var(--text);
      flex-shrink: 0;
    }
    .brand .accent {
      background: linear-gradient(135deg, var(--primary), var(--accent));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand i {
      font-size: 28px;
      color: var(--primary);
      filter: drop-shadow(0 0 12px rgba(168, 85, 247, 0.5));
    }
    nav.main-nav ul {
      display: flex;
      gap: 2px;
      list-style: none;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--text-muted);
      transition: var(--transition);
    }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: rgba(168, 85, 247, 0.12);
      color: var(--primary);
    }
    nav.main-nav li a i { font-size: 14px; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
      flex-shrink: 0;
    }
    .header-actions .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 18px;
      color: var(--text-muted);
      transition: var(--transition);
      position: relative;
    }
    .header-actions .icon-btn:hover {
      background: var(--bg-card);
      color: var(--primary);
    }
    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute;
      top: -2px; right: -2px;
      background: var(--primary);
      color: #0b0b10;
      font-size: 11px;
      font-weight: 800;
      width: 20px; height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid var(--bg);
      transition: transform 0.2s;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--bg-card);
      border-radius: 60px;
      padding: 0 18px 0 20px;
      transition: var(--transition);
      border: 2px solid transparent;
      min-width: 240px;
    }
    .search-wrap:focus-within {
      border-color: var(--primary);
      background: var(--bg-elevated);
      box-shadow: 0 0 0 4px rgba(168, 85, 247, 0.1);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 11px 0;
      font-size: 14px;
      color: var(--text);
    }
    .search-wrap input::placeholder { color: var(--text-dim); }
    .search-wrap button {
      padding: 8px 0 8px 12px;
      color: var(--text-muted);
      font-size: 15px;
      transition: var(--transition);
    }
    .search-wrap button:hover { color: var(--primary); }

    .mobile-toggle {
      display: none;
      width: 44px; height: 44px;
      border-radius: 50%;
      font-size: 20px;
      background: var(--bg-card);
      color: var(--text);
      transition: var(--transition);
    }
    .mobile-toggle:hover { background: var(--bg-card-hover); }

    #mobileMenu {
      display: none;
      background: var(--bg-elevated);
      border-top: 1px solid var(--border);
      padding: 16px 0 24px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 14px 20px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--text-muted);
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover { background: var(--bg-card); color: var(--primary); }
    #mobileMenu ul li a i { width: 22px; color: var(--primary); }

    /* ========== HERO ========== */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 540px;
      padding: 70px 0;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 24px 28px 0;
      background: var(--bg-elevated);
      border: 1px solid var(--border);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.15;
      z-index: 0;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(ellipse at 30% 50%, rgba(168, 85, 247, 0.12) 0%, transparent 60%),
                  radial-gradient(ellipse at 80% 80%, rgba(56, 189, 248, 0.06) 0%, transparent 50%);
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge {
      display: inline-block;
      background: rgba(168, 85, 247, 0.15);
      color: var(--primary);
      padding: 6px 20px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
      letter-spacing: 0.05em;
      margin-bottom: 22px;
      border: 1px solid rgba(168, 85, 247, 0.25);
      backdrop-filter: blur(4px);
    }
    .hero h1 {
      font-size: 56px;
      color: var(--text);
      line-height: 1.1;
      max-width: 700px;
      margin-bottom: 20px;
      text-shadow: 0 4px 30px rgba(0,0,0,0.5);
    }
    .hero h1 span {
      background: linear-gradient(135deg, var(--primary), var(--accent));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .hero p {
      color: var(--text-muted);
      font-size: 17px;
      max-width: 540px;
      margin-bottom: 34px;
      line-height: 1.7;
    }
    .hero .actions { display: flex; gap: 14px; flex-wrap: wrap; }

    /* ========== SECTION ========== */
    .section { padding: 64px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 40px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 32px;
      letter-spacing: -0.04em;
    }
    .section-header .title-group p {
      color: var(--text-muted);
      margin-top: 6px;
      font-size: 15px;
    }
    .section-header .view-all {
      font-weight: 600;
      color: var(--primary);
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 14px;
      transition: var(--transition);
      white-space: nowrap;
    }
    .section-header .view-all:hover { gap: 14px; color: var(--accent); }

    /* ========== CATEGORIES ========== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 18px;
      text-align: center;
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid var(--border);
      position: relative;
      overflow: hidden;
    }
    .cat-card::before {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(135deg, rgba(168, 85, 247, 0.08), transparent);
      opacity: 0;
      transition: var(--transition);
    }
    .cat-card:hover {
      transform: translateY(-8px);
      border-color: var(--primary);
      box-shadow: var(--shadow-glow);
    }
    .cat-card:hover::before { opacity: 1; }
    .cat-card .icon-wrap {
      width: 60px;
      height: 60px;
      border-radius: 16px;
      background: rgba(168, 85, 247, 0.12);
      display: grid;
      place-items: center;
      margin: 0 auto 16px;
      font-size: 26px;
      color: var(--primary);
      transition: var(--transition);
      position: relative;
      z-index: 1;
    }
    .cat-card:hover .icon-wrap {
      background: var(--primary);
      color: #0b0b10;
      transform: scale(1.08);
    }
    .cat-card h4 {
      font-size: 15px;
      font-weight: 700;
      position: relative;
      z-index: 1;
    }
    .cat-card .count {
      font-size: 13px;
      color: var(--text-dim);
      margin-top: 4px;
      position: relative;
      z-index: 1;
    }

    /* ========== PRODUCTS ========== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid var(--border);
    }
    .product-card:hover {
      transform: translateY(-8px);
      border-color: var(--border-light);
      box-shadow: var(--shadow);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--bg-elevated);
      aspect-ratio: 1/1;
    }
    .product-card .img-wrap img {
      width: 100%; height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.06); }
    .product-card .badge {
      position: absolute;
      top: 14px; left: 14px;
      background: var(--primary);
      color: #0b0b10;
      padding: 5px 14px;
      border-radius: 60px;
      font-size: 11px;
      font-weight: 800;
      letter-spacing: 0.04em;
      text-transform: uppercase;
    }
    .product-card .badge.sale {
      background: var(--warning);
      color: #0b0b10;
    }
    .product-card .wish-btn {
      position: absolute;
      top: 14px; right: 14px;
      width: 38px; height: 38px;
      border-radius: 50%;
      background: rgba(11, 11, 16, 0.7);
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--text-muted);
      transition: var(--transition);
      backdrop-filter: blur(8px);
      border: 1px solid var(--border);
    }
    .product-card .wish-btn:hover {
      background: var(--primary);
      color: #0b0b10;
      transform: scale(1.1);
      border-color: transparent;
    }
    .product-card .body {
      padding: 18px 20px 16px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .product-card .body .category-tag {
      font-size: 11px;
      color: var(--text-dim);
      text-transform: uppercase;
      letter-spacing: 0.08em;
      font-weight: 700;
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 700;
      line-height: 1.35;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 6px;
    }
    .product-card .body .price {
      font-weight: 800;
      font-size: 20px;
      color: var(--primary);
    }
    .product-card .body .old-price {
      color: var(--text-dim);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 5px;
      font-size: 13px;
      color: var(--warning);
    }
    .product-card .body .rating span {
      color: var(--text-dim);
      font-weight: 400;
    }
    .product-card .footer {
      padding: 0 20px 18px;
      display: flex;
      gap: 10px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 12px;
      border-radius: var(--radius-xs);
      background: var(--bg-elevated);
      color: var(--text);
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      border: 1px solid var(--border);
    }
    .product-card .footer .add-btn:hover {
      background: var(--primary);
      color: #0b0b10;
      border-color: var(--primary);
      transform: scale(1.02);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
      color: #0b0b10;
      border-color: var(--success);
    }

    /* ========== DEAL ========== */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      border: 1px solid var(--border);
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--bg-elevated);
      min-height: 340px;
    }
    .deal-wrap .deal-img img { width: 100%; height: 100%; object-fit: cover; }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 48px 52px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: rgba(251, 191, 36, 0.15);
      color: var(--warning);
      padding: 6px 16px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.06em;
      align-self: flex-start;
      margin-bottom: 16px;
      border: 1px solid rgba(251, 191, 36, 0.3);
    }
    .deal-wrap .deal-content h3 {
      font-size: 32px;
      margin-bottom: 8px;
    }
    .deal-wrap .deal-content .desc {
      color: var(--text-muted);
      margin-bottom: 22px;
      font-size: 15px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 38px;
      font-weight: 800;
      color: var(--primary);
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 22px;
      font-weight: 400;
      color: var(--text-dim);
      text-decoration: line-through;
      margin-left: 14px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--text-muted);
      margin: 6px 0 20px;
    }
    .deal-wrap .deal-content .stock strong { color: var(--danger); }

    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 20px 0 28px;
    }
    .timer-box {
      background: var(--bg-elevated);
      border: 1px solid var(--border);
      color: var(--text);
      padding: 12px 18px;
      border-radius: var(--radius-sm);
      min-width: 76px;
      text-align: center;
      transition: var(--transition);
    }
    .timer-box:hover { border-color: var(--primary); }
    .timer-box .num {
      font-size: 28px;
      font-weight: 800;
      line-height: 1.2;
      color: var(--primary);
    }
    .timer-box .label {
      font-size: 10px;
      opacity: 0.6;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      font-weight: 600;
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--primary-dim);
      border-radius: 999px;
    }
    .testimonial-card {
      flex: 0 0 360px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 30px;
      border: 1px solid var(--border);
      scroll-snap-align: start;
      transition: var(--transition);
    }
    .testimonial-card:hover {
      border-color: var(--border-light);
      box-shadow: var(--shadow-glow);
    }
    .testimonial-card .stars {
      color: var(--warning);
      font-size: 16px;
      letter-spacing: 3px;
      margin-bottom: 14px;
    }
    .testimonial-card blockquote {
      font-size: 15px;
      line-height: 1.7;
      color: var(--text-muted);
      margin-bottom: 18px;
      font-style: italic;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .testimonial-card .author .avatar {
      width: 48px; height: 48px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--bg-elevated);
      border: 2px solid var(--border);
    }
    .testimonial-card .author .name {
      font-weight: 700;
      font-size: 14px;
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--text-dim);
    }

    /* ========== NEWSLETTER ========== */
    .newsletter-wrap {
      background: linear-gradient(135deg, var(--bg-card) 0%, var(--bg-elevated) 100%);
      border-radius: var(--radius);
      padding: 52px 60px;
      color: var(--text);
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 36px;
      flex-wrap: wrap;
      border: 1px solid var(--border);
      position: relative;
      overflow: hidden;
    }
    .newsletter-wrap::before {
      content: '';
      position: absolute;
      top: -50%; left: -20%;
      width: 60%; height: 200%;
      background: radial-gradient(circle, rgba(168, 85, 247, 0.08) 0%, transparent 70%);
      pointer-events: none;
    }
    .newsletter-wrap .text h3 {
      font-size: 28px;
      margin-bottom: 6px;
    }
    .newsletter-wrap .text p {
      color: var(--text-muted);
      font-size: 15px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 500px;
      position: relative;
      z-index: 1;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 16px 22px;
      border-radius: 60px;
      border: 1px solid var(--border);
      font-size: 15px;
      background: var(--bg);
      color: var(--text);
      transition: var(--transition);
      outline: none;
    }
    .newsletter-wrap form input::placeholder { color: var(--text-dim); }
    .newsletter-wrap form input:focus {
      border-color: var(--primary);
      box-shadow: 0 0 0 4px rgba(168, 85, 247, 0.1);
    }
    .newsletter-wrap form .btn {
      background: linear-gradient(135deg, var(--primary), var(--primary-glow));
      color: #0b0b10;
      padding: 16px 34px;
      font-weight: 700;
    }
    .newsletter-wrap form .btn:hover {
      box-shadow: 0 8px 32px rgba(168, 85, 247, 0.45);
    }
    #newsletterMsg {
      margin-top: 14px;
      font-size: 14px;
      width: 100%;
      position: relative;
      z-index: 1;
    }

    /* ========== FOOTER ========== */
    footer {
      margin-top: 24px;
      padding: 56px 0 32px;
      border-top: 1px solid var(--border);
      background: var(--bg-elevated);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }
    .footer-grid .brand-col .brand {
      font-size: 22px;
      margin-bottom: 12px;
    }
    .footer-grid .brand-col p {
      color: var(--text-muted);
      font-size: 14px;
      max-width: 320px;
      line-height: 1.7;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 20px;
    }
    .footer-grid .brand-col .socials a {
      width: 42px; height: 42px;
      border-radius: 50%;
      background: var(--bg-card);
      border: 1px solid var(--border);
      display: grid;
      place-items: center;
      color: var(--text-muted);
      transition: var(--transition);
      font-size: 16px;
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--primary);
      color: #0b0b10;
      border-color: var(--primary);
      transform: translateY(-3px);
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 16px;
      color: var(--text);
      letter-spacing: 0.02em;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }
    .footer-grid .col ul li a {
      color: var(--text-muted);
      font-size: 14px;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover { color: var(--primary); }
    .footer-bottom {
      text-align: center;
      padding-top: 24px;
      border-top: 1px solid var(--border);
      color: var(--text-dim);
      font-size: 13px;
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
    }
    @media (max-width: 992px) {
      .hero h1 { font-size: 40px; }
      .hero { min-height: 420px; margin: 20px 20px 0; padding: 50px 0; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 260px; }
      .deal-wrap .deal-content { padding: 32px 34px; }
      .newsletter-wrap { padding: 36px 32px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .search-wrap { min-width: 160px; }
    }
    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .hero h1 { font-size: 32px; }
      .hero p { font-size: 15px; }
      .section-header .title-group h2 { font-size: 24px; }
      .deal-wrap .deal-content h3 { font-size: 24px; }
      .deal-wrap .deal-content .price-big { font-size: 28px; }
      .timer-box { min-width: 60px; padding: 10px 14px; }
      .timer-box .num { font-size: 22px; }
      .footer-grid { grid-template-columns: 1fr; gap: 24px; }
      .brand { font-size: 20px; }
      .brand i { font-size: 22px; }
      .search-wrap { min-width: 130px; padding: 0 12px 0 16px; }
      .search-wrap input { font-size: 13px; padding: 9px 0; }
      .header-actions .icon-btn { width: 38px; height: 38px; font-size: 16px; }
      .cart-count { width: 18px; height: 18px; font-size: 10px; }
      .testimonial-card { flex: 0 0 300px; }
      .hero .actions .btn { padding: 12px 22px; font-size: 14px; }
      .section { padding: 44px 0; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero { margin: 12px 12px 0; min-height: 340px; padding: 36px 0; border-radius: var(--radius-sm); }
      .hero h1 { font-size: 26px; }
      .container { padding: 0 16px; }
      .deal-wrap .deal-content { padding: 24px 20px; }
      .deal-wrap .deal-img { flex: 0 0 200px; }
      .newsletter-wrap { padding: 28px 20px; }
      .newsletter-wrap .text h3 { font-size: 22px; }
      .product-card .body { padding: 14px 14px 10px; }
      .product-card .body h5 { font-size: 13px; }
      .product-card .body .price { font-size: 16px; }
      .product-card .footer { padding: 0 14
