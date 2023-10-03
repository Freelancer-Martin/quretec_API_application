-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "password" TEXT
);

-- CreateTable
CREATE TABLE "Session" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "sessionToken" TEXT NOT NULL,
    "expires" DATETIME NOT NULL,
    CONSTRAINT "Session_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Item" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "description" TEXT NOT NULL,
    "userId" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "Invoice" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "SIHId" TEXT NOT NULL,
    "DepartmentCode" TEXT,
    "DepartmentName" TEXT,
    "Dimension1Code" TEXT,
    "Dimension2Code" TEXT,
    "TotalAmount" REAL NOT NULL,
    "ProfitAmount" REAL NOT NULL,
    "TotalSum" REAL NOT NULL,
    "UserName" TEXT NOT NULL,
    "ReferenceNo" TEXT NOT NULL,
    "PriceInclVat" BOOLEAN NOT NULL,
    "VatRegNo" TEXT,
    "PaidAmount" REAL NOT NULL,
    "EInvSent" BOOLEAN NOT NULL,
    "EInvSentDate" DATETIME NOT NULL,
    "EmailSent" DATETIME NOT NULL,
    "Paid" BOOLEAN NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Session_sessionToken_key" ON "Session"("sessionToken");

-- CreateIndex
CREATE UNIQUE INDEX "Invoice_SIHId_key" ON "Invoice"("SIHId");
