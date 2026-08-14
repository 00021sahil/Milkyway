package com.milkyway.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.milkyway.model.Cart;
import com.milkyway.service.CartService;

import jakarta.servlet.http.HttpSession;


@Controller
public class InvoiceController {
	
	@Autowired
	private CartService cartService;
	@GetMapping("/invoice")
	public String invoice() {
	    return "invoice";
	}
	
    @PostMapping("/invoice")
    public String generateInvoice(

            @RequestParam String customerName,
            @RequestParam String customerMobile,
            @RequestParam(required = false) String customerEmail,
            @RequestParam String customerOccasion,
            @RequestParam String deliveryDate,
            @RequestParam String customerAddress,
            @RequestParam String customerCity,
            @RequestParam String customerPincode,
            @RequestParam(required = false) String customerNotes,

            HttpSession session,
            Model model) {

        // Store customer details in session
        session.setAttribute("customerName", customerName);
        session.setAttribute("customerMobile", customerMobile);
        session.setAttribute("customerEmail", customerEmail);
        session.setAttribute("customerOccasion", customerOccasion);
        session.setAttribute("deliveryDate", deliveryDate);
        session.setAttribute("customerAddress", customerAddress);
        session.setAttribute("customerCity", customerCity);
        session.setAttribute("customerPincode", customerPincode);
        session.setAttribute("customerNotes", customerNotes);

        // Get Cart
        List<Cart> cartList = (List<Cart>) session.getAttribute("cartList");

        double grandTotal = 0;

        if (cartList != null) {

            for (Cart item : cartList) {

                grandTotal += item.getProduct().getPrice() * item.getQuantity();

            }

        }

        double advanceAmount = grandTotal * 0.20;
        double remainingAmount = grandTotal - advanceAmount;

        model.addAttribute("cartList", cartList);
        model.addAttribute("grandTotal", grandTotal);
        model.addAttribute("advanceAmount", advanceAmount);
        model.addAttribute("remainingAmount", remainingAmount);

        model.addAttribute("invoiceNo", System.currentTimeMillis());

        model.addAttribute("invoiceDate",
                LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy")));

        return "invoice";
    }

}