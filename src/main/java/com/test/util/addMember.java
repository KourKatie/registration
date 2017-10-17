package com.test.util;

public class addMember {
    private String firstname;
    private String lastname;
    private String addressone;
    private String addresstwo;
    private String email;
    private String phone;
    private String city;
    private String state;
    private String zipcode;
    private String country;
    private String date;

    public addMember(String firstname, String lastname, String addressone, String addresstwo, String email, String phone, String city, String state, String zipcode, String country, String date) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.addressone = addressone;
        this.addresstwo = addresstwo;
        this.email = email;
        this.phone = phone;
        this.city = city;
        this.state = state;
        this.zipcode = zipcode;
        this.country = country;
        this.date = date;
    }

    public String getDate() { return date; }

    public void setDate(String date) { this.date = date; }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAddressone() {
        return addressone;
    }

    public void setAddressone(String addressone) {
        this.addressone = addressone;
    }

    public String getAddresstwo() {
        return addresstwo;
    }

    public void setAddresstwo(String addresstwo) {
        this.addresstwo = addresstwo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
