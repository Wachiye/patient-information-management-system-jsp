package com.egerton.data;

import java.util.Date;

public class Diagnose {
    private long id;
    private Patient patient;
    private String patientDescription;
    private String observableSymptoms;
    private boolean requireTest = false;
    private LabTest labTest;
    private User diagnosedBy;
    private Date diagnosedOn;
    private String results;
    private String remarks;
}
