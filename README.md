# Custom WordPress for Coolify

This repository contains a custom Docker configuration for WordPress, designed to work with Coolify and overcome default limitations.

## Features

- **PHP 8.4**: Uses the latest PHP version standard.
- **Imagick Support**: Pre-installed and configured for image processing.
- **High Upload Limits**: Configured for 512MB uploads and memory limit (great for large imports/backups).
- **MariaDB**: Integrated database service.

## Installation in Coolify

1.  **Push to Git**: Push this repository to your GitHub/GitLab.
2.  **Create Service**: In Coolify, select **+ Add** -> **Repositories -> (Your Git Source)**.
3.  **Select Repository**: Choose this repository.
4.  **Configuration**:
    - **Build Pack**: Select **Docker Compose**.
    - **Domains**: Set your domain (e.g., `https://my-wordpress.com`).
5.  **Environment Variables**:
    - Coolify might auto-detect variables from `.env.example`. If not, add them manually in the "Environment Variables" tab:
        - `WORDPRESS_DB_NAME`
        - `WORDPRESS_DB_USER`
        - `WORDPRESS_DB_PASSWORD`
        - `MYSQL_ROOT_PASSWORD`
6.  **Deploy**: Click **Deploy**.

> **Note**: The first deployment might take a few minutes as it needs to build the custom Docker image (installing Imagick).

## Local Development

1.  Copy `.env.example` to `.env`.
2.  Run `docker-compose up -d`.
3.  Access `http://localhost`.
