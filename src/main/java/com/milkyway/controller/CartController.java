package com.milkyway.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.milkyway.model.Cart;
import com.milkyway.service.CartService;

@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    @GetMapping("/add-to-cart/{id}")
    public String addToCart(@PathVariable("id") int productId) {

        cartService.addToCart(productId);

        return "redirect:/cart";
    }

    @GetMapping("/cart")
    public String cart(Model model) {

        List<Cart> cartList = cartService.getAllCartItems();

        model.addAttribute("cartList", cartList);

        double total = cartService.getGrandTotal();

        model.addAttribute("grandTotal", total);

        model.addAttribute("advanceAmount", total * 0.20);

        model.addAttribute("remainingAmount", total * 0.80);

        return "cart";
    }

    @GetMapping("/remove-cart/{id}")
    public String removeCart(@PathVariable("id") int cartId) {

        cartService.removeItem(cartId);

        return "redirect:/cart";
    }

}