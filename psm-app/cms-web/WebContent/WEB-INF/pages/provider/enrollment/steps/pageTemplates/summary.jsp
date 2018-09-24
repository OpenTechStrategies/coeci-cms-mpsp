<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="clearFixed"></div>
<%@include file="/WEB-INF/pages/provider/enrollment/steps/pageTemplates/common/tabs.jsp" %>
<form action="<c:url value="/provider/enrollment/page" />"
    id="enrollmentForm"
    method="post"
    enctype="multipart/form-data">
  <sec:csrfInput />

  <input type="hidden" name="pageName" value="${pageName}"/>
  <c:set var="showExportNavigation" value="${true}" />
  <c:set var="isTopNavigation" value="${true}" />
  <%@include file="/WEB-INF/pages/provider/enrollment/steps/pageTemplates/common/steps_navigation_buttons.jsp" %>

  <div class="personalPanel summaryPageWrapper">
    <c:set var="afterSummary" value="${false}"></c:set>
    <c:forEach var="tabName" items="${viewModel.tabNames}" varStatus="status">
      <c:if test="${tabName ne pageName and not afterSummary}">
        <%@include file="/WEB-INF/pages/provider/enrollment/steps/pageTemplates/summary/header.jsp" %>
      </c:if>
      <c:choose>
      <c:when test="${tabName eq 'Personal Information'}">
        <jsp:include page="pageTemplates/summary/personal_info.jsp" />
      </c:when>
      <c:when test="${tabName eq 'Practice Information'}">
        <jsp:include page="pageTemplates/summary/practice_info.jsp" />
      </c:when>
      <c:otherwise>
        <c:forEach var="formName" items="${viewModel.tabModels[tabName].formNames}">
          <c:forEach var="entry" items="${summaryViewRegistry}">
            <c:if test="${formName eq entry.key}">
              <jsp:include page="${entry.value}" />
            </c:if>
          </c:forEach>
        </c:forEach>
      </c:otherwise>
      </c:choose>
      <c:if test="${tabName eq pageName}"><c:set var="afterSummary" value="${true}"></c:set></c:if>
    </c:forEach>
    <div class="tl"></div>
    <div class="tr"></div>
    <div class="bl"></div>
    <div class="br"></div>
  </div>

  <c:set var="isTopNavigation" value="${false}"></c:set>
  <%@include file="/WEB-INF/pages/provider/enrollment/steps/pageTemplates/common/steps_navigation_buttons.jsp" %>

</form>
