/*给表单绑定onsubmit事件，景甜发起判断每一个方法的检验的结果
 * 如果都为true 监听器返回true
 * 入果有一个返回false 监听器返回false
  定义一些方法分别校验各个表单项
 * */
window.onload = function(){
    //1.给表单绑定onsubmit事件
    document.getElementById("form").onsubmit = function(){
        /*//调用用户校验方法 checkUsername();
        //调用密码校验方法 checkPassword();
        return checkUsername()&&checkPassword();*/
        return checkUsername()&&checkPassword()&&checkPhone();
    }
    //给用户名 密码框 分别绑定离焦事件 鼠表点击离开后开始校验
    document.getElementById("username").onblur = checkUsername;
    document.getElementById("password").onblur = checkPassword;
    document.getElementById("phone").onblur = checkPhone;
}

//校验用户名
function checkUsername(){
    var username = document.getElementById("username").value;
    //'请输入1-6位的汉字、英文、数字、下划线
    var reg_username = /^[\u4e00-\u9fa5\w]{2,6}$/;
    var flag = reg_username.test(username);
    var s_username = document.getElementById("s_username");
    if(flag){
        s_username.innerHTML = "<img height='25px' width='35px' src='../img/gou.png'/>";
    }else{
        s_username.innerHTML = "用户名格式有误!";
    }
    return flag;
}
//检验密码
function checkPassword(){
    var password = document.getElementById("password").value;
    var reg_password = /^\w{6,12}$/;
    var flag = reg_password.test(password);
    var s_password = document.getElementById("s_password");
    if(flag){
        s_password.innerHTML = "<img height='25' width='35' src='../img/gou.png'>";
    }else{
        s_password.innerHTML = "密码格式有误!";
    }
    return flag;
}


//检验手机号
function checkPhone(){
    var phone = document.getElementById("phone").value;
    var reg_phone = /^1\d{10}$/;
    var flag = reg_phone.test(phone);
    var s_phone = document.getElementById("s_phone");
    if(flag){
        s_phone.innerHTML = "<img height='25' width='35' src='../img/gou.png'>";
    }else{
        s_phone.innerHTML = "电话格式有误!";
    }
    return flag;

}

