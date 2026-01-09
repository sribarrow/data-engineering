## Authentication

1. Client encrypts password using RSA pub key
2. Server decrypts password using RSA priv key
3. Password verified using bcrypt
4. JWT Token issued
5. Routes secured with JWT dependency

## Tech stack
Python 3.11
MySQL
OpenSSL
Postman/ThunderClient/Swagger

uv - env management
ruff - dev
pytest - dev

## Folders
| Folder | Purpose |
|---|---|
| `app/` | Main application package (API entrypoints, app config) |
| `app/api/` | API Endpoints |
| `app/db/` | Database connection |
| `app/middleware/` | JWT Auth |
| `app/utils/` | helpers |
| `storage/rsa/` | key store |
