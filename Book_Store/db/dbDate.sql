CREATE TABLE "member" (
    "id" VARCHAR2(20) NOT NULL,
    "name" VARCHAR2(10) NOT NULL,
    "pwd" VARCHAR2(20) NOT NULL,
    "ages" VARCHAR2(5) NOT NULL,
    "sex" VARCHAR2(5) NOT NULL,
    "email" VARCHAR2(20) NOT NULL,
    "money" NUMBER(10) NOT NULL,
    "member_no" NUMBER(10) NOT NULL
);

CREATE TABLE "book" (
    "book_id" VARCHAR2(10) NOT NULL,
    "subject" VARCHAR2(100) NOT NULL,
    "price" NUMBER(10) NOT NULL,
    "link" VARCHAR2(100) NOT NULL,
    "author" VARCHAR2(10) NOT NULL,
    "publisher" VARCHAR2(20) NOT NULL,
    "like_count" NUMBER(10) NOT NULL,
    "sell_count" NUMBER(10) NOT NULL,
    "amount" NUMBER(10) NOT NULL
);

CREATE TABLE "like_book" (
    "book_id" VARCHAR2(10) NOT NULL,
    "id" VARCHAR2(20) NOT NULL
);

CREATE TABLE "purchase" (
    "purchase_no" NUMBER(10) NOT NULL,
    "book_id" VARCHAR2(10) NOT NULL,
    "id" VARCHAR2(20) NOT NULL,
    "state" VARCHAR2(10) NOT NULL
);


ALTER TABLE "member" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("id");

ALTER TABLE "book" ADD CONSTRAINT "PK_BOOK" PRIMARY KEY ("book_id");

ALTER TABLE "like_book" ADD CONSTRAINT "PK_LIKE_BOOK" PRIMARY KEY ("book_id", "id");

ALTER TABLE "purchase" ADD CONSTRAINT "PK_PURCHASE" PRIMARY KEY ("purchase_no", "book_id", "id");

ALTER TABLE "like_book" ADD CONSTRAINT "FK_book_TO_like_book_1" FOREIGN KEY ("book_id")
REFERENCES "book" ("book_id");

ALTER TABLE "like_book" ADD CONSTRAINT "FK_member_TO_like_book_1" FOREIGN KEY ("id")
REFERENCES "member" ("id");

ALTER TABLE "purchase" ADD CONSTRAINT "FK_book_TO_purchase_1" FOREIGN KEY ("book_id")
REFERENCES "book" ("book_id");

ALTER TABLE "purchase" ADD CONSTRAINT "FK_member_TO_purchase_1" FOREIGN KEY ("id")
REFERENCES "member" ("id");


ALTER TABLE "like_book" DROP CONSTRAINT "PK_LIKE_BOOK";
ALTER TABLE "purchase" DROP CONSTRAINT "PK_PURCHASE";

ALTER TABLE "like_book" DROP CONSTRAINT "FK_member_TO_like_book_1";
ALTER TABLE "purchase" DROP CONSTRAINT "FK_member_TO_purchase_1";

-- member ���̺� ���� ������ ����
INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('john_doe001', 'ȫ�浿', 'P@ssw0rd1', '30', '��', 'john@example.com', 65000, 1);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('emma_smith002', '�̿���', 'Pwd12345', '25', '��', 'emma@example.com', 75000, 2);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('william_johnson003', '�ڹμ�', 'Secret@789', '35', '��', 'william@example.com', 55000, 3);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('sophia_brown004', '������', 'SecurePwd12', '28', '��', 'sophia@example.com', 85000, 4);
-- member ���̺� ���� ������ ����
INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('james_miller005', '��μ�', 'Passw0rd', '40', '��', 'james@example.com', 70000, 5);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('olivia_taylor006', '������', 'Pwd5678', '22', '��', 'olivia@example.com', 60000, 6);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('liam_wilson007', '������', 'Secret123', '33', '��', 'liam@example.com', 80000, 7);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('ava_moore008', '���̼�', 'SecurePwd56', '29', '��', 'ava@example.com', 70000, 8);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('mason_king009', '�ڽ���', 'P@ssw0rd789', '38', '��', 'mason@example.com', 60000, 9);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('mia_turner010', '�輭��', 'Pwd98765', '26', '��', 'mia@example.com', 90000, 10);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('ethan_adams011', '�̹�ȣ', 'SecretPwd78', '32', '��', 'ethan@example.com', 55000, 11);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('isabella_stewart012', '������', 'Secure123Pwd', '27', '��', 'isabella@example.com', 65000, 12);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('noah_robinson013', '�̽�ȣ', 'P@ss123word', '36', '��', 'noah@example.com', 75000, 13);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('sophia_thompson014', '�����', '123SecurePwd', '23', '��', 'sophiath@example.com', 85000, 14);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('liam_scott015', '�ڿ���', 'Pwd@secure12', '41', '��', 'liams@example.com', 60000, 15);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('olivia_wright016', '�̼���', 'SecureP@ss', '28', '��', 'olivia@example.com', 90000, 16);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('william_jackson017', '�ֿ���', 'P@ss12345', '35', '��', 'william@example.com', 75000, 17);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('emma_rodriguez018', '������', 'Secure12@Pwd', '25', '��', 'emma@example.com', 55000, 18);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('james_lee019', '�ŵ���', '123Pwd@secure', '40', '��', 'james@example.com', 85000, 19);

INSERT INTO "member" ("id", "name", "pwd", "ages", "sex", "email", "money", "member_no")
VALUES ('ava_gonzalez020', '�����', 'P@ssword12', '29', '��', 'ava@example.com', 65000, 20);

ALTER TABLE "book" MODIFY ("author" VARCHAR2(30 BYTE));

-- book ���̺� ���� ������ ���� (1���� 20����)
INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk001', '�̿���� ���', 18000, 'https://www.books.com/bk001', '��ù� ��ġ��', '���ǻ�A', 300, 500, 100);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk002', '�ظ����Ϳ� �������� ��', 25000, 'https://www.books.com/bk002', 'J.K. �Ѹ�', '���ǻ�B', 700, 800, 150);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk003', '���ΰ� �ٴ�', 21000, 'https://www.books.com/bk003', '��Ͻ�Ʈ ��ֿ���', '���ǻ�C', 450, 600, 120);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk004', '1984', 22000, 'https://www.books.com/bk004', '���� ����', '���ǻ�D', 400, 550, 130);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk005', '�˰���', 30000, 'https://www.books.com/bk005', 'Ŭ���̸�', '���ǻ�E', 800, 900, 200);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk006', '� ����', 15000, 'https://www.books.com/bk006', '�������丮', '���ǻ�F', 350, 400, 90);



INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk009', '���� �λ��� ����� ���', 28000, 'https://www.books.com/bk009', '�ι�Ʈ �︮', '���ǻ�I', 900, 950, 180);

-- book ���̺� ���� ������ ���� (21���� 30����)
INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk011', '�׿� �����Ѱ�', 27000, 'https://www.books.com/bk011', '����ȣ', '���ǻ�K', 850, 800, 160);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk012', '�Ϻ��� �ǹ�', 19000, 'https://www.books.com/bk012', '��ī�� ���γ��', '���ǻ�L', 600, 700, 130);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk013', '�ູ������ ���� ����� ��� å', 25000, 'https://www.books.com/bk013', '������', '���ǻ�M', 750, 850, 170);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk014', '������ �깮', 31000, 'https://www.books.com/bk014', '������', '���ǻ�N', 920, 1000, 190);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk015', '�ƹ��͵� �ƴϾ��� ��� ��', 20000, 'https://www.books.com/bk015', '�ڼ���', '���ǻ�O', 550, 650, 120);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk016', '���� ���� �ٴ��� Ǫ�� ����', 28000, 'https://www.books.com/bk016', '������', '���ǻ�P', 800, 900, 180);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk017', '������ ��� ������ ���� ���� ��Ÿ�� ��', 24000, 'https://www.books.com/bk017', '������', '���ǻ�Q', 700, 800, 150);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk018', '�̾��ϴ�, ���� �� ������� �ʾ�', 33000, 'https://www.books.com/bk018', '�̹̿�', '���ǻ�R', 1000, 1100, 220);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk019', '��� ������ ������ �ʸ� ����', 22000, 'https://www.books.com/bk019', '�鳭��', '���ǻ�S', 600, 750, 140);

INSERT INTO "book" ("book_id", "subject", "price", "link", "author", "publisher", "like_count", "sell_count", "amount")
VALUES ('bk020', '���̸��� �߰��縻', 26000, 'https://www.books.com/bk020', '���', '���ǻ�T', 750, 850, 170);


-- like_book ���̺� ���� ������ ����
INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk001', 'mia_turner010');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk002', 'mia_turner010');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk003', 'ethan_adams011');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk001', 'isabella_stewart012');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk004', 'noah_robinson013');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk002', 'sophia_thompson014');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk003', 'sophia_thompson014');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk005', 'noah_robinson013');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk006', 'james_smith015');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk007', 'olivia_johnson016');
-- �߰��� 10���� ���� ������ ����
INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk008', 'emma_anderson017');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk009', 'liam_taylor018');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk010', 'ava_wilson019');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk011', 'william_martin020');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk012', 'sophia_thompson014');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk013', 'jackson_anderson021');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk014', 'olivia_johnson016');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk015', 'oliver_miller022');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk016', 'emma_anderson017');

INSERT INTO "like_book" ("book_id", "id")
VALUES ('bk017', 'william_martin020');
ALTER TABLE "purchase" MODIFY "state" VARCHAR2(12);

-- purchase ���̺� ���� ������ ����
INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (1, 'bk001', 'mia_turner010', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (2, 'bk004', 'ethan_adams011', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (3, 'bk002', 'isabella_stewart012', '�������');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (4, 'bk003', 'noah_robinson013', '�������');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (5, 'bk005', 'sophia_thompson014', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (6, 'bk006', 'james_smith015', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (7, 'bk007', 'olivia_johnson016', '�������');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (8, 'bk008', 'emma_anderson017', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (9, 'bk009', 'liam_taylor018', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (10, 'bk010', 'ava_wilson019', '�����Ϸ�');

-- purchase ���̺� �߰��� 10���� ���� ������ ����
INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (11, 'bk011', 'william_martin020', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (12, 'bk012', 'sophia_thompson014', '�������');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (13, 'bk013', 'jackson_anderson021', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (14, 'bk014', 'olivia_johnson016', '�������');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (15, 'bk015', 'oliver_miller022', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (16, 'bk016', 'emma_anderson017', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (17, 'bk017', 'william_martin020', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (18, 'bk018', 'jackson_anderson021', '�������');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (19, 'bk019', 'oliver_miller022', '�����Ϸ�');

INSERT INTO "purchase" ("purchase_no", "book_id", "id", "state")
VALUES (20, 'bk020', 'sophia_thompson014', '�������');
