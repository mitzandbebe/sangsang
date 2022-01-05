<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../inc/top.jsp" %>

<script src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js' />"></script>


<div class="section section-md bg-white text-black pt-0 line-bottom-light">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-lg-8  mt-6">
        <div>
          <br>
          <form method="post" name="qaForm" onsubmit="return onSubmit(this);">
            <input type="hidden" name="cNo">
            <input type="hidden" name="mNo">
            <label class="h5 mb-4" for="exampleFormControlTextarea1">
              <span class="badge badge-md badge-primary text-uppercase mr-2">Q&A</span>
            </label>
            <br>
            <input type="text"
                   name="qaTitle"
                   class="form-control border border-light-gray"
                   placeholder="제목을 입력해주세요"/>
            <textarea
                    name="qaContent"
                    class="form-control border border-light-gray"
                    id="exampleFormControlTextarea1"
                    placeholder="내용을 입력해주세요"
                    rows="6"
                    data-bind-characters-target="#charactersRemaining"
                    maxlength="1000">
            </textarea>
            <div class="d-flex justify-content-between mt-3">
              <small class="font-weight-light text-dark"><span id="charactersRemaining"></span>/ 1000자 이하</small>
              <button type="submit" class="btn btn-primary animate-up-2" >등록</button>
            </div>
          </form>
          <div class="mt-5">
            <c:forEach var="item" items="${list}" varStatus="vs">
              <div class="card bg-soft border-light rounded p-4 mb-4 <c:if test="${item.upperQaNo > 0}">ml-5</c:if>">
                <div class="d-flex justify-content-between mb-4">
                  <span class="font-small">
                    <a href="#">
                      <img class="avatar-sm img-fluid rounded-circle mr-2"
                           src="<c:url value="/resources"/>/assets/img/team/profile-picture-1.jpg" alt="avatar">
                      <span class="font-weight-bold">${item.memberVO.mName}</span>
                    </a>
                  <span class="ml-2"><fmt:formatDate value="${item.qaRegdate}" pattern="YYYY-MM-DD" /></span>
                  </span>
                </div>
                <p class="m-0">
                  제목 : ${item.qaTitle}
                  <br><br>
                   내용 : ${item.qaContent}
                </p>

                <div class="mt-4 mb-3 d-flex justify-content-between">
                  <div class="btn-block text-right">
                    <c:if test="${item.memberVO.mId eq sessionScope.mId}">
                      <button type="button" onclick="javascript:qaUpdate();" class="btn btn-xs btn-primary animate-up-2" >수정</button>
                      <button type="submit" onclick="qaDelete('${item.qaNo}')"  class="btn btn-xs btn-danger animate-up-2" >삭제</button>
                    </c:if>
                    <c:if test="${0 eq item.upperQaNo}">
                      <button type="button" onclick="javascript:qaReply();" class="btn btn-xs btn-primary animate-up-2" >답글달기</button>
                    </c:if>
                  </div>
                </div>

              </div>

            </c:forEach>

          </div>

          <div id="innerUpper" class="card bg-soft border-light rounded p-4 mb-4 ml-5"></div>

      </div>
    </div>
  </div>
</div>

<script>
  function onSubmit(_form) {
    if(!_form.qaTitle.value) {
      alert('제목을 입력하여 주시기 바랍니다');
      return false;
    }
    if(!_form.qaContent.value) {
      alert('내용을 입력하여 주시기 바랍니다');
      return false;
    }
    _form.cNo.value = '25'; // 클래스 번호
    _form.mNo.value = '80'; // 회원번호

    _form.method = 'post';
    _form.action = '<c:url value="/qa/write"/>';
    _form.sumbit();
  }

  function qaUpdate(){
    alert("수정개발중")
  }

  function qaReply(){
    var str = "";
    str +=   "<input type='text' name='qaTitle' class='form-control border border-light-gray' placeholder= 제목을입력해주세요. + />";

    str +=  "<textarea name='qaContent' class='form-control border border-light-gray' " +
            "id='exampleFormControlTextarea1' placeholder= 내용을입력해주세요. + rows='6' maxlength='1000' data-bind-characters-target='#charactersRemaining'>";
    str += "</textarea>"

    str += " <div class='mt-4 mb-3 d-flex justify-content-between'>"
    str += " <div class='btn-block text-right'>"

    str += "<button type='submit' class='btn btn-primary animate-up-2'>"
    str += "등록"
    str += "</button>"

    str += "<button class='btn btn-danger animate-up-2' onclick='test()'>"
    str += "취소"
    str += "</button>"

    str += " </div>"
    str += " </div>"

    document.getElementById("innerUpper").innerHTML = str;
  }

  function qaDelete(s){
    alert("Dd")
  }

  function qaDelete(s){
    if (!confirm("삭제하시겠습니까?")){
      return false;
    }
    $.ajax({
      url : "<c:url value="/qa/delete"/>",
      type : "GET",
      data : {
        qaNo : s
      },
      success : function(res){
        location.href='<c:url value="/qa/list"/>';
        alert('삭제가 완료되었습니다.');
      }
    })
  }
</script>

<%@ include file="../inc/bottom.jsp" %>