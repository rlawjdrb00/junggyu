function loginbtn() {

        var json = {
            userId: $("#userId").val(),
            userpw: $("#userpw").val(),
        };
        for (var str in json) {
            if (json[str].length == 0) {
                alert($("#" + str).attr("placeholder") + "를 입력해주세요");
                $("#" + str).focus();
                return;
            }
        }
        $.ajax({
            type: "POST",
            url: "/loginCheck",
            data: json,
            success: function (msg) {
                console.log(msg);
                if (msg == "failure") {
                    alert("아이디 또는 비밀번호가 일치하지않습니다.");
                } else {
                    alert("성공");
                    window.location.href = "/";
                }
            },
            error: function (error) {
                alert("오류발생 " + error);
            }
        });

    }
