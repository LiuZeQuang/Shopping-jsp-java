package com.example.websx.bean;

public class Comment {
    String user;
    String commentName;

    public Comment() {
    }

    public Comment(String user, String commentName) {
        this.user = user;
        this.commentName = commentName;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getCommentName() {
        return commentName;
    }

    public void setCommentName(String commentName) {
        this.commentName = commentName;
    }
}
