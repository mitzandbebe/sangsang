<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<title>Hello2</title>
</head>
<body>
        <div class="container">
            <div>
                <ul>
                <c:forEach var = "ChatRoomDTO" items="${list }">
                	<li><a href="<c:url value='/chat/room?roomId=${ChatRoomDTO.roomId }'/>" target="_blank">${ChatRoomDTO.name }</a></li>
                </c:forEach>
                </ul>
            </div>
        </div>
        <form method="post" action="<c:url value='/chat/room'/> ">
            <input type="text" name="name" class="form-control">
            <button class="btn btn-secondary btn-create">상대와 채팅방 개설하기</button>
        </form>
<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
$(document).ready(function(){

   

    $(".btn-create").on("click", function (e){
        e.preventDefault();

        if(roomName != null)
            alert("방이 개설되었습니다.");
        var name = $("input[name='name']").val();

        if(name == "")
            alert("Please write the name.")
        else
            $("form").submit();
    });

});
</script>
</body>
</html>