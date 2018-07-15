package gov.medicaid.features.enrollment.steps;

import cucumber.api.java.en.When;
import gov.medicaid.features.general.steps.GeneralSteps;
import net.thucydides.core.annotations.Steps;

import java.io.IOException;

@SuppressWarnings("unused")
public class IndividualEnrollmentStepDefinitions {
    @Steps
    EnrollmentSteps enrollmentSteps;

    @Steps
    GeneralSteps generalSteps;

    @When("^I am on the personal info page$")
    public void i_am_on_the_personal_info_page() {
        enrollmentSteps.selectIndividualProviderType();
    }
    
    @When("^I am on the personal assistant enrollment page$")
    public void i_am_on_the_personal_care_assistant_enrollment_page() {
        enrollmentSteps.selectPersonalCareAssistantlProviderType();
        enrollmentSteps.enterPersonCareAssistantIndividualPersonalInfo();
    }

    @When("I am on the individual provider license info page")
    public void i_am_on_the_individual_provider_license_info_page() {
        i_am_on_the_personal_info_page();
        enrollmentSteps.enterIndividualPersonalInfo();
        enrollmentSteps.advanceFromIndividualPersonalInfoToLicenseInfo();
    }

    @When("^I indicate I am a provider at a Public Health Service Indian Hospital$")
    public void i_indicate_i_am_a_provider_at_a_public_health_service_indian_hospital() {
        enrollmentSteps.inputProviderAtPublicHealthServiceIndianHospital(true);
    }

    @When("^I indicate I am not a provider at a Public Health Service Indian Hospital$")
    public void i_indicate_i_am_not_a_provider_at_a_public_health_service_indian_hospital() {
        enrollmentSteps.inputProviderAtPublicHealthServiceIndianHospital(false);
    }

    @When("^I am on the individual provider practice info page$")
    public void i_am_on_the_individual_provider_practice_info_page() throws IOException {
        i_am_on_the_individual_provider_license_info_page();
        i_indicate_i_am_not_a_provider_at_a_public_health_service_indian_hospital();
        enrollmentSteps.enterLicenseInfo();
        enrollmentSteps.uploadLicense();
        enrollmentSteps.advanceFromIndividualLicenseInfoToPracticeInfo();
    }

    @When("^I indicate I maintain my own private practice$")
    public void i_indicate_i_maintain_my_own_private_practice() {
        enrollmentSteps.indicateMaintainOwnPrivatePractice(true);
    }

    @When("^I indicate I do not maintain my own private practice$")
    public void i_indicate_i_do_not_maintain_my_own_private_practice() {
        enrollmentSteps.indicateMaintainOwnPrivatePractice(false);
    }

    @When("^I indicate I am employed or independently contracted by a group practice$")
    public void i_indicate_i_am_employed_or_independently_contracted_by_a_group_practice() {
        enrollmentSteps.indicateGroupPractice(true);
    }

    @When("^I start to add a practice location$")
    public void i_start_to_add_a_practice_location() {
        enrollmentSteps.clickAddPracticeLocation();
    }

    @When("^I open the practice lookup modal$")
    public void i_open_the_practice_lookup_modal() {
        enrollmentSteps.openPracticeLookupModal();
    }

    @When("^I am on the individual summary page$")
    public void i_am_on_the_individual_summary_page() throws IOException {
        i_am_on_the_individual_provider_practice_info_page();
        enrollmentSteps.enterIndividualPrivatePracticeInfo();
        enrollmentSteps.advanceFromIndividualPracticeInfoToSummaryPage();
    }

    @When("^I am on the individual provider statement page$")
    public void i_am_on_the_individual_provider_statement_page() throws IOException {
        i_am_on_the_individual_summary_page();
        enrollmentSteps.advanceFromIndividualSummaryToProviderStatementPage();
    }
}
