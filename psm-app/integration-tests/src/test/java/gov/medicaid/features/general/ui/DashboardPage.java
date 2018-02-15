package gov.medicaid.features.general.ui;

import gov.medicaid.features.PsmPage;

import static org.assertj.core.api.Assertions.assertThat;

public class DashboardPage extends PsmPage {
    public void clickOnNewEnrollment() {
        click($("#createNewEnrollment"));
        assertThat(getTitle()).isEqualTo("Provider Type Page");
    }

    public void selectProviderType(String aProviderType) {
        $("[name=_01_providerType]").selectByVisibleText(aProviderType);
    }

    public void clickNext() {
        click($(".nextBtn"));
    }

    public void logout() {
        click($(".logoutButton"));
    }

    public void clickMyProfile() {
        click($("#my_profile_tab"));
    }

    public void clickFilterButton() {
        click($(".filterBtn"));
    }

    public void checkOnDashboard() {
        assertThat(getTitle()).isEqualTo("Dashboard");
    }

}
