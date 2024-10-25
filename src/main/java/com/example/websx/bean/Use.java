package com.example.websx.bean;

public class Use {
    String username;
    String password;
    String gender;
    String mailbox;
    String tel;
    String address;

    public Use() {
    }

    public Use(String username, String password, String gender, String mailbox, String tel, String address) {
        this.username = username;
        this.password = password;
        this.gender = gender;
        this.mailbox = mailbox;
        this.tel = tel;
        this.address = address;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMailbox() {
        return mailbox;
    }

    public void setMailbox(String mailbox) {
        this.mailbox = mailbox;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
