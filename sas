<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NeoSpin Bonus – 100 Free Spins</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;700&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Montserrat', sans-serif;
      background: linear-gradient(160deg, #081c15 0%, #0b281f 100%);
      color: #ffffff;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;
      text-align: center;
      padding: 40px 20px;
    }

    .logo {
      font-size: 1.6rem;
      font-weight: 700;
      color: #00ffcc;
      letter-spacing: 1px;
      margin-bottom: 24px;
    }

    .headline {
      font-size: 2rem;
      font-weight: 700;
      margin-bottom: 16px;
      color: #ffffff;
    }

    .subheadline {
      font-size: 1.05rem;
      color: #b8f3e8;
      margin-bottom: 32px;
      line-height: 1.5;
    }

    .cta-button {
      background: #00ffcc;
      color: #0a0a0a;
      font-size: 1.1rem;
      font-weight: 600;
      padding: 16px 28px;
      border: none;
      border-radius: 10px;
      text-decoration: none;
      box-shadow: 0 0 18px #00ffcc;
      transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .cta-button:hover {
      transform: scale(1.05);
      box-shadow: 0 0 26px #00ffcc;
    }

    .badges {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 12px;
      margin-top: 36px;
    }

    .badge {
      background: rgba(255, 255, 255, 0.05);
      border: 1px solid #00ffcc44;
      color: #c9fdf4;
      padding: 10px 16px;
      border-radius: 8px;
      font-size: 0.85rem;
    }

    .bonuses {
      text-align: left;
      max-width: 480px;
      margin-top: 40px;
      background: rgba(255, 255, 255, 0.04);
      border: 1px solid #00ffcc33;
      border-radius: 10px;
      padding: 20px;
    }

    .bonuses h3 {
      color: #00ffcc;
      margin-bottom: 10px;
    }

    .bonuses ul {
      list-style: none;
      padding: 0;
      font-size: 0.95rem;
      line-height: 1.6;
    }

    .bonuses li::before {
      content: '•';
      margin-right: 8px;
      color: #00ffcc;
    }

    .countries {
      margin-top: 20px;
      font-size: 0.85rem;
      color: #ccc;
    }

    .feedback-bubble {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: #00ffcc;
      width: 48px;
      height: 48px;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      box-shadow: 0 0 10px rgba(0,0,0,0.4);
      z-index: 9999;
      cursor: pointer;
    }

    .feedback-bubble::before {
      content: '✉';
      font-size: 22px;
      color: #000;
    }

    .feedback-form {
      position: fixed;
      bottom: 80px;
      right: 20px;
      background: #0f2f24;
      border: 1px solid #00ffcc;
      border-radius: 10px;
      padding: 15px;
      width: 260px;
      display: none;
      flex-direction: column;
      z-index: 9999;
    }

    $1
      box-sizing: border-box;
      overflow-wrap: break-word;
      word-break: break-word;

    .feedback-form button {
      margin-top: 10px;
      background: #00ffcc;
      color: #000;
      font-weight: bold;
      border: none;
      padding: 10px;
      border-radius: 6px;
      cursor: pointer;
    }

    @media screen and (max-width: 400px) {
      .headline { font-size: 1.6rem; }
      .subheadline { font-size: 1rem; }
    }
  </style>
</head>
<body>
  <div class="logo"><img src="lion-transparent.png" alt="NeoSpin Logo" style="max-width: 120px; height: auto;"></div>

  <div class="subheadline">Sign up in 30 seconds and unlock a generous welcome offer on our hottest slots — available in New Zealand and more!</div>

  <a href="https://your-ref-link.com" class="cta-button">START PLAYING</a>

  <div class="badges">
    <div class="badge">✔️ No KYC Needed</div>
    <div class="badge">⚡ Instant Payouts</div>
    <div class="badge">📱 Mobile-Optimized</div>
    <div class="badge">🌐 International Access</div>
  </div>

  <div class="bonuses">
    <h3>Offers for New Players</h3>
    <ul>
      <li>Daily cashback up to 20%</li>
      <li>Welcome 100% up to $6,500 NZD + 100 FS</li>
      <li>Wednesday Free Spins</li>
      <li>Weekend reload 66% up to $710 NZD</li>
      <li>Weekly tournaments</li>
    </ul>
    <div class="countries">
      Available in: Australia, Canada, Germany, New Zealand, Denmark, Austria, Switzerland, Ireland, Slovenia, UAE.<br>
      Launched in 2022 • Licensed in Curacao
    </div>
  </div>

  <div class="feedback-bubble" onclick="document.querySelector('.feedback-form').style.display = 'flex';"></div>

  <div class="feedback-form">
    <textarea placeholder="Your feedback..."></textarea>
    <button onclick="alert('Thank you for your feedback!'); document.querySelector('.feedback-form').style.display = 'none';">Send</button>
  </div>

  <script>
    history.pushState(null, document.title, location.href);
    window.addEventListener('popstate', function () {
      location.href = 'https://your-ref-link.com';
    });
  </script>

</body>
</html>
