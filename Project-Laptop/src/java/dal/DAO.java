/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Cart;
import model.Category;
import model.Item;
import model.Product;

/**
 *
 * @author tanpr
 */
public class DAO extends DBContext {
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        for (Product p : list) {
            System.out.println(p);
        }
    }
    public List<Product> getAllProduct() {
        List<Product> products = new ArrayList<>();
        String sql = "select * from Products";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String image = rs.getString(3);
                double price = rs.getDouble(4);
                String description = rs.getString(5);
                int quantity = rs.getInt(7);
                Product product = new Product(id, name, image, price, description, quantity);
                products.add(product);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public List<Category> getAllCategory() {
        List<Category> categories = new ArrayList<>();
        String sql = "select * from Categories";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int cid = rs.getInt(1);
                String cName = rs.getString(2);
                Category category = new Category(cid, cName);
                categories.add(category);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

    public Product getLast() {
        String sql = "select top 1 * from Products order by id desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(7));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> getProductByCID(String cid) {
        List<Product> products = new ArrayList<>();
        String sql = "select * from Products where cateID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String image = rs.getString(3);
                double price = rs.getDouble(4);
                String description = rs.getString(5);
                int quantity = rs.getInt(7);
                Product product = new Product(id, name, image, price, description, quantity);
                products.add(product);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public Product getProductByID(String id) {
        String sql = "select * from Products where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(7));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> products = new ArrayList<>();
        String sql = "select * from Products where [name] like ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String image = rs.getString(3);
                double price = rs.getDouble(4);
                String description = rs.getString(5);
                int quantity = rs.getInt(7);
                Product product = new Product(id, name, image, price, description, quantity);
                products.add(product);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public Account login(String user, String pass) {
        String sql = "select * from Account where [user] = ? and pass = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Account checkExistUser(String user) {
        String sql = "select * from Account where [user] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void signup(String user, String pass) {
        String sql = "insert into Account values(?,?,0)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(String pid) {
        String sql = "delete from Products where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pid);
            st.executeUpdate();
            connection.commit();
        } catch (SQLException e) {

        }
    }
    
    public void deleteOrderLineByPId(String id) {
        String query = "delete from OrderLine\n"
                + "where pid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String name, String image, Double price, String description, int category,  int quantity) {
        String sql = "insert [dbo].[Products] ([name], [image], [price], [description], [cateID], [quantity]) values (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setDouble(3, price);
            st.setString(4, description);
            st.setInt(5, category);
            st.setInt(7, quantity);
            st.executeUpdate();
            connection.commit();
        } catch (SQLException e) {

        }
    }

    public void editProduct(String name, String image, Double price, String description, int category, int quantity, int pid) {
        String sql = "update Products set [name] = ?, [image] = ?, price = ?, [description] = ?, cateID = ?, [quantity] = ? where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setDouble(3, price);
            st.setString(4, description);
            st.setInt(5, category);
            st.setInt(6, quantity);
            st.setInt(7, pid);
            st.executeUpdate();
            connection.commit();
        } catch (SQLException e) {

        }
    }

    public void addOrder(Account c, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            String sql = "insert into [Order] values(?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getUid());
            st.setString(2, date);
            st.setDouble(3, cart.getTotalMoney());
            st.executeUpdate();
            // lay id cua order vua add
            String sql1 = "select top 1 cartID from [Order] order by cartID desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add bang orderDetail
            if (rs.next()) {
                int oid = rs.getInt("cartID");
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into [Order_Details] values(?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3, i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.executeUpdate();
                }

            }
            //cap nhat lai so luong san pham
            String sql3 = "update Products set Quantity=Quantity-? where id=?";
            PreparedStatement st3 = connection.prepareStatement(sql3);
            for (Item i : cart.getItems()) {
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getId());
                st3.executeUpdate();
            }
        } catch (Exception e) {

        }
    }
}
