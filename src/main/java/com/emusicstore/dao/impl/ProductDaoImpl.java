package com.emusicstore.dao.impl;

import com.emusicstore.dao.IProductDao;
import com.emusicstore.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gokhangunay on 01/11/2016.
 */

@Repository
@Transactional
public class ProductDaoImpl implements IProductDao{


    @Autowired
    private SessionFactory sessionFactory;


    public void addProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        if(product!=null){
            session.saveOrUpdate(product);
            session.flush();
        }else
            System.out.println("Product is null");

    }

    public Product getProductById(String productId) {
        if(!StringUtils.isEmpty(productId)){
            Session session = sessionFactory.getCurrentSession();
            Product product = (Product) session.get(Product.class, productId);
            if(product!=null){
                session.flush();
                return product;
            }else
                System.out.println("Product is not found");
        }
            return null;
    }

    public List<Product> getAllProduct() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> products = query.list();

        if(products!=null) {
            session.flush();
            return products;
        }
        return null;
    }

    public void deleteProductById(String productId) {
        Session session = sessionFactory.getCurrentSession();
        if(!StringUtils.isEmpty(productId)){
            session.delete(getProductById(productId));
//            session.delete(id, Product.class); bunu dene..
            session.flush();
        }else
            System.out.println("Product id is null");
    }


    public void editProduct(Product product){
        Session session = sessionFactory.getCurrentSession();
        if(product!=null){
            session.saveOrUpdate(product);
            session.flush();
        }else
            System.out.println("Product is null");

    }


}
