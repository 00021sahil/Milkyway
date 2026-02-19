package com.milkyway.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.milkyway.service.EmailService;

@Controller
public class ContactController {

    @Autowired
    private EmailService emailService;

    // -------- FEEDBACK --------

    @GetMapping("/feedback")
    public String showFeedbackPage() {
        return "feedback";
    }

    @PostMapping("/feedback/submit")
    public String submitFeedback(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String feedback) {

        emailService.sendFeedbackMail(name, email, feedback);

        return "redirect:/feedback";
    }

    // -------- SPECIAL REQUIREMENT --------

    @GetMapping("/special")
    public String showSpecialPage() {
        return "special";
    }

    @PostMapping("/special/submit")
    public String submitSpecialRequirement(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String message,
            @RequestParam("photo") MultipartFile photo) {

        emailService.sendSpecialRequirementMail(name, email, message, photo);

        return "redirect:/special";
    }
}
