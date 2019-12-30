SELECT * FROM ACCOUNT;

Insert into ACCOUNT (ACC_NO,ACC_ID,ACC_PW,ACC_NAME,ACC_BIRTH,ACC_EMAIL,ACC_PHONE,ACC_ZIPCODE,ACC_ADDR,ACC_ADDR2,ACC_ISREG,ACC_POINT,ACC_M_C) values (1,'m1','321321','독고수지','20000719','m1@naver.com','01012345678','06220','서울특별시 강남구 역삼동 717','한국은행 강남본부','Y',300000,'M');

SELECT * FROM ISSUE;


DROP SEQUENCE ISS_SEQ;

CREATE SEQUENCE ISS_SEQ
START WITH 500
INCREMENT BY 1
NOCACHE
NOCYCLE;

SELECT * FROM USER_SEQUENCES;

SELECT LAST_NUMBER FROM USER_SEQUENCES  WHERE SEQUENCE_NAME = 'ISS_SEQ';

SELECT ISS_SEQ.CURRVAL FROM DUAL;

commit;

DELETE FROM ISSUE WHERE ISS_NO = 501;