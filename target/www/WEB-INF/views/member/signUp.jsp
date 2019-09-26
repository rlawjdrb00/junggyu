<%--
  Created by IntelliJ IDEA.
  User: Tester
  Date: 2019-09-19
  Time: 오후 4:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../tab/header.jsp"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/signUp.js"></script>
<!-- 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
    <div class="card card-signin my-5">

        <form role="form" method="get" id="signUp" name="signUp">
            <!-- <form role="form"> -->
            <div class="form-group">
                <div class="form-group" id="inputId">
                    <label>아이디</label>
                    <input class="form-control" style="margin-bottom: 5px;" placeholder="아이디" name="userid"
                           id="signUpUserId" type="text" />
                    <input type="button" class="btn btn-secondary" style="width: 20%;" value="중복확인"
                           onclick="duplicationId();" />
                </div>

                <div class="form-group">
                    <label>비밀번호</label> <input class="form-control" placeholder="비밀번호"
                                               id="signUpUserPwd" name="userpw" type="password" />
                </div>
                <div class="form-group">
                    <label>비밀번호 확인</label>
                    <input class="form-control" placeholder="비밀번호 확인" name="signUpUserPwCk" id="signUpUserPwCk"type="password" />
                </div>


                <div class="form-group">
                    <label> 이름 </label>
                    <input class="form-control" placeholder="이름" name="username" id="signUpUserName" type="text" />
                </div>
                <div class="form-group">
                    <label>전화번호 (숫자만 입력가능)</label>
                    <input class="form-control" placeholder="전화번호" name="tel" id="signUpUserTel" type="tel" />
                </div>

                <input class="form-control" style="width: 40%; display: inline;"
                       placeholder="우편번호" name="postno" id="signUpUserPostNo" type="text"
                       readonly="readonly">
                <button type="button" class="btn btn-default"
                        onclick="execPostCode();">
                    <i class="fa fa-search"></i> 우편번호 찾기
                </button>


                <div class="form-group">
                    <input class="form-control" style="top: 5px;" placeholder="도로명 주소"
                           name="addr" id="signUpUserAddress" type="text" readonly="readonly" />
                </div>
                <div class="form-group">
                    <input class="form-control" placeholder="상세주소" name="addr_detail"
                           id="signUpUserAddressDetail" type="text" />
                </div>
                <%--<button type="button"  class="btn btn-success btn-secondary" onclick="dosignUp();">회원가입</button>--%>
                 <input type="button" class="btn btn-lg btn-success btn-block" value="회원가입" onclick="dosignUp();" />
            </div>

        </form>
    </div>
</div>

<jsp:include page="../tab/footer.jsp"/>


<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
    function execPostCode() {
        new daum.Postcode({
            oncomplete : function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if (data.buildingName !== '' && data.apartment === 'Y') {
                    extraRoadAddr += (extraRoadAddr !== '' ? ', '
                        + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if (extraRoadAddr !== '') {
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if (fullRoadAddr !== '') {
                    fullRoadAddr += extraRoadAddr;
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                console.log(data.zonecode);
                console.log(fullRoadAddr);

                $("[name=postno]").val(data.zonecode);
                $("[name=addr]").val(fullRoadAddr);

                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
            }
        }).open();
    }
</script>
