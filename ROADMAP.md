# DevOps Roadmap: от нуля до Junior DevOps / Cloud Engineer (Германия)

Темп: ~10–15 часов в неделю. Ориентир по времени: 9–12 месяцев до первых откликов.
Каждый этап заканчивается **проектом на GitHub** — это и есть портфолио.

> Честно о рынке в Германии: на «Junior DevOps» без опыта берут редко. Реальные входы:
> Junior Cloud / Linux Admin / IT-Support → DevOps через 1–2 года, либо
> **Umschulung «Fachinformatiker für Systemintegration»** (часто бесплатно через
> Bildungsgutschein от Agentur für Arbeit / Jobcenter). Немецкий на уровне B1–B2
> заметно расширяет выбор вакансий. Учи его параллельно.

---

## Этап 0. Рабочее место (1 неделя)

- [ ] WSL2 + Ubuntu установлены (`wsl --install -d Ubuntu`)
- [ ] VS Code + расширения: WSL, Docker, YAML, GitHub Actions, HashiCorp Terraform
- [ ] git настроен, SSH-ключ добавлен в GitHub
- [ ] Первый коммит в этот репозиторий

## Этап 1. Linux и командная строка (4–6 недель)

Учить: файловая система, права (`chmod`, `chown`), пользователи, процессы (`ps`, `top`, `kill`),
пакеты (`apt`), `systemd` и сервисы, логи (`journalctl`), `grep`/`sed`/`awk`, перенаправления и пайпы.

Ресурсы: [Linux Journey](https://linuxjourney.com), [OverTheWire Bandit](https://overthewire.org/wargames/bandit/) (игра в терминале).

**Проект:** `notes/01-linux.md` — конспект + 30 команд, которыми реально пользуешься.

## Этап 2. Сети (2–3 недели)

Учить: IP, подсети (CIDR), порты, TCP и UDP, DNS, HTTP/HTTPS и TLS, SSH, NAT, firewall (`ufw`).
Утилиты: `ping`, `curl`, `dig`, `ss`, `traceroute`.

**Проект:** поднять nginx в WSL, открыть сайт с Windows, разобрать запрос через `curl -v`.

## Этап 3. Git и GitHub глубже (1–2 недели)

Ветки, merge и rebase, pull request, code review, `.gitignore`, теги, semantic versioning.

**Проект:** вести этот репозиторий через ветки и PR, а не коммитами напрямую в `main`.

## Этап 4. Скрипты: Bash + Python (4 недели)

Bash: переменные, условия, циклы, функции, exit codes, `set -euo pipefail`.
Python: работа с файлами, `requests`, `argparse`, вызов API.

**Проект:** `scripts/`: бэкап папки с ротацией, проверка доступности сайтов, отчёт о системе.
Все скрипты проходят `shellcheck` в CI (уже настроено в `.github/workflows/ci.yml`).

## Этап 5. Docker (4 недели)

Образы и контейнеры, Dockerfile, слои, volumes, сети, `docker compose`, multi-stage builds, размер образа.

**Проект:** репо `docker-compose-stack`: веб-приложение + PostgreSQL + nginx reverse proxy, одной командой.

## Этап 6. CI/CD: GitHub Actions (3 недели)

Workflows, jobs, matrix, secrets, artifacts, кэш, сборка и публикация Docker-образа в GHCR.

**Проект (уникальный для тебя):** CI для Godot-игры: автоматический экспорт билда
Windows/Linux при каждом теге и публикация в GitHub Releases. Делать на **копии** проекта.

## Этап 7. Облако: Azure или AWS (6–8 недель)

В Германии популярны оба; Azure особенно в Mittelstand и корпорациях, AWS в стартапах.
Выбери **одно** облако. Учить: IAM, VM, сети (VNet/VPC), storage, managed DB, мониторинг, контроль расходов.

- [ ] Сертификат начального уровня: **AZ-900** или **AWS Cloud Practitioner**
- [ ] Затем: **AZ-104** или **AWS Solutions Architect Associate**

**Проект:** задеплоить приложение из этапа 5 в облако. Сразу поставить budget alert!

## Этап 8. Infrastructure as Code: Terraform + Ansible (4–5 недель)

Terraform: providers, state, modules, variables, remote backend.
Ansible: inventory, playbooks, roles, идемпотентность.

**Проект:** `terraform-cloud-lab`: вся инфраструктура этапа 7 описана кодом, `terraform destroy` убирает всё.

## Этап 9. Kubernetes (6–8 недель)

Pods, Deployments, Services, Ingress, ConfigMaps/Secrets, Helm. Локально: `kind` или `k3d`.

**Проект:** приложение из этапа 5 в Kubernetes через Helm-чарт + деплой через GitHub Actions.
Позже: сертификат **CKA**.

## Этап 10. Мониторинг и логи (3 недели)

Prometheus, Grafana, Loki, алерты; понятия SLI/SLO.

**Проект:** дашборд Grafana для кластера из этапа 9.

---

## Поиск работы в Германии

- [ ] Профиль GitHub: закреплены 4–6 лучших проектов, у каждого понятный README со схемой
- [ ] LinkedIn (и XING) на английском, лучше и на немецком
- [ ] Lebenslauf в немецком формате (табличный, 1–2 страницы)
- [ ] Площадки: LinkedIn Jobs, StepStone, Indeed, Arbeitsagentur Jobbörse, germantechjobs.de
- [ ] Ключевые слова поиска: *Junior DevOps*, *Junior Cloud Engineer*, *Linux Administrator*, *Systemadministrator*, *Werkstudent DevOps*
