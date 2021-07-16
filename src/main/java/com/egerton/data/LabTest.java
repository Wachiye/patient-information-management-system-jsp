package com.egerton.data;

import java.util.Date;

public class LabTest {
    private long id;
    private TestType testType;
    private Patient patient;
    private User requestedBy;
    private User testedBy;
    private String testResult;
    private String testRemarks;
    private Date requestOn;
    private Date testedOn;

    public LabTest(){}

    public LabTest(long id, TestType testType, Patient patient, User requestedBy, User testedBy, String testResult, String testRemarks, Date requestOn, Date testedOn) {
        this.id = id;
        this.testType = testType;
        this.patient = patient;
        this.requestedBy = requestedBy;
        this.testedBy = testedBy;
        this.testResult = testResult;
        this.testRemarks = testRemarks;
        this.requestOn = requestOn;
        this.testedOn = testedOn;
    }

    //getters and setters

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public TestType getTestType() {
        return testType;
    }

    public void setTestType(TestType testType) {
        this.testType = testType;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public User getRequestedBy() {
        return requestedBy;
    }

    public void setRequestedBy(User requestedBy) {
        this.requestedBy = requestedBy;
    }

    public User getTestedBy() {
        return testedBy;
    }

    public void setTestedBy(User testedBy) {
        this.testedBy = testedBy;
    }

    public String getTestResult() {
        return testResult;
    }

    public void setTestResult(String testResult) {
        this.testResult = testResult;
    }

    public String getTestRemarks() {
        return testRemarks;
    }

    public void setTestRemarks(String testRemarks) {
        this.testRemarks = testRemarks;
    }

    public Date getRequestOn() {
        return requestOn;
    }

    public void setRequestOn(Date requestOn) {
        this.requestOn = requestOn;
    }

    public Date getTestedOn() {
        return testedOn;
    }

    public void setTestedOn(Date testedOn) {
        this.testedOn = testedOn;
    }

    //to string
    @Override
    public String toString() {
        return "{" +
                "id=" + id +
                ", testType=" + testType +
                ", patient=" + patient +
                ", requestedBy=" + requestedBy +
                ", testedBy=" + testedBy +
                ", testResult='" + testResult + '\'' +
                ", testRemarks='" + testRemarks + '\'' +
                ", requestOn=" + requestOn +
                ", testedOn=" + testedOn +
                '}';
    }
}
