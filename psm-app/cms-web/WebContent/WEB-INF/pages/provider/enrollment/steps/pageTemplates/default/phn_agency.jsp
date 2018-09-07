<%@page import="gov.medicaid.entities.dto.ViewStatics"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags" %>

<c:set var="formIdPrefix" value="phn_agency"></c:set>

<input type="hidden" name="formNames" value="<%= ViewStatics.PHN_AGENCY_FORM %>">
<c:set var="selectedMarkup" value='selected="selected"' />

<div class="newEnrollmentPanel practicePanel memberInfoPanel">
    <div class="tableHeader topHeader"><span>PHN Agency must be a county or have a contract with a county</span></div>
    <div class="clearFixed"></div>
    <div class="section">
        <div>
            <div class="row">
                <div class="rowWrapper">
                    <div class="row">
                    </div>
                    <div class="row">
                        <table>
                            <tbody>
                            <tr>
                                <td>
                                    <c:set var="formName" value="_26_countyIndicator"></c:set>
                                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                                    <label class="radioLabel">
                                      <input type="radio" value="Y" name="${formName}"  ${formValue eq 'Y' ? 'checked' : ''}/>
                                      Is a county, specify county name
                                    </label>
                                </td>
                                <td>
                                    <c:set var="formName" value="_26_countyName"></c:set>
                                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                                    <input type="text" title="County Name" class="normalInput" name="${formName}" value="${formValue}" maxlength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <c:set var="formName" value="_26_countyIndicator"></c:set>
                                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                                    <label class="radioLabel">
                                      <input type="radio" value="N" name="${formName}"  ${formValue eq 'N' ? 'checked' : ''}/>
                                      Have a contract with a county, upload copy
                                    </label>
                                </td>
                                <td>
                                    <c:set var="formName" value="_26_contractAttachment" />
                                    <h:attachment
                                        name="${formName}"
                                        title="Contract File"
                                        attachmentId="${requestScope[formName]}"
                                        attachmentIdName="_26_contractAttachmentId"
                                        filename="Download" />
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="clearFixed"></div>
        </div>
    </div>
    <!-- /.section -->
    <div class="tl"></div>
    <div class="tr"></div>
    <div class="bl"></div>
    <div class="br"></div>
</div>
