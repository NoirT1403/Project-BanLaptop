/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tanpr
 */
public class Account {
    private int uid;
    private String user;
    private String pass;
    private int isAdmin;

    public Account() {
    }

    public Account(int uid, String user, String pass, int isAdmin) {
        this.uid = uid;
        this.user = user;
        this.pass = pass;
        this.isAdmin = isAdmin;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "uid=" + uid + ", user=" + user + ", pass=" + pass + ", isAdmin=" + isAdmin + '}';
    }
    
    
}
