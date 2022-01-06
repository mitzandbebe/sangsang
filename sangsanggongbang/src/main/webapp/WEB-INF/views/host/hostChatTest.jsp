<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/top_host.jsp"  %>

<div class="container toast-container" style="margin-top: 500px">
<div id="msgArea"></div>


            <div>
                <ul>
                <c:forEach var = "ChatRoomDTO" items="${list }">
                	<li><a href="<c:url value='/chat/room?roomId=${ChatRoomDTO.roomId }'/>" target="_blank">${ChatRoomDTO.name }</a></li>
                </c:forEach>
                </ul>
            </div>
        <table>
        	<tr>
        		<th>호스트 닉네임</th>
        		<th>버튼</th>
        	</tr>
        <c:forEach var="hostVo" items="${hlist }">
        	<tr>
        		<td>${hostVo.hNickname }</td>
        		<td>
		        	<!--  <form method="post" action="<c:url value='/chat/room'/> ">
			            <input type="text" name="name" class="form-control" value="${hostVo.hNickname }">
			            <button class="btn btn-secondary btn-create">채팅방 개설하기</button>
		        	</form>-->
		        	<a href="<c:url value='/chat/room?roomId=${hostVo.hNickname }'/>" target="_blank">${hostVo.hNickname }</a>
	        	<td>
	        	
	        </tr>
        </c:forEach>
        </table>
       </div>

<%@ include file="../inc/bottom_host.jsp"  %>