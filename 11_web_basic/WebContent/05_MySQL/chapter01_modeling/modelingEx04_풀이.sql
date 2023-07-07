/*    
    1) BMS_TEMP 데이터베이스를 생성하고 사용하기.
*/	

CREATE DATABASE BMS_TEMP; 
USE BMS_TEMP;
/*    
    2) MEMBER_TB 테이블을 생성하기.
    	
    	[ 컬럼명 ] 
    
		MEMBER_ID 		글자(20)
		MEMBER_NM 		글자(50)
		PW 				글자(1000)
		GENDER 			글자(10)
		BIRTH_Y 		글자(20)
		BIRTH_M 		글자(20)
		BIRTH_D 		글자(20)
		BIRTH_GN 		글자(20)
		TEL1 			글자(20)
		TEL2 			글자(20)
		TEL3 			글자(20)
		HP1 			글자(20)
		HP2 			글자(20)
		HP3 			글자(20)
		SMSSTS_YN 		글자(20)
		EMAIL1 			글자(20)
		EMAIL2 			글자(20)
		EMAILSTS_YN 	글자(20)
		ZIPCODE 		글자(20)
		ROADADDRESS 	글자(500)
		JIBUNADDRESS 	글자(500)
		NAMUJIADDRESS 	글자(500)
		JOIN_DT 		DATE
*/
CREATE TABLE MEMBER_TB(
	MEMBER_ID VARCHAR(20),
    MEMBER_NM VARCHAR(50),
    PW VARCHAR(1000),
    GENDER VARCHAR(10),
    BIRTH_Y VARCHAR(20),
    BIRTH_M VARCHAR(20),
    BIRTH_D VARCHAR(20),
    BIRTH_GN VARCHAR(20),
    TEL1 VARCHAR(20),
    TEL2 VARCHAR(20),
    TEL3 VARCHAR(20),
    HP1 VARCHAR(20),
    HP2 VARCHAR(20),
    HP3 VARCHAR(20),
    SMSSTS_YN VARCHAR(20),
    EMAIL1 VARCHAR(20),
    EMAIL2 VARCHAR(20),
    EMAILSTS_YN VARCHAR(20),
    ZIPCODE VARCHAR(20),
    ROADADDRESS VARCHAR(500),
    JIBUNADDRESS VARCHAR(20),
    NAMUJIADDRESS VARCHAR(500),
    JOIN_DT DATE
    
    );



/*    
    3) GOODS_TB 테이블을 생성하기.
    
    	[ 컬럼명 ] 
    	
	    GOODS_ID 		  숫자
		TITLE 			  글자(50)
		WRITER 			  글자(50)
		PRICE 			  숫자
		PUBLISHER 		  글자(50)
		SORT 			  글자(50)
		SALES_PRICE 	  숫자
		POINT 			  숫자
		PUBLISHED_DATE 	  날짜(일자)
		TOTAL_PAGE 		  숫자
		ISBN 			  글자(20)
		DELIVERY_PRICE 	  숫자
		DELIVERY_DATE 	  날짜(일자)
		WRITER_INTRO 	  글자(2000)
		CONTENTS_ORDER 	  글자(2000)
		INTRO 			  글자(2000)
		PUBLISHER_COMMENT 글자(2000)
		RECOMMENDATION 	  글자(2000)
		FILE_NAME		  글자(2000)
		CRE_DATE 		  날짜(일자)
*/

CREATE TABLE GOODS_TB(
		GOODS_ID INT,
        TITLE VARCHAR(50),
        WRITER VARCHAR(50),
        PRICE INT,
        PUBLISHER VARCHAR(50),
        SORT VARCHAR(50),
        SALES_PRICE INT,
        POINT INT,
        PUBLLISHIED_DATE DATE,
        TOTAL_PAGE INT,
        ISBN VARCHAR(20),
        DELIVERY_PRICE INT,
        DELIVERY_DATE DATE,
        WRITER_INTRO VARCHAR(2000),
        CONTENTS_ORDER VARCHAR(2000),
        INTRO VARCHAR(2000),
        PUBLISHER_COMMENT VARCHAR(2000),
        RECOMMENDATION VARCHAR(2000),
        FILE_NAME VARCHAR(2000),
        CRE_DATE DATE

);

/*    
    4) ORDER_TB 테이블을 생성하기.
    	
    	[ 컬럼명 ] 
    
		ORDER_ID 			(큰)숫자
		MEMBER_ID 			글자(50)
		GOODS_ID 			숫자
		GOODS_TITLE 		글자(100)
		GOODS_SALES_PRICE 	숫자
		ORDERER_NAME 		글자(50)
		ORDERER_HP 			글자(50)
		ORDER_GOODS_QTY 	숫자
		RECEIVER_NAME 		글자(50)
		RECEIVER_HP1 		글자(20)
		RECEIVER_HP2 		글자(20)
		RECEIVER_HP3 		글자(20)
		RECEIVER_TEL1 		글자(20)
		RECEIVER_TEL2 		글자(20)
		RECEIVER_TEL3 		글자(20)
		DELIVERY_ADDRESS 	글자(500)
		DELIVERY_METHOD 	글자(40)
		DELIVERY_MESSAGE 	글자(300)
		GIFT_WRAPPING 		글자(20)
		PAY_METHOD 			글자(200)
		PAY_ORDERER_HP_NUM 	글자(50)
		PAY_ORDER_TIME 		날짜(시간)
		CARD_COM_NAME 		글자(50)
		CARD_PAY_MONTH 		글자(20)
		DELIVERY_STATUS 	글자(100)
*/

create table order_tb(
	order_id int.
    member_id varchar(50),
    goods_id int,
    goods_title varchar(100),
    goods_sales_price int,
    orderer_name varchar(50),
    orderer_hp varchar(50),
    order_goods_qty int,
    receiver_namer varchar(50),
    receiver_hp1 varchar(20),
	receiver_hp2 varchar(20),
	receiver_hp3 varchar(20),
    receiver_tel1 varchar(20),
	receiver_tel2 varchar(20),
	receiver_tel3 varchar(20),
    delivery_address varchar(500),
    delivery_method varchar(40),
    delivery_message varchar(300),
    
    
    
);

/*    
    5) MEMBER_TB 테이블을 삭제하기.
*/

/*    
    6) GOODS_TB 테이블을 삭제하기.
*/

/*    
    7) ORDER_TB 테이블을 삭제하기.
*/

 /*   
    8) BMS_TEMP 데이터베이스 삭제하기
 */