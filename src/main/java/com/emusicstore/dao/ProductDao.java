package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by gokhangunay on 23/10/2016.
 */
public class ProductDao {

    private List<Product> productList;

    public List<Product> getProductList(){

        Product product = new Product();

        product.setProductId("123456");
        product.setProductName("Urun Adi");
        product.setProductCategory("Urun Kategorisi");
        product.setProductCondition("Urun Sarti");
        product.setProductDescription("Urun Aciklamasi");
        product.setProductManufacturer("Urun Ureticisi");
        product.setProductPrice(100.2);
        product.setProductStatus("Urun Durumu");
        product.setUnitInStock(100);

        productList = new ArrayList<Product>();
        productList.add(product);

        return productList;

    }

    public List<Product> getProductListDeneme(){

        Product product = new Product();

        product.setProductName("Urun Adi");
        product.setProductCategory("Urun Kategorisi");
        product.setProductCondition("Urun Sarti");
        product.setProductDescription("Urun Aciklamasi");
        product.setProductManufacturer("Urun Ureticisi");
        product.setProductPrice(100.02);
        product.setProductStatus("Urun Durumu");
        product.setUnitInStock(101);

        Product product1 = new Product();

        product1.setProductName("Urun Adi");
        product1.setProductCategory("Urun Kategorisi");
        product1.setProductCondition("Urun Sarti");
        product1.setProductDescription("Urun Aciklamasi");
        product1.setProductManufacturer("Urun Ureticisi");
        product1.setProductPrice(100.01);
        product1.setProductStatus("Urun Durumu");
        product1.setUnitInStock(101);

        productList = new ArrayList<Product>();
        productList.add(product);
        productList.add(product1);

        return productList;

    }

    public Product getProductById(String productId) throws IOException {
        for(Product product : getProductList()){
            if(product.getProductId().equals(productId)) {
                return product;
            }
        }
       throw  new IOException("Ürün Bulunamadı.");
    }




}
