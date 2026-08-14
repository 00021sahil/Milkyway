package com.milkyway.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.milkyway.dao.CartDao;
import com.milkyway.dao.ProductDao;
import com.milkyway.model.Cart;
import com.milkyway.model.Product;

@Service
public class CartService {

    @Autowired
    private CartDao cartDao;

    @Autowired
    private ProductDao productDao;

    public void addToCart(int productId) {

        Product product = productDao.findById(productId).orElse(null);

        if (product == null) {
            return;
        }

        Cart cart = new Cart();

        cart.setProduct(product);

        cart.setQuantity(1);

        cartDao.save(cart);
    }

    public List<Cart> getAllCartItems() {

        return cartDao.findAll();
    }

    public void removeItem(int cartId) {

        cartDao.deleteById(cartId);
    }

    public double getGrandTotal() {

        double total = 0;

        List<Cart> cartList = cartDao.findAll();

        for (Cart cart : cartList) {

            total += cart.getProduct().getPrice() * cart.getQuantity();
        }

        return total;
    }

}