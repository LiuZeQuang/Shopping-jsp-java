package com.example.websx.bean;

public class User {
    private static String username;
    private static String password;
    private static String gender;
    private static String mailbox;
    private static String tel;
    private static String address;

    public User() {
    }

    public static String getUsername() {
        return username;
    }

    public static void setUsername(String username) {
        User.username = username;
    }

    public static String getPassword() {
        return password;
    }

    public static void setPassword(String password) {
        User.password = password;
    }

    public static String getGender() {
        return gender;
    }

    public static void setGender(String gender) {
        User.gender = gender;
    }

    public static String getMailbox() {
        return mailbox;
    }

    public static void setMailbox(String mailbox) {
        User.mailbox = mailbox;
    }

    public static String getTel() {
        return tel;
    }

    public static void setTel(String tel) {
        User.tel = tel;
    }

    public static String getAddress() {
        return address;
    }

    public static void setAddress(String address) {
        User.address = address;
    }
}
