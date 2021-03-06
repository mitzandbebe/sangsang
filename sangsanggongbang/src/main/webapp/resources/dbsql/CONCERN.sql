/* 관심클래스 */
CREATE TABLE CONCERN (
	CONCERN_NO NUMBER NOT NULL, /* 관심클래스번호 */
	C_NO NUMBER NOT NULL, /* 클래스코드 */
	M_NO NUMBER NOT NULL /* 개인회원번호 */
);

ALTER TABLE CONCERN
	ADD
		CONSTRAINT PK_CONCERN
		PRIMARY KEY (
			CONCERN_NO
		);

ALTER TABLE CONCERN
	ADD
		CONSTRAINT FK_MEMBER_TO_CONCERN
		FOREIGN KEY (
			M_NO
		)
		REFERENCES MEMBER (
			M_NO
		);

ALTER TABLE CONCERN
	ADD
		CONSTRAINT FK_HOSTCLASS_TO_CONCERN
		FOREIGN KEY (
			C_NO
		)
		REFERENCES HOSTCLASS (
			C_NO
		);

CREATE SEQUENCE CONCERN_SEQ
INCREMENT BY 1
START WITH 1
NOCACHE;