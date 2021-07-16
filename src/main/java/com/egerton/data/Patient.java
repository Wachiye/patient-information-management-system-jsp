package com.egerton.data;

public class Patient {
    private long id;
    private String firstName;
    private String lastName;
    private String gender;
    private int age;
    private float weight;
    private PatientType patientType = PatientType.STUDENT;
    public Patient(){}

    public Patient(long id, String firstName, String lastName, String gender, int age, float weight, PatientType patientType) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.age = age;
        this.weight = weight;
        this.patientType = patientType;
    }

    //getters and setters

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public PatientType getPatientType() {
        return patientType;
    }

    public void setWeight(PatientType patientType) {
        this.patientType = patientType;
    }
    //to string

    @Override
    public String toString() {
        return "{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", weight=" + weight +
                ", patientType='" + patientType + '\'' +
                '}';
    }
}
