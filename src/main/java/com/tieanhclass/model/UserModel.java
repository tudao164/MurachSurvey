package com.tieanhclass.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class UserModel {

    private String firstName;
    private String lastName;
    private String email;
    private LocalDate dob;
    private String referral;
    private List<String> receiveOffers = new ArrayList<>();
    private String contactMethod;

    // Getter and Setter for firstName
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    // Getter and Setter for lastName
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    // Getter and Setter for email
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Getter and Setter for dob
    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    // Getter and Setter for referral
    public String getReferral() {
        return referral;
    }

    public void setReferral(String referral) {
        this.referral = referral;
    }

    // Getter and Setter for receiveOffers
    public List<String> getReceiveOffers() {
        return receiveOffers;
    }

    public void setReceiveOffers(List<String> receiveOffers) {
        this.receiveOffers = receiveOffers;
    }

    // Getter and Setter for contactMethod
    public String getContactMethod() {
        return contactMethod;
    }

    public void setContactMethod(String contactMethod) {
        this.contactMethod = contactMethod;
    }

    @Override
    public String toString() {
        return "UserModel{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", dob=" + dob +
                ", referral='" + referral + '\'' +
                ", receiveOffers=" + receiveOffers +
                ", contactMethod='" + contactMethod + '\'' +
                '}';
    }
}
