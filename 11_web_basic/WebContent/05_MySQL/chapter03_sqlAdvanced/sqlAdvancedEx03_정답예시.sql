USE ADVANCED_EX;
CREATE TABLE CAR_TB (
	CAR_CD 			VARCHAR(20),
	CAR_NM 			VARCHAR(20),
	PRICE 			INT,
	BRAND_NM 		VARCHAR(10),
	CATEGORY		VARCHAR(30),
	REG_DT			VARCHAR(20)
);

CREATE TABLE MEMBER_TB (
	MEMBER_ID VARCHAR(20),
	MEMBER_NM VARCHAR(20),
	CONTACT   VARCHAR(30),
	SEX		  VARCHAR(1),
	AGE		  INT
);

CREATE TABLE RENT_TB (
	RENT_CD 	VARCHAR(10),
	RENT_PERIOD INT,
	CAR_CD 		VARCHAR(10),
	MEMBER_ID	VARCHAR(10)
); 


INSERT INTO CAR_TB VALUES ('car1', '아반떼',  60000, '현대' , '준중형' , '2020-01-01');
INSERT INTO CAR_TB VALUES ('car2' , '아이오닉', 67500, '현대', '준중형' , '2020-02-02');
INSERT INTO CAR_TB VALUES ('car4' , '그랜저',  115000, '현대', '준대형' , '2020-04-04');
INSERT INTO CAR_TB VALUES ('car5' , '스타렉스',  155000, '현대', '대형' , '2020-05-05');
INSERT INTO CAR_TB VALUES ('car6' , '제네시스', 175000, '현대', '중형' , '2020-06-06');
INSERT INTO CAR_TB VALUES ('car7' , 'k3' , 68000, '기아', '준중형' , '2020-07-07');
INSERT INTO CAR_TB VALUES ('car8' , '모닝',  39900, '기아', '소형' , '2020-08-08');
INSERT INTO CAR_TB VALUES ('car9' , 'k5', 78000, '기아', '중형' , '2020-09-09');
INSERT INTO CAR_TB VALUES ('car10' , 'k7', 115000, '기아', '준대형' , '2020-10-10');
INSERT INTO CAR_TB VALUES ('car12', '레이', 65000, '기아', '소형' , '2021-01-01');
INSERT INTO CAR_TB VALUES ('car13', '스포티지',  115000, '기아', '준중형' , '2021-02-02');
INSERT INTO CAR_TB VALUES ('car14', '카니발', 180000, '기아', '대형' , '2021-03-03');
INSERT INTO CAR_TB VALUES ('car15', 'SM5', 50000, '르노', '중형' , '2021-04-04');
INSERT INTO CAR_TB VALUES ('car16', 'SM6', 73920, '르노', '중형' , '2021-05-05');
INSERT INTO CAR_TB VALUES ('car17', 'QM6', 78000, '르노', '중형' , '2021-06-06');
INSERT INTO CAR_TB VALUES ('car18', '렉스턴', 66000, '쌍용', '준대형' , '2021-07-07');
INSERT INTO CAR_TB VALUES ('car19', '티볼리', 25500, '쌍용', '소형' , '2021-08-08');
INSERT INTO CAR_TB VALUES ('car20', '코란도', 59700, '쌍용', '준중형' , '2021-09-09');

INSERT INTO MEMBER_TB VALUES('user1' , '유저1' , '010-1111-1111' , 'f' , 25);
INSERT INTO MEMBER_TB VALUES('user2' , '유저2' , '010-1111-2222' , 'm' , 21);
INSERT INTO MEMBER_TB VALUES('user3' , '유저3' , '010-1111-3333' , 'f' , 30);
INSERT INTO MEMBER_TB VALUES('user4' , '유저4' , '010-1111-4444' , 'm' , 33);
INSERT INTO MEMBER_TB VALUES('user5' , '유저5' , '010-1111-5555' , 'f' , 27);
INSERT INTO MEMBER_TB VALUES('user6' , '유저6' , '010-1111-6666' , 'm' , 32);
INSERT INTO MEMBER_TB VALUES('user7' , '유저7' , '010-1111-7777' , 'f' , 29);
INSERT INTO MEMBER_TB VALUES('user8' , '유저8' , '010-1111-8888' , 'm' , 38);
INSERT INTO MEMBER_TB VALUES('user9' , '유저9' , '010-1111-9999' , 'f' , 22);
INSERT INTO MEMBER_TB VALUES('user10' , '유저10' , '010-1111-0000' , 'm' , 35);

INSERT INTO RENT_TB VALUES('rent1' , 3 , 'car1' , 'user1');
INSERT INTO RENT_TB VALUES('rent2' , 1 , 'car1' , 'user9');
INSERT INTO RENT_TB VALUES('rent3' , 5 , 'car19' , 'user3');
INSERT INTO RENT_TB VALUES('rent4' , 1 , 'car2' , 'user5');
INSERT INTO RENT_TB VALUES('rent5' , 2 , 'car15' , 'user6');
INSERT INTO RENT_TB VALUES('rent6' , 1 , 'car2' , 'user7');
INSERT INTO RENT_TB VALUES('rent7' , 1 , 'car5' , 'user2');
INSERT INTO RENT_TB VALUES('rent8' , 1 , 'car7' , 'user8');
INSERT INTO RENT_TB VALUES('rent9' , 1 , 'car3' , 'user10');
INSERT INTO RENT_TB VALUES('rent10' , 2 , 'car9' , 'user1');
INSERT INTO RENT_TB VALUES('rent11' , 3 , 'car20' , 'user1');
INSERT INTO RENT_TB VALUES('rent12' ,  1 , 'car7' , 'user8');
INSERT INTO RENT_TB VALUES('rent13' ,  5 , 'car6' , 'user2');
INSERT INTO RENT_TB VALUES('rent14' , 1 , 'car8' , 'user6');
INSERT INTO RENT_TB VALUES('rent15' ,  2 , 'car9' , 'user7');
INSERT INTO RENT_TB VALUES('rent16' ,  3 , 'car1' , 'user3');
INSERT INTO RENT_TB VALUES('rent17' , 1 , 'car12' , 'user1');
INSERT INTO RENT_TB VALUES('rent18' , 7 , 'car12' , 'user3');
INSERT INTO RENT_TB VALUES('rent19' , 1 , 'car4' , 'user3');
INSERT INTO RENT_TB VALUES('rent20' , 2 , 'car16' , 'user5');


# 1) 렌트일이 5일 이상인 차량정보 조회하기
SELECT
		C.*
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
		 AND R.RENT_PERIOD >= 5;
        
        
# 2) 렌트일이 5일 이상인 회원정보 조회하기
SELECT			#DISTINCT
		M.*
FROM
	 RENT_TB R
  INNER JOIN MEMBER_TB M
		  ON R.MEMBER_ID = M.MEMBER_ID
		 AND R.RENT_PERIOD >= 5;


# 3) '스타렉스'차량을 렌트한 회원정보를 조회하기
SELECT
		M.*
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
		 AND C.CAR_NM = '스타렉스'
  INNER JOIN MEMBER_TB M
		  ON R.MEMBER_ID = M.MEMBER_ID;


# 4) 'k3' , 'k5' , 'k7'을 주문한 회원정보를 조회하기
SELECT
		M.*
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
		 AND C.CAR_NM IN ('k3' , 'k5' , 'k7')
  INNER JOIN MEMBER_TB M
		  ON R.MEMBER_ID = M.MEMBER_ID;
          
          
# 5) '아반떼' 차량의 평균 렌트일 조회하기
SELECT
		ROUND(AVG(RENT_PERIOD)) AS AVG_RENT_PERIOD
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
		 AND C.CAR_NM = '아반떼';

          
# 6) '유저1'의 렌트 횟수 조회하기
SELECT
		COUNT(*) AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN MEMBER_TB M
		  ON R.MEMBER_ID = M.MEMBER_ID
		 AND M.MEMBER_NM = '유저1';
        
        
# 7) 남성의 평균 렌트일 조회하기
SELECT
		ROUND(AVG(RENT_PERIOD)) AS AVG_RENT_PERIOD
FROM
	 RENT_TB R
  INNER JOIN MEMBER_TB M
		  ON R.MEMBER_ID = M.MEMBER_ID
		 AND M.SEX = 'm';

		 
# 8) 20대 여성의 렌트일 조회하기
SELECT
		ROUND(AVG(RENT_PERIOD)) AS AVG_RENT_PERIOD
FROM
	 RENT_TB R
  INNER JOIN MEMBER_TB M
		  ON R.MEMBER_ID = M.MEMBER_ID
		 AND M.SEX = 'f'
		 AND M.AGE BETWEEN 20 AND 29;
         
         
# 9) 50000 ~ 100000 가격의 차량의 렌트횟수를 조회하기
SELECT
		COUNT(*) AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
		 AND C.PRICE BETWEEN 50000 AND 100000;
  

# 10) 100000이상 가격의 차량의 렌트횟수를 조회하기
SELECT
		COUNT(*) AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
		 AND C.PRICE >= 100000;
         
         
# 11) 2020년에 등록된 차량의 렌트 횟수를 조회하기
SELECT
		COUNT(*) AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
		 AND C.REG_DT BETWEEN '2020-01-01' AND '2020-12-31';

         
# 12) 기아 자동차의 렌트횟수를 조회하기
SELECT
		COUNT(*) AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
		 AND C.BRAND_NM = '기아';
      
 
# 13) 브랜드별로 렌트 횟수를 조회하고 렌트수가 많은 순서대로 정렬하기
SELECT
		C.BRAND_NM AS BRAND_NM,
		COUNT(*)   AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
GROUP BY
		C.BRAND_NM
ORDER BY
		RENT_CNT DESC;
	
        
# 14) 차량이 등록된 연도별로 렌트 횟수를 조회하기
SELECT
		SUBSTRING(C.REG_DT , 1 , 4) AS YEAR,
		COUNT(*)   					AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
GROUP BY
		YEAR;


# 15) 차량이 등록된 연도별로 성별로 렌트 횟수를 조회하기
SELECT
		SUBSTRING(C.REG_DT , 1 , 4) AS YEAR,
		M.SEX						AS SEX,
		COUNT(*)   					AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
  INNER JOIN MEMBER_TB M
		  ON R.MEMBER_ID = M.MEMBER_ID
GROUP BY
		YEAR,
        M.SEX;
        
        
# 16) 차량이 등록된 연도별로 성별로 평균 렌트일을 조회하기
SELECT
		SUBSTRING(C.REG_DT , 1 , 4) AS YEAR,
		M.SEX						AS SEX,
		ROUND(AVG(R.RENT_PERIOD))   AS AVG_RENT_PERIOD
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
  INNER JOIN MEMBER_TB M
		  ON R.MEMBER_ID = M.MEMBER_ID
GROUP BY
		YEAR,
        M.SEX;
        
        
# 17) 가장 많이 렌트된 차량의 이름과 렌트 횟수를 조회하기
SELECT
		C.CAR_NM 		AS CAR_NM,
		COUNT(*) 		AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN CAR_TB C
		  ON R.CAR_CD = C.CAR_CD
GROUP BY
		C.CAR_CD
ORDER BY
		RENT_CNT DESC
LIMIT 
		1;
		

# 18) 가장 많이 렌트한 회원의 아이디 , 연락처 , 렌트횟수를 조회하기
SELECT
		M.MEMBER_ID		AS MEMBER_ID,
        M.CONTACT		AS CONTACT,
		COUNT(*) 		AS RENT_CNT
FROM
	 RENT_TB R
  INNER JOIN MEMBER_TB M
		  ON R.MEMBER_ID = M.MEMBER_ID
GROUP BY
		M.MEMBER_ID
ORDER BY
		RENT_CNT DESC
LIMIT 
		1;