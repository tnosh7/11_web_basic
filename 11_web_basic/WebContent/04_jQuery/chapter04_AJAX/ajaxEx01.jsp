<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 기초</title>
<script src="../js/jquery-3.6.1.min.js"></script>
<script>

	/*
	
		# JSON (JavaScript Object Notation)
		
		- JavaScript에서 객체를 만들 때 사용하는 표현식
		- 사람도 이해하기 쉽고 기계도 이해하기 쉽다. 
		- 서버와 클라이언트 간의 데이터 전송형태 및 데이터 export로 많이 사용하며 경량의 데이터 전송에서 주로 사용한다.
		- AJAX로 전송가능한 데이터 형식이다.		 
	    - 사용 가능한 자료형은 숫자(number) , 문자열(string) , 불리언(boolean) , 객체(object) , 배열(array) , NULL이 있다.
		 
			[형식]
	
			{ 
			  "key1" : value1 , 
			  "key2" : value2 , 
			  "key3" : value3... 
			}
	
			1) 중괄호로 오브젝트를 묶는다.
			2) 데이터는 key/value 쌍으로 생성한다. (key 문자열이기 때문에 ""를 붙여서 사용한다.)
			3) 복수의 데이터는 ‘,’로 분리한다.
			4) 배열은 대괄호를 사용한다. (예시 [1,2,3,4,5])
			
		- JSON.parse()메서드 	 : (파싱)	   문자열을 자바스크립트의 데이터로 변환한다.
		- JSON.stringify()메서드 : (문자열화)  자바스크립트의 데이터를 문자열로 변환한다.
		
	*/

	      
    $(document).ready(function(){
    	
    	var product = {
    		"productCd" : "0000-1323",
    		"productNm" : "samsung TV",
    		"stock" 	: 777,
    		"isSoldOut" : false,
    		"tvSize" 	: [30,50,70]
    	
    	};
    	console.log(product);
    	
    	var member = {
    		"member" : "admin", 
    		"age" : 20, 
    		"address" : "강남구 역삼동", 
    		"contact" : "010-1234-5678" 
    	};
		console.log(member);  
    	
		var orderList = {
			"orderList" : [
				{"orderCd" : "0x1", "memberId" : "user1" , "qty" : "1"},
				{"orderCd" : "0x2", "memberId" : "user2" , "qty" : "2"},
				{"orderCd" : "0x3", "memberId" : "user3" , "qty" : "3"}
			]	
		};
		console.log(orderList);
    });
	
</script>
</head>
<body>
</body>
</html>