/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tanpr
 */
public class OrderDetail {
    private int cartID;
    private int pID;
    private int quantity;
    private double price;

    public OrderDetail() {
    }

    public OrderDetail(int cartID, int pID, int quantity, double price) {
        this.cartID = cartID;
        this.pID = pID;
        this.quantity = quantity;
        this.price = price;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "CartDetail{" + "cartID=" + cartID + ", pID=" + pID + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
    
}
