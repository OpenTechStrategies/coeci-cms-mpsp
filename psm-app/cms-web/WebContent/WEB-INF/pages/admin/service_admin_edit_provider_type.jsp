 <%--
  - Author: TCSASSEMBLER
  - Version: 1.0
  - Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
  -
  - Description: This is the admin provider types edit page.
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
            <c:set var="functionsServiceActiveMenuProviderTypes" value="1"/>
            <h:handlebars template="admin/includes/functions_service_nav" context="${pageContext}" />
            <div class="tabContent" id="tabProviderTypes">
              <form:form id="providerTypeForm" modelAttribute="providerType" action="${ctx}/admin/updateProviderType" method="post">
                <form:hidden path="code"/>
                <div id="addProviderPanel">
                  <div class="sideBorder"><h3>Edit Provider Type</h3></div>
                  <div class="newEnrollmentPanel jerrish">
                    <div class="section">
                      <div class="wholeCol">
                        <label>Provider Type</label>
                        <span class="floatL"><b>:</b></span>
                        <form:input path="description" cssClass="text"/>
                      </div>
                      <div class="tableHeader"><span>Agreements and Addendums</span></div>
                      <div class="wholeCol">
                        <div class="row">
                          <div class="row">
                            <div class="col2">
                              <c:forEach var="doc" items="${selectedAgreements}">
                                <div class="row">
                                  <input type="checkbox" name="providerAgreements" checked="checked" value="${doc.id}"/>
                                  <label for="addTypeCheck56">${doc.title}</label>
                                </div>
                              </c:forEach>
                              <c:forEach var="doc" items="${remainingAgreements}">
                                <div class="row">
                                  <input type="checkbox" name="providerAgreements" value="${doc.id}"/>
                                  <label for="addTypeCheck56">${doc.title}</label>
                                </div>
                              </c:forEach>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="bl"></div>
                      <div class="br"></div>
                    </div>
                    <div class="buttons">
                      <a href="${ctx}/admin/viewProviderTypes" class="greyBtn"><span class="btR"><span class="btM">Cancel</span></span></a>
                      <a href="javascript:;" class="saveProviderTypeBtn greyBtn"><span class="btR"><span class="btM">Save</span></span></a>
                    </div>
                  </div>
                </div><!--/ #addProviderPanel -->
              </form:form>
            </div>
          </div>
        </div>
        <!-- /#mainContent -->

        <h:handlebars template="includes/footer" context="${pageContext}"/>
      </div>
      <!-- /#wrapper -->
  </body>
</html>
