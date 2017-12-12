 <%--
  - Author: TCSASSEMBLER
  - Version: 1.0
  - Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
  -
  - Description: This is the admin help topics edit/create page.
--%>
<%@ include file="/WEB-INF/pages/admin/includes/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- <c:out value="${pageScope['javax.servlet.jsp.jspPage']}"></c:out> -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
  <c:set var="title" value="Functions (Service Admin)"/>
  <c:set var="adminPage" value="true" />
  <h:handlebars template="includes/html_head" context="${pageContext}" />
  <body>
    <div id="wrapper">
      <h:handlebars template="includes/header" context="${pageContext}"/>
      <div id="mainContent">
        <div class="contentWidth">
          <div class="mainNav">
            <h:handlebars template="includes/logo" context="${pageContext}"/>
            <c:set var="activeTab" value="4"></c:set>
            <h:handlebars template="includes/nav" context="${pageContext}"/>
          </div>
          <div class="breadCrumb">
            Functions
          </div>
          <h1>Functions</h1>
          <div class="tabSection functionTab" id="enrollmentSection">
            <c:set var="functionsServiceActiveMenuHelpTopics" value="1"/>
            <h:handlebars template="admin/includes/functions_service_nav" context="${pageContext}" />
            <div class="tabContent" id="tabHelpTopics">
              <c:choose>
              <c:when test="${helpItem.id==0}">
                <c:set var="actionPath" value="${ctx}/admin/createHelpItem"/>
              </c:when>
              <c:otherwise>
                <c:set var="actionPath" value="${ctx}/admin/updateHelpItem"/>
              </c:otherwise>
              </c:choose>
              <form:form modelAttribute="helpItem" action='${actionPath}' id="helpTopicForm" method="post">
                <form:hidden path="id" />
                <div id="editHelpTopicPanel">
                  <div>
                    <div class="sideBorder"><h3>
                        <c:choose>
                        <c:when test="${helpItem.id==0}">Add Help Topic</c:when>
                        <c:otherwise>Edit Help</c:otherwise>
                        </c:choose>
                      </h3></div>
                      <div class="newEnrollmentPanel">
                        <div class="section">
                          <div class="wholeCol">
                            <div class="row">
                              <label>Topic Title</label>
                              <span class="floatL"><b>:</b></span>
                              <form:input path="title" cssClass="text longInput"/>
                            </div>
                            <div class="row">
                              <label>Content</label>
                              <span class="floatL"><b>:</b></span>
                              <form:textarea path="description" rows="20" cols="50" cssClass="longTextArea text"/>
                            </div>
                          </div>
                        </div>
                        <div class="bl"></div>
                        <div class="br"></div>
                      </div>
                      <div class="buttons">
                        <c:choose>
                        <c:when test="${helpItem.id==0}"><a href="${ctx}/admin/searchHelp" class="greyBtn"><span class="btR"><span class="btM">Cancel</span></span></a></c:when>
                        <c:otherwise><a href="${ctx}/admin/getHelpItem?helpItemId=${helpItem.id}" class="greyBtn"><span class="btR"><span class="btM">Cancel</span></span></a></c:otherwise>
                        </c:choose>
                        <a href="javascript:;" class="saveHelpTopicBtn greyBtn"><span class="btR"><span class="btM">Save</span></span></a>
                      </div>
                  </div>
                </div>
              </form:form>
            </div>
          </div>
        </div>
      </div>
      <!-- /#mainContent -->
      <h:handlebars template="includes/footer" context="${pageContext}"/>
    </div>
    <!-- /#wrapper -->
  </body>
</html>
