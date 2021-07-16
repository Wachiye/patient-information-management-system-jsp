package com.egerton.data;

public class TestType {
    private long id;
    private String testName;
    private String testCode;
    private String testDescription;

    public TestType(){}

    public TestType(long id, String testName, String testCode, String testDescription) {
        this.id = id;
        this.testName = testName;
        this.testCode = testCode;
        this.testDescription = testDescription;
    }

    //getters and setters

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public String getTestCode() {
        return testCode;
    }

    public void setTestCode(String testCode) {
        this.testCode = testCode;
    }

    public String getTestDescription() {
        return testDescription;
    }

    public void setTestDescription(String testDescription) {
        this.testDescription = testDescription;
    }

    //to string

    @Override
    public String toString() {
        return "{" +
                "id=" + id +
                ", testName='" + testName + '\'' +
                ", testCode='" + testCode + '\'' +
                ", testDescription='" + testDescription + '\'' +
                '}';
    }
}
