<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js' />"></script>

<div class="bg-white p-5">
  <br>
  <label class="h5 mb-4" for="exampleFormControlTextarea1">
    <span class="badge badge-md badge-primary text-uppercase mr-2">Q&A</span>
  </label>
  <form method="post" name="qaForm" onsubmit="return onSubmit(this);">
    <input type="hidden" name="redirectUrl">
    <input type="hidden" name="cNo">
    <input type="hidden" name="upperQaNo">
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
            maxlength="1000"></textarea>
    <div class="d-flex justify-content-between mt-3">
      <button type="submit" class="btn btn-primary animate-up-2" >등록</button>
    </div>
  </form>
  <div class="mt-5">
    <c:forEach var="item" items="${list}" varStatus="vs">
      <div class="qaItem card bg-soft border-light rounded p-4 mb-4 <c:if test="${item.upperQaNo > 0}">ml-5</c:if>">
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

        <p class="m-0 infoForm">
          <b>${item.qaTitle}</b>
          <br><br>
            ${item.qaContent}
        </p>
        <c:if test="${item.memberVO.mId eq sessionScope.mId}">
        <div class="m-0 updateForm" style="display: none;">
          <form method="post" onsubmit="return onSubmit(this);">
            <input type="hidden" name="redirectUrl">
            <input type="hidden" name="qaNo" value="${item.qaNo}">
            <input type="hidden" name="cNo" value="${item.cNo}">

            <input type="text"
                   name="qaTitle"
                   class="form-control border border-light-gray"
                   value="${item.qaTitle}"
                   placeholder="제목을 입력해주세요"/>
            <textarea
                    name="qaContent"
                    class="form-control border border-light-gray"
                    id="exampleFormControlTextarea1"
                    placeholder="내용을 입력해주세요"
                    rows="6"
                    data-bind-characters-target="#charactersRemaining"
                    maxlength="1000">${item.qaContent}</textarea>

          <div class="mt-4 mb-3 d-flex justify-content-between">
            <div class="btn-block text-right">
              <button type="submit" class="btn btn-xs btn-primary animate-up-2" >수정</button>
              <button type="button" onclick="qaUpdateOn(this)" class="btn btn-xs btn-primary animate-up-2" >닫기</button>
            </div>
          </div>
          </form>
        </div>
        </c:if>

        <div class="replyFormArea"></div>

        <div class="mt-4 mb-3 d-flex justify-content-between">
          <div class="btn-block text-right">
            <c:if test="${item.memberVO.mId eq sessionScope.mId}">
              <button type="button" onclick="javascript:qaUpdateOn(this);" class="btn btn-xs btn-primary animate-up-2" >수정</button>
              <button type="submit" onclick="qaDelete('${item.qaNo}')"  class="btn btn-xs btn-danger animate-up-2" >삭제</button>
            </c:if>
            <c:if test="${empty item.upperQaNo}">
              <button type="button" onclick="javascript:qaReply(this, ${item.qaNo});" class="btn btn-xs btn-primary animate-up-2" >답글달기</button>
            </c:if>
          </div>
        </div>

      </div>

    </c:forEach>

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
    _form.method = 'POST';
    _form.action = '<c:url value="/qa/save"/>';
    _form.cNo.value = '${cNo}'; // 클래스 번호

    var pathname = location.pathname;
    if(location.pathname.indexOf('${pageContext.request.contextPath}') == 0) {
      pathname = pathname.replace('${pageContext.request.contextPath}', '');
    }
    _form.redirectUrl.value = pathname + location.search + '#nav-qna-tab';

    _form.sumbit();
  }

  function qaUpdateOn(_this){
    var $qaItem = $(_this).closest('div.qaItem');
    $qaItem.find('.infoForm').toggle();
    $qaItem.find('.updateForm').toggle();
  }

  function qaReply(_this, qaNo) {
    var $qaItem = $(_this).closest('div.qaItem')

    if($qaItem.find('.replyFormArea form').length > 0) {
      $qaItem.find('.replyFormArea').empty();
      return;
    }else{
      var $cloneForm = $('form[name=qaForm]').clone();
      $cloneForm[0].reset();
      $cloneForm[0].name = '';
      $cloneForm[0].upperQaNo.value = qaNo;
      $cloneForm[0].qaTitle.value = '[답변] ' + $qaItem.find('.infoForm b').text();
      $qaItem.find('.replyFormArea').append($cloneForm);
    }
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
        alert('삭제가 완료되었습니다.');

        location.href = location.pathname + location.search + '#nav-qna-tab';
        location.reload();
      }
    })
  }
</script>