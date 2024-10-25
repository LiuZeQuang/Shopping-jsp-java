package com.example.websx.bean;

public class Produc {
    static String name;
    static String img;
    static String price;

    public Produc() {
    }

    public static String getName() {
        return name;
    }

    public static void setName(String name) {
        Produc.name = name;
    }

    public static String getImg() {
        return img;
    }

    public static void setImg(String img) {
        Produc.img = img;
    }

    public static String getPrice() {
        return price;
    }

    public static void setPrice(String price) {
        Produc.price = price;
    }

}
