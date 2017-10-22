<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<div class="panel panel-primary">
	<a href="/resume/edit/${profile.uid}"><img class="img-responsive photo" src="${profile.profilePhoto}" alt="photo"></a>
	<h1 class="text-center">
		<a style="color: black;" href="/resume/edit">${profile.uid}</a>
	</h1>
	<h6 class="text-center">
		<strong>${profile.city}, ${profile.country}</strong>
	</h6>
	<h6 class="text-center">
		<strong>Age:</strong> ${profile.age}, <strong>Birthday: </strong> ${profile.birthDay}
	</h6>
	<div class="list-group contacts">
		<a class="list-group-item" href="tel:+380507525137"><i class="fa fa-phone"></i> +380507525137</a> 
		<a class="list-group-item" href="mailto:richard-hendricks@gmail.com"><i class="fa fa-envelope"></i> richard-hendricks@gmail.com</a> 
		<a class="list-group-item" href="javascript:void(0);"><i class="fa fa-skype"></i>richard-hendricks</a> 
		<a target="_blank" class="list-group-item" href="https://vk.com/richard-hendricks"><i class="fa fa-vk"></i> https://vk.com/richard-hendricks</a> 
		<a target="_blank" class="list-group-item" href="https://facebook.com/richard-hendricks"><i class="fa fa-facebook"></i> https://facebook.com/richard-hendricks</a> 
		<a target="_blank" class="list-group-item" href="https://linkedin.com/richard-hendricks"><i class="fa fa-linkedin"></i> https://linkedin.com/richard-hendricks</a> 
		<a target="_blank" class="list-group-item" href="https://github.com/richard-hendricks"><i class="fa fa-github"></i> https://github.com/richard-hendricks</a> 
		<a target="_blank" class="list-group-item" href="https://stackoverflow.com/richard-hendricks"><i class="fa fa-stack-overflow"></i> https://stackoverflow.com/richard-hendricks</a>
	</div>
</div>