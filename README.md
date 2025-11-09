### Hexlet tests and linter status:
[![Actions Status](https://github.com/vladvysth/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/vladvysth/devops-for-developers-project-74/actions)
[![Docker CI](https://github.com/vladvysth/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/vladvysth/devops-for-developers-project-74/actions/workflows/push.yml)

# DevOps для разработчиков - Проект 74

Блог на Fastify с Docker и CI/CD

## Docker Hub

Образ приложения: [vladvysth/hexlet-1](https://hub.docker.com/r/vladvysth/hexlet-1)

## Требования

- Docker
- Docker Compose
- Make

## Технологии

- **Fastify** - веб-фреймворк
- **PostgreSQL** - база данных
- **Caddy** - reverse proxy с HTTPS
- **Docker** - контейнеризация
- **GitHub Actions** - CI/CD

## Структура проекта

- `app/` - исходный код приложения
- `services/caddy/` - конфигурация Caddy reverse proxy
- `Dockerfile` - для разработки
- `Dockerfile.production` - для production образа
- `docker-compose.yml` - конфигурация для тестов
- `docker-compose.override.yml` - override конфигурации для разработки

## Установка и запуск


### Установка зависимостей

```bash
make dev-setup
```

### Запуск приложения с Caddy
```bash
make dev
```

> Приложение будет доступно:
> - http://localhost
> - https://localhost

### Запуск тестов в Docker

```bash
make tests
```
