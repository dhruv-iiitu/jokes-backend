# Deploying jokes-backend to Railway (Free + PostgreSQL)

> **Move this file to your project root** (`jokes-backend/`) after reading — it doesn't belong in the Java source folder.

---

## What is Railway?

Railway is a cloud hosting platform that lets you deploy apps directly from GitHub for free. It auto-detects Maven/Spring Boot projects, builds them, and runs them — no server setup needed.

**Free tier:** $5/month of usage credits (plenty for a hobby project at low traffic).

---

## Step 1 — Push your project to GitHub

If you haven't already:

1. Go to [github.com](https://github.com) → **New repository** → name it `jokes-backend` → Create.
2. In your project root folder (`jokes-backend/`), open a terminal and run:

```bash
git init
git add .
git commit -m "initial commit"
git remote add origin https://github.com/YOUR_USERNAME/jokes-backend.git
git push -u origin main
```

---

## Step 2 — Add PostgreSQL driver to pom.xml

Open `pom.xml` and check if you already have this dependency. If not, add it inside `<dependencies>`:

```xml
<dependency>
    <groupId>org.postgresql</groupId>
    <artifactId>postgresql</artifactId>
    <scope>runtime</scope>
</dependency>
```

---

## Step 3 — Add a production application properties file

Create a new file at:
```
src/main/resources/application-prod.properties
```

Paste this content (already created for you — see `application-prod.properties` in the source folder):

```properties
spring.datasource.url=jdbc:postgresql://${PGHOST}:${PGPORT}/${PGDATABASE}
spring.datasource.username=${PGUSER}
spring.datasource.password=${PGPASSWORD}
spring.datasource.driver-class-name=org.postgresql.Driver
spring.jpa.database-platform=org.hibernate.dialect.PostgreSQLDialect
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=false
server.port=${PORT:8080}
```

Railway will automatically inject the `PGHOST`, `PGPORT`, `PGDATABASE`, `PGUSER`, `PGPASSWORD`, and `PORT` environment variables when you add the PostgreSQL plugin.

---

## Step 4 — Commit and push these changes

```bash
git add .
git commit -m "add Railway production config"
git push
```

---

## Step 5 — Create your Railway project

1. Go to [railway.app](https://railway.app) and sign up (use your GitHub account — easiest).
2. Click **"New Project"** → **"Deploy from GitHub repo"**.
3. Select your `jokes-backend` repository.
4. Railway will detect it's a Maven project and start building automatically.

---

## Step 6 — Add a PostgreSQL database

1. In your Railway project dashboard, click **"New"** → **"Database"** → **"Add PostgreSQL"**.
2. Railway automatically adds the database and injects all the `PG*` environment variables into your app service. No extra config needed.

---

## Step 7 — Set the Spring profile to "prod"

1. In your Railway dashboard, click on your **app service** (not the database).
2. Go to the **"Variables"** tab.
3. Add this environment variable:

| Name | Value |
|---|---|
| `SPRING_PROFILES_ACTIVE` | `prod` |

This tells Spring Boot to use your `application-prod.properties` file.

---

## Step 8 — Deploy!

Railway will automatically redeploy when you push to GitHub, or you can click **"Deploy"** manually in the dashboard.

Once deployed, click on your service → **"Settings"** → **"Generate Domain"** to get a public URL like:

```
https://jokes-backend-production.up.railway.app
```

---

## Testing your live API

Once deployed, test it with:

```
GET https://YOUR_RAILWAY_URL/joke/Any?amount=5
POST https://YOUR_RAILWAY_URL/joke
```

---

## Troubleshooting

| Problem | Fix |
|---|---|
| Build fails | Check the Railway logs tab — usually a missing dependency or Java version mismatch |
| DB connection error | Make sure `SPRING_PROFILES_ACTIVE=prod` is set in Variables |
| App crashes on start | Check that `application-prod.properties` is in `src/main/resources/` and committed to Git |
| Port issues | Railway sets `PORT` automatically — the config above handles this |

---

## Quick Summary

```
GitHub repo → Railway project → Add PostgreSQL plugin → Set SPRING_PROFILES_ACTIVE=prod → Done ✓
```
