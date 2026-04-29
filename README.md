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
