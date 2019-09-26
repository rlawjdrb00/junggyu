var idCheck = 0;
function duplicationId() {

    var inputId= $("#signUpUserId").val();
    var data = {};
    data.inputId = inputId;
        $.ajax({
            async: false,
            type: "post",
            url: "signUpIdCheck",
            contentType: "application/json;charset=utf-8",
            data: JSON.stringify(data),
            success: function (data) {
                alert("DATA "+data);
                if (data == "S") {
                    alert("사용가능한 아이디입니다. : "+data);


                    $("#divInputId").addClass("has-success");
                    $("#divInputId").removeClass("has-error");
                    $("#signUpUserPwd").focus();
                    idCheck = 1;
                }else
                 {
                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");

                    $("#divInputId").addClass("has-error");
                    $("#divInputId").removeClass("has-success");
                    $("#signUpUserId").focus();
                }
            },
            error: function (reg, status, errThrown) {
                alert("network error occur");
            }
        });
    }

    function dosignUp(){
        var formData = $('#signUp').serialize();
        var re = /^[a-zA-Z0-9]{4,12}$/;// 아이디와 패스워드가 적합한지 검사할 정규식

        var id= document.getElementById("signUpUserId");
        var pw= document.getElementById("signUpUserPwd");

        if(!check(re,id,"아이디는 4~12자의 영문 대소문자와 숫자로만 입력")){
            return false;
        }

        if(!check(re,pw,"패스워드는 4~12자의 영문 대소문자와 숫자로만 입력")){
            return false;
        }
        if($("#signUpUserPwd").val() != ($("#signUpUserPwCk").val())){
            alert("비밀번호가 다릅니다. 다시 확인해주세요");
            $("#signUpUserPwd").val("");
            $("#signUpUserPwCk").val("");
            $("#signUpUserPwd").focus();
            return false;
        }
        var inputs = $('#signUp input');
        alert(inputs + ": inputs ");
        for(var i=0 ; i<inputs.length ; i++){
            var input = inputs[i];
            console.log(input.value);
            if(input.value.trim().length == 0){
                alert("빈칸 입력해주세요");
                input.focus();
                input.value="";
                return false;
            }
        }
        $.ajax({
            url:"signUpOk",
            type:"get",
            data:formData,
            dataType:"json",
            success:function(data){
                console.log(data);
                alert(data + " 성공");
                $(location).attr('href',"signUpOk" +
                    "");
            },
            error:function () {
                alert("err");

            }
        });
    }

    function check(re,what,massage){
        if(re.test(what.value)){
            return true;
        }
        alert(massage);
        what.value="";
        what.focus();
    }


// function dosignUp() {
//     window.name = "signUp";
//     window.open("signUpPopup.html","insert","width = 450, height = 320 , resizable = no , scrollbars = no,status = no");
//
// }
//
// function dosignUp()
// {
//     window.open('signUpPopup.html','popup', 'width=300, height=200, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
// }





