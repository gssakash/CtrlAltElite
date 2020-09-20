$("#profile-container").hide();
$( window ).load(function() {
    $("#email").val() === " jasbc"
    $(".sign-up-btn,.sign-in-btn").click(function(){
        $("#contact-us").hide()
        $("#profile-container").show();
        var name = $("#name").val();
        var email = $("#email").val();
        $(".user-detail-1").html(name)
        $(".user-detail-2").html(email)
    })
});

const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
