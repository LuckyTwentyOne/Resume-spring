<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" 		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ attribute name="languages" required="true" type="java.util.List" %>
<%@ attribute name="showEdit"  required="false" type="java.lang.Boolean" %>

	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="fa fa-language"></i> Foreign languages <a class="edit-block" href="/resume/edit/languages">Edit</a>
			</h3>
		</div>
		<div class="panel-body">
			<c:forEach items="${languages }" var="language">
				<strong>${language.name }: </strong><span class="text-capitalize">${language.level.dbValue }</span>
				<c:if test="${language.hasLanguageType }"><em>(<span class="text-capitalize">${language.type.dbValue }</span>)</em></c:if>
				<br>
			</c:forEach>
		</div>
	</div>