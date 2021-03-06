/* 소식 */
CREATE TABLE NEWS (
	NEWS_NO NUMBER NOT NULL, /* 소식번호 */
	NEWS_TITLE VARCHAR2(255) NOT NULL, /* 제목 */
	NEWS_CONTENT NCLOB NOT NULL, /* 내용 */
	NEWS_UPLOADNAME VARCHAR2(255), /* 업로드파일명 */
	NEWS_FILESIZE NUMBER, /* 파일사이즈 */
	NEWS_ORIGINALNAME VARCHAR2(255), /* 원본파일명 */
	NEWS_REGDATE DATE DEFAULT SYSDATE /* 등록일 */
);

ALTER TABLE NEWS
	ADD
		CONSTRAINT PK_NEWS
		PRIMARY KEY (
			NEWS_NO
		);
        
CREATE SEQUENCE NEWS_SEQ
INCREMENT BY 1
START WITH 1
NOCACHE;