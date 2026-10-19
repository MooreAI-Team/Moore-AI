# Moore AI

Moore AI is an AI consulting company that specializes in building practical AI solutions for businesses. We focus on delivering real results through strategic implementation of artificial intelligence technologies.

## Our Services

- Custom AI Development
- Business Process Automation
- AI Strategy Consulting
- Machine Learning Implementation
- AI Integration Solutions

## About Us

We believe AI should feel less like hype and more like help. Our team of engineers and strategic thinkers work with businesses from startups to enterprises, building tailored solutions that actually make a difference.

## Contact Information

**Address:** 19 8th St S PMB 514, Fargo, ND 58103

**Website:** [mooreai.net](https://mooreai.net)

## Local Test Instance

Run a local copy of the site with auto-reload for development. Requires Python 3.

```bash
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
.venv/bin/python app.py
```

If `python3 -m venv` fails because `ensurepip` is unavailable, either install your
distro's venv package (e.g. `sudo apt install python3-venv`) or use
[uv](https://docs.astral.sh/uv/):

```bash
uv venv .venv
uv pip install --python .venv/bin/python -r requirements.txt
```

Open <http://localhost:5000>. The server runs in debug mode, so it restarts when
you save `app.py`, and template and static file changes show up on refresh.
Stop it with `Ctrl+C`.

Notes:

- A `.env` file is optional locally. Without `EMAIL_APP_PASSWORD` and
  `RECAPTCHA_SECRET_KEY`, the contact form won't send email or verify reCAPTCHA;
  the app logs a warning instead.
- Contact-form submissions are written to `data.csv` / `spam.txt` in the project
  directory (git-ignored). Set `DATA_DIR` to write them elsewhere.

## Docker Compose

Create a `.env` file from `.env.example`, then start the site:

```bash
cp .env.example .env
docker compose up -d --build
```

The app is intended to sit behind Traefik. It does not publish a host port;
Traefik routes HTTP traffic for `mooreai.net` and `www.mooreai.net` to the
container's internal port `8000`.

Runtime contact-form files are stored in the `app-data` Docker volume.
Stop the site with:

```bash
docker compose down
```

**Professional Links:**

- [LinkedIn](https://www.linkedin.com/in/zach-moore-aa0535332/)
- [GitHub](https://github.com/Zach-A-Moore)

---

*Ready to transform your business with AI? Let's build something that actually makes a difference.*
- Address: 19 8th St S PMB 514, Fargo, ND 58103
