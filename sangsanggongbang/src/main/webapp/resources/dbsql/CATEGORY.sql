/* 카테고리 */
CREATE TABLE CATEGORY (
	CATEGORY_CODE NUMBER NOT NULL, /* 카테고리코드 */
	CATEGORY_NAME VARCHAR(100) NOT NULL /* 카테고리이름 */
);

ALTER TABLE CATEGORY
	ADD
		CONSTRAINT PK_CATEGORY
		PRIMARY KEY (
			CATEGORY_CODE
		);

insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'공예DIY');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'베이킹');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'쿠킹');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'문화예술');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'자기계발');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'뷰티');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'여행');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'피트니스');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'스포츠');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'모임');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'스토어');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'온라인');