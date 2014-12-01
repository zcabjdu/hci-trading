package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import models.Product;
import util.DbUtil;

public class ProductDao {
    private Connection connection;

    public ProductDao() {
        connection = DbUtil.getConnection();
    }

    public void addProduct(Product product) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into products(name) values (?)");
            // Parameters start with 1
            preparedStatement.setString(1, product.getName());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(int productId) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from products where productid=?");
            // Parameters start with 1
            preparedStatement.setInt(1, productId);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateProduct(Product product) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("update products set name=?" + "where productid=?");
            // Parameters start with 1
            preparedStatement.setString(1, product.getName());
            preparedStatement.setInt(2, product.getProductid());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<Product>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from products");
            while (rs.next()) {
                Product product = new Product();
                product.setProductid(rs.getInt("productid"));
                product.setName(rs.getString("name"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }
    
    public List<Product> getSearch(String searchterm) {
    	List<Product> products = new ArrayList<Product>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from products where name like '%" + searchterm + "%' ");
            while (rs.next()) {
                Product product = new Product();
                product.setProductid(rs.getInt("productid"));
                product.setName(rs.getString("name"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    public Product getProductById(int userId) {
        Product product = new Product();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from products where productid=?");
            preparedStatement.setInt(1, userId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                product.setProductid(rs.getInt("productid"));
                product.setName(rs.getString("name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }
}

