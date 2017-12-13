 <%--
  - Author: TCSASSEMBLER
  - Version: 1.0
  - Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
  -
  - Description: This is the admin provider types page.
--%>
<%@ include file="/WEB-INF/pages/admin/includes/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
              <div id="providerTablePanel">

                <c:set var="itemsName" value="Provider Types"/>
                <c:set var="searchResult" value="${providerTypesSearchResult}"/>

                <form:form id="searchForm" action="${ctx}/admin/viewProviderTypes" modelAttribute="searchCriteria" method="post">
                <form:hidden id="searchFormPageSize" path="pageSize" />
                <form:hidden id="searchFormPageNumber" path="pageNumber" />
                <form:hidden id="searchFormSortColumn" path="sortColumn" />
                <form:hidden id="searchFormAscending" path="ascending" />
                <form:hidden id="searchFormShowFilterPanel" path="showFilterPanel" />

                <form:hidden id="searchFormProviderType" path="typeName" />
              </form:form>
              <div class="pagination">
                <%@ include file="/WEB-INF/pages/admin/includes/page_left_navigation.jsp" %>
                <div class="right">
                  <c:choose>
                  <c:when test="${searchCriteria.showFilterPanel}">
                    <a href="javascript:;" class="blueBtn filterBtn hideFilter"><span class="btR"><span class="btM"><span class="text">Hide Filter</span><span class="arrow"></span></span></span></a>
                  </c:when>
                  <c:otherwise>
                    <a href="javascript:;" class="blueBtn filterBtn showFilter"><span class="btR"><span class="btM"><span class="text">Filter</span><span class="arrow"></span></span></span></a>
                  </c:otherwise>
                  </c:choose>
                  <c:if test="${searchResult.total > 0}">
                    <a href="javascript:;" class="greyBtn deleteProviderTypesBtn"><span class="btR"><span class="btM">Delete Selected Provider Types</span></span></a>
                  </c:if>
                </div>
              </div>
              <!-- /.pagination -->

              <div <c:if test="${!searchCriteria.showFilterPanel}">style="display: none"</c:if>  class="filterPanel">
                <div class="floatW">
                  <div class="leftCol">
                    <div class="row">
                      <label>Provider Type</label>
                      <span class="floatL"><b>:</b></span>
                      <input id="providerTypeFilterText" title="provider type" type="text" class="normalInput" value="${searchCriteria.typeName}"/>
                    </div>
                  </div>
                </div>
                <a id="searchProviderTypes" href="javascript:;" class="purpleBtn showFilter"><span class="btR"><span class="btM">Filter</span></span></a>
              </div>
              <div class="clearFixed"></div>
              <c:choose>
              <c:when test="${searchResult.total == 0}">
                <div class="tableWrapper">
                  <div class="tableContainer"></div>
                  <div class="tabFoot">
                    <div class="tabR">
                      <div class="tabM" style="color: red">
                        No matched data found.
                      </div>
                    </div>
                  </div>
                </div>
              </c:when>
              <c:otherwise>
                <div class="tableWrapper">
                  <div class="tableContainer">
                    <table cellpadding="0" cellspacing="0" class="generalTable" id="draftEnrollmentTable">
                      <thead>
                        <tr>
                          <th class="alignCenter">
                            <input type="checkbox" name="providerType" class="selectAll" title="select all"/>
                            <span class="sep"></span>
                          </th>
                          <th>
                            <c:choose>
                            <c:when test="${searchCriteria.sortColumn == 'name'}">
                              <a class="sortable_column" rel="name" href="javascript:;"><span>Provider Type</span>
                                <c:choose>
                                <c:when test="${searchCriteria.ascending}">
                                  <span class="sort-up"></span>
                                </c:when>
                                <c:otherwise>
                                  <span class="sort-down"></span>
                                </c:otherwise>
                                </c:choose>
                              </a>
                            </c:when>
                            <c:otherwise>
                              <a class="sortable_column" rel="name" href="javascript:;"><span>Provider Type</span></a>
                            </c:otherwise>
                            </c:choose>
                            <span class="sep"></span>
                          </th>
                          <th class="alignCenter">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="item" items="${searchResult.items}">
                          <tr>
                            <td class="alignCenter">
                              <input title="provider type checkbox" <c:if test="${!item.canDelete}">disabled="disabled"</c:if> class="providerTypeCheckBox" value="${item.code}" type="checkbox" name="providerType"/>
                            </td>
                            <td>${item.description}</td>
                            <td class="alignCenter"><a href="${ctx}/admin/getProviderType?providerTypeId=${item.code}" class="viewProviderLink">View</a><span class="sep">|</span><a href="${ctx}/admin/beginEditProviderType?providerTypeId=${item.code}" class="editProviderLink">Edit</a>
                              <span class="sep">|</span>
                              <c:choose>
                              <c:when test="${item.canDelete}"><a rel="${item.code}" href="javascript:;" class="deleteProviderTypeBtn">Delete</a></c:when>
                              <c:otherwise><a style="text-decoration: none;color: gray" href="javascript:;" class="disabledBtn">Delete</a></c:otherwise>
                              </c:choose>
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                  <!-- /.tableContainer -->
                  <div class="tabFoot">
                    <div class="tabR">
                      <div class="tabM">
                        <%@ include file="/WEB-INF/pages/admin/includes/page_navigation.jsp" %>
                      </div>
                    </div>
                  </div>
                  <!-- /.tabFoot -->
                </div>
              </c:otherwise>
              </c:choose>

              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /#mainContent -->

      <h:handlebars template="includes/footer" context="${pageContext}"/>
    </div>
    <!-- /#wrapper -->
    <!-- modal -->
    <div id="modalBackground"></div>
    <div id="modal">
      <div class="modal" id="deleteProviderTypesModal">
        <div class="modalHeader">
          <div class="corner">
            <div class="cornerR">
              <div class="cornerM">
                <a href="javascript:;" class="closeModal">CLOSE</a>
                <h2>Delete Provider Type</h2>
              </div>
            </div>
          </div>
        </div>
        <!-- /.modalHeader -->
        <div class="modalBody">
          <div class="corner">
            <div class="cornerR">
              <div class="cornerM">
                <div class="container">
                  <p class="modal_title"></p>
                  <div class="buttons">
                    <a href="javascript:;" class="purpleBtn saveBtn"><span class="btR"><span class="btM">Delete</span></span></a>
                    <a href="javascript:;" class="greyBtn closeModal"><span class="btR"><span class="btM">Cancel</span></span></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /.modalBody -->
        <div class="modalFooter">
          <div class="corner">
            <div class="cornerR">
              <div class="cornerM">
              </div>
            </div>
          </div>
        </div>
        <!-- /.modalFooter -->
      </div>

      <div class="modal" id="noSelectedItemsModal">
        <div class="modalHeader">
          <div class="corner">
            <div class="cornerR">
              <div class="cornerM">
                <a href="javascript:;" class="closeModal">CLOSE</a>
                <h2>No Selected Provider Type</h2>
              </div>
            </div>
          </div>
        </div>
        <!-- /.modalHeader -->
        <div class="modalBody">
          <div class="corner">
            <div class="cornerR">
              <div class="cornerM">
                <div class="container">
                  <p class="modal_title red">Please select at least one provider type.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /.modalBody -->
        <div class="modalFooter">
          <div class="corner">
            <div class="cornerR">
              <div class="cornerM">
              </div>
            </div>
          </div>
        </div>
        <!-- /.modalFooter -->
      </div>
    </div>
  </body>
</html>
