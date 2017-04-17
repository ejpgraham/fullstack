HMTL

Root
- GET / Loads React web app

Users
- POST /api/users
- PATCH /api/users

Session
- GET /api/session
- POST /api/session
- DELETE /api/session

JSON

Photos
- GET /api/photos
  - if follows are implemented, displays only photos from followed users
  - otherwise displays all photos
- POST /api/photos
- GET /api/photos/:id
- PATCH /api/photos/:id
- DELETE /api/photos/:id

Albums

- GET /api/albums
- POST /api/albums
- GET /api/albums/:id
- PATCH /api/albums/:id
- DELETE /api/albums/:id

Tags

- POST /api/photos/:photo_id/tags
- DELETE /api/photos/:photo_id/tags/:id

Comments

- POST /api/photos/:photo_id/comments
- DELETE /api/photos/:photo_id/comments/:id
