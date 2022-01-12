<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/new_top_host.jsp"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>

<div id="msgArea"></div>

     <c:import url="/notice/hostNotice"/> 
     


<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js'/>"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
var roomName = "${room.name}";
var roomId = "${sessionScope.hNickname}";
var username = "${sessionScope.hId}";
var count =0; 
$(document).ready(function(){
	
    console.log(roomName + ", " + roomId + ", ");

    var sockJs = new SockJS("/sangsanggongbang/stomp/chat");
    //1. SockJS를 내부에 들고있는 stomp를 내어줌
    var stomp = Stomp.over(sockJs);
	
    //2. connection이 맺어지면 실행
    stomp.connect({}, function (){
       console.log("STOMP Connection")

       //4. subscribe(path, callback)으로 메세지를 받을 수 있음
       stomp.subscribe("/sub/chat/room/" + roomId, function (chat) {
           var content = JSON.parse(chat.body);

           var writer = content.writer;
           var str = '';
           
           if(writer === username){
        	   str = "<div class='card bg-primary text-white border-light p-4 ml-md-5 ml-lg-6 mb-4'>";
               str += "<div class='d-flex justify-content-between align-items-center mb-2'>";
               str += "<span class='font-small'>";
               str += "<span class='font-weight-bold'>"+writer+"</span>";
               str += "<span class='ml-2'>March 26, 19:25</span>";
               str += "</span></div><p class='m-0'>"+content.message+"</p></div>";
               str += "</div></div>";
               $("#msgArea").append(str);
           }else{
        	  count += 1;
        	  if(count==0){
        		  
        	  }
        	  /* str = "<a href='#' onClick='openChat();'> <div class = 'alert alert-primary'>";
        	   str += "<button type='button' class = 'close' data-dismiss='alert'>×</button>";
               str +="<div ><strong>"+writer+"</strong>님의 실시간 대화 요청입니다.<br>";
               str +=content.message+"</div></div></a>";
               $("#msgArea").append(str);*/
               
           }
       });

       //3. send(path, header, message)로 메세지를 보낼 수 있음
       stomp.send('/pub/chat/enter', {}, JSON.stringify({roomId: roomId, writer: username}))
       stomp.send('/pub/chat/alert', {}, JSON.stringify({roomId: roomId, writer: username}))
    });
    $("#button-send").on("click", function(e){
        var msg = document.getElementById("msg");

        console.log(username + ":" + msg.value);
        stomp.send('/pub/chat/message', {}, JSON.stringify({roomId: roomId, message: msg.value, writer: username}));
        msg.value = '';
    });
   
});
function openChat(){
	var contextPath="/sangsanggongbang";
	open(contextPath+'/chat/room?roomId='+roomId,'chat',
	 'width=1000,height=840,left=0,top=0,location=yes,resizable=no');
}
</script>
        
    
<%@ include file="../inc/bottom_host.jsp" %> 