/*
 * Copyright (C) 2013 TopCoder Inc., All Rights Reserved.
 */
package gov.medicaid.entities;

import javax.persistence.Table;
import javax.persistence.Column;

/*
 * Represents the Assurance Statements lookup for Chemical Dependency Program.
 */
@javax.persistence.Entity
@Table(name = "service_assurance_types")
public class ServiceAssuranceType extends LookupEntity {
    /**
     * Represents the IN/OUT patient indicator.
     */
    @Column(name = "patient_indicator")
    private String patientInd;

    /**
     * Gets the patient indicator.
     *
     * @return the patientInd
     */
    public String getPatientInd() {
        return patientInd;
    }

    /**
     * Sets the patient indicator.
     *
     * @param patientInd
     */
    public void setPatientInd(String patientInd) {
        this.patientInd = patientInd;
    }
}
