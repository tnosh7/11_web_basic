USE DML_TEST;

CREATE TABLE MEMBER_TB(
    MEMBER_ID 		VARCHAR(20),
	MEMBER_NM 		VARCHAR(50),
	SEX 			VARCHAR(10),
	NATIONALITY 	VARCHAR(20),
	EMAIL 			VARCHAR(20),
    RESIDENCE		VARCHAR(20)
);

INSERT INTO MEMBER_TB VALUES('user1', '메르켈' , 'f' , '외국' , 'mer@gmail.com'  , '서울');
INSERT INTO MEMBER_TB VALUES('user2', '제임스고슬링' , 'm' , '외국' , 'james@gmail.com' , '서울'); 
INSERT INTO MEMBER_TB VALUES('user3', '신사임당' , 'f' , '내국' , 'shinsa@naver.com' , '경기');
INSERT INTO MEMBER_TB VALUES('user4', '유관순' , 'f' , '내국' , 'yks@naver.com' , '인천');
INSERT INTO MEMBER_TB VALUES('user5', '데니스리치' , 'm' , '외국' , 'denis@gmail.com' , '부산');
INSERT INTO MEMBER_TB VALUES('user6', '팀버너스리' , 'm' , '외국' , 'tim@gmail.com' , '대구');
INSERT INTO MEMBER_TB VALUES('user7', '스티븐워즈니악' , 'm' , '외국' , 'stevenw@gmail.com' , '경기');
INSERT INTO MEMBER_TB VALUES('user8', '선덕여왕' , 'f' , '내국' , 'seonduk@daum.net' , '대구');
INSERT INTO MEMBER_TB VALUES('user9', '스티브잡스' , 'm' , '외국' , 'jobs@gmail.com' , '부산');
INSERT INTO MEMBER_TB VALUES('user10', '빌게이츠' , 'm' , '외국' , 'bill@gmail.com' , '서울');
INSERT INTO MEMBER_TB VALUES('user11', '세종대왕' , 'm' , '내국' , 'seojong@naver.com' , '서울');
INSERT INTO MEMBER_TB VALUES('user12', '이순신' , 'm' , '내국' , 'leess@daum.net' , '부산');


# 1) '내국'인의 회원 수를 조회하기
		
         
# 2) '서울' 지역의 회원 수를 조회하기        
        
        
# 3) '부산' , '대구'에 거주하는 회원 수를 조회하기 
        

# 4) 성별로 회원의 수를 조회하기
        
        
# 5) 거주지역별로 회원 수를 조회하기
        
        
# 6) 국적별로 회원 수를 조회하기
        
        
# 7) 국적별로 성별로 회원 수를 조회하기


# 8) 거주지역별로 성별로 회원 수를 조회하기


# 9) 성별로 거주지역별로 회원 수를 조회하기


# 10) 국적별로 거주지역별로 성별로 회원 수를 조회하기


# 11) 도메인별로 회원 수를 조회하기(SUBSTRING , LOCATE 함수 사용)


# 12) 서울을 제외한 지역별로 회원 수를 조회하기


# 13) '서울' , '경기' , '인천' 지역별로 회원 수를 조회하되 회원수가 3명이상일 경우만 조회하기.
