$(document).ready(function(){
    var i =1;
    $("#btnLogin").click(function(){
        $("#ModalLogin").modal();
    });
    $("#btnRegister").click(function(){
        $("#ModalLogin").modal('hide');
        $("#ModalRegister").modal();
    });
    $("#goCH").click(function(){
        location.href = 'TrangChu.html';
    })
    $("#goDN").click(function(){
        $("thongbao2").modal('hide');
        $("#ModalLogin").modal();
    })

    var txtpassword  =  $("#InputPassword");
    var txtnotepass = $("#login-pass-note");
    function kiemtrapassword(){
        var re = /(?=.*\d).{6,30}/;
        if(txtpassword.val() == ""){
            txtnotepass.html("* Bắt buộc nhập mật khẩu");
            return false;
        }
        if(!re.test(txtpassword.val())){
            txtnotepass.html("* Mật khẩu phải có cả chữ cái, số và ít nhất 6 kí tự");
            return false;
        }
        txtnotepass.html("");
        return true;

    }
    txtpassword.blur(kiemtrapassword);

    var txtemail  =  $("#InputEmail");
    var txtnoteemail = $("#login-email-note")
    function kiemtraemail(){
        var re = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if(txtemail.val() == ""){
            txtnoteemail.html("* Bắt buộc nhập email");
            return false;
        }
        if(!re.test(txtemail.val())){
            txtnoteemail.html("* Email phải có dạng example@xyz.com");
            return false;
        }  
        txtnoteemail.html("");
        return true;

    }
    txtemail.blur(kiemtraemail);

    $("#btnLoginform").click(function(){
        if(!kiemtraemail() || !kiemtrapassword()){
            $("#login-note").html("*Bạn cần nhập đầy đủ thông tin và chính xác")
            return false;
        }
        
        $("#ModalLogin").modal('hide');
        $("#thongbao").modal();
        return true;
    })


    // Kiểm tra form đăng kí 
    var RegisterName  =  $("#RegisterName");
    var RegisterNamenote = $("#RegisterName-note");
    function kiemtraName(){
        document.getElementById('RegisterName-note').style.color = 'red';
        if(RegisterName.val() == ""){
            RegisterNamenote.html("* Bắt buộc nhập Họ và tên");
            return false;
        } 
        RegisterNamenote.html("* Name hợp lệ");
        document.getElementById('RegisterName-note').style.color = 'green';
        return true;

    }
    RegisterName.blur(kiemtraName);
    
    /// kiểm tra email
    var RegisterEmail  =  $("#RegisterEmail");
    var RegisterEmailnote = $("#RegisterEmail-note");
    function kiemtraemail2(){
        document.getElementById('RegisterEmail-note').style.color = 'red';
        var re = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if(RegisterEmail.val() == ""){
            RegisterEmailnote.html("* Bắt buộc nhập email");
            return false;
        }
        if(!re.test(RegisterEmail.val())){
            RegisterEmailnote.html("* Email phải có dạng example@xyz.com");
            return false;
        }  
        RegisterEmailnote.html("* Email hợp lệ");
        document.getElementById('RegisterEmail-note').style.color = 'green';
        return true;

    }
    RegisterEmail.blur(kiemtraemail2);
    // kiểm tra số điện thoại
    var RegisterPhone  =  $("#RegisterPhone");
    var RegisterPhonenote = $("#RegisterPhone-note");
    function kiemtraphone(){
        document.getElementById('RegisterPhone-note').style.color = 'red';
        var re = /((09|03|07|08|05)+([0-9]{8})\b)/;
        if(RegisterPhone.val() == ""){
            RegisterPhonenote.html("* Bắt buộc nhập số điện thoại");
            return false;
        }
        if(!re.test(RegisterPhone.val())){
            RegisterPhonenote.html("* số điện thoại phải có 10 số và bắt đầu là 03, 05, 07, 08 hoặc 09");
            return false;
        }  
        RegisterPhonenote.html("* Số điện thoại hợp lệ");
        document.getElementById('RegisterPhone-note').style.color = 'green';
        return true;

    }
    RegisterPhone.blur(kiemtraphone);

    //kiểm tra địa chỉ
    var RegisterAddress  =  $("#RegisterAddress");
    var RegisterAddressnote = $("#RegisterAddress-note");
    function kiemtraaadress(){
        if(RegisterAddress.val() == ""){
            RegisterAddressnote.html("* Bắt buộc nhập địa chỉ");
            return false;
        }
        RegisterAddressnote.html("");
        return true;

    }
    RegisterAddress.blur(kiemtraaadress); 
    // kiểm tra password
    var RegisterPassword1  =  $("#RegisterPassword1");
    var RegisterPassword1note = $("#RegisterPassword1-note");
    function kiemtrapassword2(){
        document.getElementById('RegisterPassword1-note').style.color = 'red';
        var re = /(?=.*\d).{6,30}/;
        if(RegisterPassword1.val() == ""){
            RegisterPassword1note.html("* Bắt buộc nhập mật khẩu");
            return false;
        }
        if(!re.test(RegisterPassword1.val())){
            RegisterPassword1note.html("* Mật khẩu phải có cả chữ cái, số và ít nhất 6 kí tự");
            return false;
        }
        RegisterPassword1note.html("* Mật khẩu hợp lệ");
        document.getElementById('RegisterPassword1-note').style.color = 'green';
        return true;

    }
    RegisterPassword1.blur(kiemtrapassword2);

    // kiểm tra nhập lại password
    var RegisterPassword2  =  $("#RegisterPassword2");
    var RegisterPassword2note = $("#RegisterPassword2-note");
    function kiemtranhaplaipassword(){
        if(RegisterPassword2.val() == ""){
            RegisterPassword2note.html("* Bắt buộc nhập lại mật khẩu");
            return false;
        }
        if(RegisterPassword2.val() != RegisterPassword1.val()){
            RegisterPassword2note.html("* Mật khẩu và nhập lại mật khẩu phải giống nhau ");
            return false;
        }
        RegisterPassword2note.html("");
        return true;

    }
    RegisterPassword2.blur(kiemtranhaplaipassword);

    $("#Register").click(function(){
        if(!kiemtraemail2() || !kiemtraphone() || !kiemtraaadress() || !kiemtrapassword2() || !kiemtranhaplaipassword()){
            $("#login-note").html("*Bạn cần nhập đầy đủ thông tin và chính xác")
            return false;
        }
        $("#ModalRegister").modal('hide');
        $("#thongbao2").modal();
        return true;
    })

    ///////////////////////// Regex cho phiếu thanh toán /////////////////////////

    var txtho = $("#thanhtoan-Lname");
    var noteho = $("#thanhtoan-Lname-note");
    function kiemtraho(){
        if(txtho.val() == ""){
            noteho.html("* Bắt buộc nhập Họ");
            return false;
        }
        noteho.html("");
        return true;
    }
    txtho.blur(kiemtraho);

    var txtten = $("#thanhtoan-name");
    var noteten = $("#thanhtoan-name-note");
    function kiemtraten(){
        if(txtten.val() == ""){
            noteten.html("* Bắt buộc nhập Tên");
            return false;
        }
        noteten.html("");
        return true;
    }
    txtten.blur(kiemtraten);

    
    var txttp = $("#thanhtoan-Tadd");
    var notetp = $("#thanhtoan-Tadd-note");
    function kiemtratp(){
        if(txttp.val() == ""){
            notetp.html("* Bắt buộc nhập Thành phố/Tỉnh");
            return false;
        }
        notetp.html("");
        return true;
    }
    txttp.blur(kiemtratp);

    var txtdc = $("#thanhtoan-add");
    var notedc = $("#thanhtoan-add-note");
    function kiemtradc(){
        if(txtdc.val() == ""){
            notedc.html("* Bắt buộc nhập Địa chỉ");
            return false;
        }
        notedc.html("");
        return true;
    }
    txtdc.blur(kiemtradc);

    var txttel  =  $("#thanhtoan-tel");
    var notetel = $("#thanhtoan-tel-note");
    function kiemtratel(){
        var re = /((09|03|07|08|05)+([0-9]{8})\b)/;
        if(txttel.val() == ""){
            notetel.html("* Bắt buộc nhập số điện thoại");
            return false;
        }
        if(!re.test(txttel.val())){
            notetel.html("* số điện thoại phải có 10 số và bắt đầu là 03, 05, 07, 08 hoặc 09");
            return false;
        }  
        notetel.html("");
        return true;

    }
    txttel.blur(kiemtratel);

    var txtemail  =  $("#thanhtoan-email");
    var noteemail = $("#thanhtoan-email-note");
    function kiemtraemail3(){
        var re = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if(txtemail.val() == ""){
            noteemail.html("* Bắt buộc nhập email");
            return false;
        }
        if(!re.test(txtemail.val())){
            noteemail.html("* Email phải có dạng example@xyz.com");
            return false;
        }  
        noteemail.html("");
        return true;

    }
    txtemail.blur(kiemtraemail3);

    $("#dathang").click(function(){
        if(!kiemtraho() || !kiemtraten() || !kiemtratp() || !kiemtradc() || !kiemtratel() || !kiemtraemail3() ){
            $("#thanhtoan-note").html("*Bạn cần nhập đầy đủ thông tin và chính xác")
            return false;
        }
        localStorage.removeItem("giohang");
        localStorage.removeItem("soluongsp");
        $("#thongbaothanhtoan").modal();
        return true;
    })

})