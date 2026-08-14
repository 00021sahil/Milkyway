package com.milkyway.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.milkyway.dao.AdminDao;
import com.milkyway.model.Admin;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private AdminDao adminDao;

    @Autowired
    private JavaMailSender mailSender;

    @GetMapping("/admin-login")
    public String adminLogin() {
        return "adminLogin";
    }

    @PostMapping("/send-otp")
    public String sendOtp(@RequestParam("password") String password,
                          HttpSession session,
                          Model model) {

        Admin admin = adminDao.findById(1).orElse(null);

        if (admin == null) {
            model.addAttribute("msg", "Admin not found.");
            return "adminLogin";
        }

        if (!admin.getPassword().equals(password)) {
            model.addAttribute("msg", "Invalid Password.");
            return "adminLogin";
        }

        Random random = new Random();
        int otp = 100000 + random.nextInt(900000);

        // Store OTP
        session.setAttribute("otp", String.valueOf(otp));

        // Send Email
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(admin.getEmail());
        message.setSubject("Crème Pop Admin OTP");
        message.setText("Your OTP is : " + otp);

        mailSender.send(message);

        // Mask Email
        String maskedEmail = maskEmail(admin.getEmail());

        // Store masked email in session
        session.setAttribute("maskedEmail", maskedEmail);

        model.addAttribute("email", maskedEmail);

        return "verifyOtp";
    }

    @PostMapping("/verify-otp")
    public String verifyOtp(@RequestParam("otp") String userOtp,
                            HttpSession session,
                            Model model) {

        String otp = (String) session.getAttribute("otp");

        if (otp != null && otp.equals(userOtp)) {

            session.setAttribute("isAdmin", true);

            // Remove OTP after successful login
            session.removeAttribute("otp");

            return "redirect:/admin-dashboard";
        }

        model.addAttribute("msg", "Invalid OTP");

        // Show email again
        model.addAttribute("email",
                session.getAttribute("maskedEmail"));

        return "verifyOtp";
    }

    @GetMapping("/admin-dashboard")
    public String dashboard(HttpSession session) {

        if (session.getAttribute("isAdmin") == null) {
            return "redirect:/admin-login";
        }

        return "adminDashboard";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/admin-login";
    }

    private String maskEmail(String email) {

        String[] parts = email.split("@");

        String name = parts[0];

        if (name.length() <= 2) {
            return "***@" + parts[1];
        }

        return name.substring(0, 2)
                + "******"
                + name.substring(name.length() - 2)
                + "@"
                + parts[1];
    }
}