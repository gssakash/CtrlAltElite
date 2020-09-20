$("#profile-container").hide();
$(".sign-up-btn,.sign-in-btn").click(function(){
    $("#contact-us").hide()
    $("#profile-container").show();
})
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});