package com.emusicstore.model;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;

/**
 * Created by gokhangunay on 23/10/2016.
 */

@Entity
@Table(name = "PRODUCT")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String productId;

    private String productName;

    private String productCategory;

    private String productDescription;

    private double productPrice;

    private String productCondition;

    private String productStatus;

    private int unitInStock;

    private String productManufacturer;

    @Transient
    private MultipartFile productImage;

    //Getter and Setter

    @Column(name = "PRODUCTID")
    public String getProductId() { return productId; }

    public void setProductId(String productId) { this.productId = productId; }

    @Column(name = "PRODUCTNAME")
    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    @Column(name = "PRODUCTCATEGORY")
    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    @Column(name = "PRODUCTDESCRIPTION")
    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    @Column(name = "PRODUCTPRICE")
    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    @Column(name = "PRODUCTCONDITION")
    public String getProductCondition() {
        return productCondition;
    }

    public void setProductCondition(String productCondition) {
        this.productCondition = productCondition;
    }

    @Column(name = "PRODUCTSTATUS")
    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    @Column(name = "UNITINSTOCK")
    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) { this.unitInStock = unitInStock; }

    @Column(name = "PRODUCTMANUFACTURER")
    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }
}
