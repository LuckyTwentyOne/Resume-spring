<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ attribute name="selected" required="true" type="java.lang.String" %>

<ul class="nav nav-tabs" role="tablist">
	<li role="presentation" ${selected == 'profile'     ? 'class="active"' : ''}><a href="/resume/edit">Основное</a></li>
	<li role="presentation" ${selected == 'contacts'    ? 'class="active"' : ''}><a href="/resume/edit/contacts">Контакты</a></li>
	<li role="presentation" ${selected == 'skills'      ? 'class="active"' : ''}><a href="/resume/edit/skills">Технические навыки</a></li>
	<li role="presentation" ${selected == 'practics'    ? 'class="active"' : ''}><a href="/resume/edit/practics">Практический опыт</a></li>
	<li role="presentation" ${selected == 'certificates'? 'class="active"' : ''}><a href="/resume/edit/certificates">Сертификаты</a></li>
	<li role="presentation" ${selected == 'courses'	 	? 'class="active"' : ''}><a href="/resume/edit/courses">Курсы</a></li>
	<li role="presentation" ${selected == 'education'   ? 'class="active"' : ''}><a href="/resume/edit/education">Образование</a></li>
	<li role="presentation" ${selected == 'languages'   ? 'class="active"' : ''}><a href="/resume/edit/languages">Языки</a></li>
	<li role="presentation" ${selected == 'hobbies'     ? 'class="active"' : ''}><a href="/resume/edit/hobbies">Хобби</a></li>
	<li role="presentation" ${selected == 'info'   	 	? 'class="active"' : ''}><a href="/resume/edit/info">Дополнительно</a></li>
</ul>