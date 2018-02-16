package gov.medicaid.features.enrollment.steps;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gov.medicaid.features.general.steps.GeneralSteps;
import gov.medicaid.features.enrollment.ui.OrganizationInfoPage;
import gov.medicaid.features.enrollment.ui.PersonalInfoPage;
import net.thucydides.core.annotations.Steps;
import org.apache.commons.lang3.StringUtils;

import java.time.LocalDate;

import static org.assertj.core.api.Assertions.assertThat;

@SuppressWarnings("unused")
public class ValidationStepDefinitions {
    @Steps
    EnrollmentSteps enrollmentSteps;

    @Steps
    GeneralSteps generalSteps;

    private OrganizationInfoPage organizationInfoPage;
    private PersonalInfoPage personalInfoPage;

    @When("^when I enter an (\\d+) digit FEIN$")
    public void when_I_enter_an_digit_FEIN(int numDigits) {
        String generatedFEIN = StringUtils.repeat("0", numDigits);
        organizationInfoPage.setFEIN(generatedFEIN);
    }

    @When("^I enter a date of birth less than eighteen years ago")
    public void fill_form_with_under_age_date_of_birth() {
        LocalDate eighteenthBirthdayEve = LocalDate
                .now()
                .minusYears(18)
                .plusDays(1);
        personalInfoPage.enterDOB(eighteenthBirthdayEve);
    }

    @When("^I click 'next' on the personal info page$")
    public void click_next_on_personal_info_page() {
        personalInfoPage.clickNext();
    }

    @Then("^It should be rejected$")
    public void it_should_be_rejected() {
        String feinValue = organizationInfoPage.getFEINValue();
        assertThat(feinValue.length()).isEqualTo(0);
    }

    @Then("^I should get a provider too young error$")
    public void i_should_get_a_provider_too_young_error() throws Exception {
        enrollmentSteps.checkForTooYoungError();
    }

    @Then("^I should get a renewal date error$")
    public void should_get_a_renewal_date_error() throws Exception {
        enrollmentSteps.checkForRenewalDateError();
    }
}
