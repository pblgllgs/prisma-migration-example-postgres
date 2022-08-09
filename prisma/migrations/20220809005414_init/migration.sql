-- CreateTable
CREATE TABLE "users" (
    "id" SERIAL NOT NULL,
    "fullName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "bio" TEXT NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "posts" (
    "id" UUID NOT NULL,
    "postId" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "posts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "followers" (
    "id" UUID NOT NULL,
    "userId" TEXT NOT NULL,
    "followerId" TEXT NOT NULL,

    CONSTRAINT "followers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "likes" (
    "id" UUID NOT NULL,
    "userId" TEXT NOT NULL,
    "postId" TEXT NOT NULL,

    CONSTRAINT "likes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "comments" (
    "id" UUID NOT NULL,
    "userId" TEXT NOT NULL,
    "postId" TEXT NOT NULL,
    "content" TEXT NOT NULL,

    CONSTRAINT "comments_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");
