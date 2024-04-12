/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tanpr
 */
public class Order {
    private int cartID;
    private int uID;
    private String date;
    private double totalmoney;

    public Order() {
    }

    public Order(int cartID, int uID, String date, double totalmoney) {
        this.cartID = cartID;
        this.uID = uID;
        this.date = date;
        this.totalmoney = totalmoney;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public int getuID() {
        return uID;
    }

    public void setuID(int uID) {
        this.uID = uID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }

    @Override
    public String toString() {
        return "Order{" + "cartID=" + cartID + ", uID=" + uID + ", date=" + date + ", totalmoney=" + totalmoney + '}';
    }
    
    
}
