CREATE TABLE "Group" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "name" TEXT NOT NULL,
    "belongs_to" INTEGER
)

CREATE TABLE "Person" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "name" TEXT NOT NULL,
    "group" INTEGER
)

select person.* from person join group on group=belongs_to where group.name="G1";