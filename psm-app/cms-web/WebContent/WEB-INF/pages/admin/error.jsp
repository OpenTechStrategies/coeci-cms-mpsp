
<%--
  - Author: TCSASSEMBLER
  - Version: 1.0
  - Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
  -
  - Description: This is the error page.
--%>
<%@ include file="/WEB-INF/pages/admin/includes/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- <c:out value="${pageScope['javax.servlet.jsp.jspPage']}"></c:out> -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
  <c:set var="title" value="Error" />
  <c:set var="adminPage" value="true" />
  <h:handlebars template="includes/html_head" context="${pageContext}" />
  <body>
    <div id="wrapper">
      <h:handlebars template="includes/header" context="${pageContext}"/>
      <div id="mainContent" class="detailPage">
        <div class="contentWidth">
          <c:set var="active_menu" value="dashboard" />
          <h:handlebars template="includes/nav" context="${pageContext}"/>
          <div class="head">
            <h1>Error</h1>
          </div>
          <div class="clearFixed"></div>
          <div class="dashboardPanel">
            <p style="color: red">This is a generic error page. If you are seeing this, the PSM controller
            experienced an error while processing this request. The detailed error message will be present
            in the log files for debugging purposes.</p>
          </div>
        </div>
      </div>
      <!-- /#mainContent -->

      <h:handlebars template="includes/footer" context="${pageContext}"/>
    </div>
    <!-- /#wrapper -->
  </body>
</html>
