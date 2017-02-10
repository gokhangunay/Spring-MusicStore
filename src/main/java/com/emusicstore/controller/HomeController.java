package com.emusicstore.controller;

import com.emusicstore.dao.IProductDao;
import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by gokhangunay on 19/10/2016.
 */

@Controller
public class HomeController {

    private Path path;

    @Autowired
    private IProductDao productDao;

    private ProductDao productDaoDeneme = new ProductDao();

    @RequestMapping("/")
    public String home(){

        return "home";

    }

    @RequestMapping("/productListDeneme")
    public String getProductsDeneme(Model model){

        List<Product> products  =productDaoDeneme.getProductListDeneme();
        model.addAttribute("products", products);

        return "productListDeneme";

    }

    @RequestMapping("/productList")
    public String getProducts(Model model){

        List<Product> products =productDao.getAllProduct();
        model.addAttribute("products", products);

        return "productList";

    }

    @RequestMapping("/productList/viewProductDetail/{productId}") // Burada
    public String getViewProductDetail(@PathVariable String productId, Model model) throws IOException{ // buradaki productId degeri yukaridaki pathin icerisindeki deger.

        Product product = productDao.getProductById(productId);
        model.addAttribute(product);

        return "viewProductDetail";
    }

    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/admin/productInventory")
    public String productInventoryPage(Model model){
        List<Product> products = productDao.getAllProduct();
        model.addAttribute("products", products);

        return "productInventory";
    }

    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model) {
        Product product = new Product();
        product.setProductCategory("instrument");
        product.setProductCondition("new");
        product.setProductStatus("active");

        model.addAttribute("product", product);

        return "addProduct";
    }

    @RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
    public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request){ // requesti file upload icin kullanacagiz.

        if(result.hasErrors()){
            return "addProduct";
        }

        productDao.addProduct(product);

        // for image upload
        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "//WEB-INF//resources//images//" + product.getProductId() + ".png");

        if(productImage!=null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            }catch (Exception e){
                e.printStackTrace();
                throw new RuntimeException("Product Image saving failed" + e);
            }
        }

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/admin/productInventory/deleteProduct/{productId}")
    public String deleteProductById(@PathVariable String productId, Model model, HttpServletRequest request) throws IOException{ // buradaki productId degeri yukaridaki pathin icerisindeki deger.

        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "//WEB-INF//resources//images//" + productId + ".png");

        if(Files.exists(path)){ // bu path var mi?
            try {
                Files.delete(path);
            }catch (IOException e){
                e.printStackTrace();
            }
        }

        productDao.deleteProductById(productId);

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/admin/productInventory/editProduct/{productId}")
    public String editProduct(@PathVariable String productId, Model model){
        Product product = productDao.getProductById(productId);

        model.addAttribute(product);

        return "editProduct";
    }

    @RequestMapping(value = "/admin/productInventory/editProduct", method = RequestMethod.POST)
    public String editProductById(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model, HttpServletRequest request){

        if(result.hasErrors()){
            return "editProduct";
        }

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "//WEB-INF//resources//images//" + product.getProductId() + ".png");

        if(productImage!=null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            }catch (Exception e){
                throw new RuntimeException("Product image saving failed" + e);
            }
        }

        productDao.editProduct(product);

        return "redirect:/admin/productInventory";
    }


}
