function validateForm(){
    var firstname = document.getElementById("fname")
    var username = document.getElementById("username")
    var mail = document.getElementById("mail")
    var password = document.getElementById("password1")
    var confirmpassword = document.getElementById("password2")
    var valid=true;

    if(firstname.value.length==0){
        firstname.className="wrong-input";
        firstname.nextElementSibling.innerHTML="First name can't be empty";
        valid=false;
    }

    if(username.value.length==0){
        username.className="wrong-input";
        username.nextElementSibling.innerHTML="This field can't be empty";
        valid=false;
    }

    if(mail.value.length==0){
        mail.className="wrong-input";
        mail.nextElementSibling.innerHTML="Username can't be empty";
        valid=false;
    }

    if(password.value.length<6){
        password.className="wrong-input";
        password.nextElementSibling.innerHTML="Password shoud be more than 8 charactors";
        valid=false;
    }

    if(password.value.length==0){
        password.className="wrong-input";
        password.nextElementSibling.innerHTML="You should enter the password";
        valid=false;
    }

    if(confirmpassword.value!=password.value || confirmpassword.value==0){
        confirmpassword.className="wrong-input";
        confirmpassword.nextElementSibling.innerHTML="Password does not match";
        valid=false;
    }



    return valid;
}
