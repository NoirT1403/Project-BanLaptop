/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tanpr
 */
public class Category {
    private int cid;
    private String Cname;

    public Category() {
    }

    public Category(int cid, String Cname) {
        this.cid = cid;
        this.Cname = Cname;
    }

    public int getcid() {
        return cid;
    }

    public void setcId(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return Cname;
    }

    public void setCname(String Cname) {
        this.Cname = Cname;
    }

    @Override
    public String toString() {
        return "Category{" + "cid=" + cid + ", Cname=" + Cname + '}';
    }
    
    
}
