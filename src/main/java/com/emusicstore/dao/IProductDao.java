package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.List;

/**
 * Created by gokhangunay on 01/11/2016.
 */
public interface IProductDao {

    void addProduct(Product product);

    Product getProductById(String productId);

    List<Product> getAllProduct();

    void deleteProductById(String productId);

    void editProduct(Product product);

}
