package com.example.websx.bean;

public class Product {
    String user;
    String name;
    String img;
    String category;
    String price;
    String number;

    public Product() {
    }

    public Product(String user, String name, String img, String category, String price, String number) {
        this.user = user;
        this.name = name;
        this.img = img;
        this.category = category;
        this.price = price;
        this.number = number;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }
}
