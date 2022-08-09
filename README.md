# Prisma migrations

## Install dependencies

```
npm install
```

## DATABASE_URL

```
postgresql://<USER>:<PASSWORD>@localhost:<PORT>/<DB_NAME>?schema=public
```

## Migrations scripts 
```
npx prisma migrate dev --name init
```
```
npx prisma migrate dev --name added_username_column
```
```
npx prisma migrate dev --name connect_users_posts_tables
```
Add a new user with the script and run it with:
```
INSERT INTO users ("fullName", email, password, bio, username)
VALUES ('John Doe', 'john@yahoo.com', 'johndoe', 'Im a software developer', 'johndoe');
``` 
```
npx prisma migrate dev --name update_biography --create-only
```
The last one only create the migration file because use the flag --create-only

Run this to change the column "bio" to "biography"
```
ALTER TABLE "users" RENAME COLUMN "bio" TO "biography";
```

finnally run the command to apply the changes in the migration file
```
npx prisma migrate dev
```
The migrate dev command will prompt you to reset the database in the following scenarios:

Migration history conflicts caused by modified or missing migrations
The database schema has drifted away from the end-state of the migration history