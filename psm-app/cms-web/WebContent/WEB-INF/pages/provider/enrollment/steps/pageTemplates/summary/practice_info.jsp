<%--
  Copyright 2018 The MITRE Corporation
  
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
  
      http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="practiceSection">
    <div class="wholeCol">
        <c:if test="${requestScope['_04_bound'] eq 'Y'}">
           <%@include file="/WEB-INF/pages/provider/enrollment/steps/pageTemplates/common/practice_type.jsp" %>
        </c:if>
        <c:if test="${requestScope['_05_bound'] eq 'Y'}">
            <%@include file="/WEB-INF/pages/provider/enrollment/steps/pageTemplates/common/private_practice.jsp" %>
        </c:if>
        <c:if test="${requestScope['_06_bound'] eq 'Y'}">
            <%@include file="/WEB-INF/pages/provider/enrollment/steps/pageTemplates/common/primary_practice.jsp" %>
        </c:if>
    </div>
    <div class="clearFixed"></div>
</div>
<c:if test="${requestScope['_07_bound'] eq 'Y'}">
    <%@include file="/WEB-INF/pages/provider/enrollment/steps/pageTemplates/common/additional_practice.jsp" %>
</c:if>
