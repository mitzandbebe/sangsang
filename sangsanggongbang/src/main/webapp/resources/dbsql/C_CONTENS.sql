/* 클래스 컨텐츠 */
CREATE TABLE C_CONTENTS (
	CONTENTS_NO NUMBER NOT NULL, /* 컨텐츠번호 */
	C_NO NUMBER, /* 클래스코드 */
	CONTENTS_CONTENT NCLOB, /* 내용 */
	THUMBNAIL VARCHAR2(255), /* 썸네일 */
	CONTENTS_FILENAME1 VARCHAR2(255) NOT NULL, /* 사진업로드명 */
	CONTENTS_FILENAME2 VARCHAR2(255) NOT NULL, /* 사진업로드명3 */
	CONTENTS_FILENAME3 VARCHAR2(255) NOT NULL, /* 사진업로드명4 */
	CONTENTS_FILENAME4 VARCHAR2(255) NOT NULL, /* 사진업로드명5 */
	CONTENTS_FILENAME5 VARCHAR2(255) NOT NULL /* 사진업로드명6 */
);

ALTER TABLE C_CONTENTS
	ADD
		CONSTRAINT PK_C_CONTENTS
		PRIMARY KEY (
			CONTENTS_NO
		);

ALTER TABLE C_CONTENTS
	ADD
		CONSTRAINT FK_HOSTCLASS_TO_C_CONTENTS
		FOREIGN KEY (
			C_NO
		)
		REFERENCES HOSTCLASS (
			C_NO
		);


CREATE SEQUENCE C_CONTENTS_SEQ
INCREMENT BY 1
START WITH 1
NOCACHE;