package com.milkyway.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.mail.internet.MimeMessage;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    // -------- FEEDBACK MAIL --------
    public void sendFeedbackMail(String name, String email, String feedback){

        try {

            MimeMessage mimeMessage = mailSender.createMimeMessage();
            MimeMessageHelper helper =
                    new MimeMessageHelper(mimeMessage, true);

            helper.setTo("sahil@gmail.com");
            helper.setSubject("New Customer Feedback");

            helper.setText(
                    "Name: " + name +
                    "\nEmail: " + email +
                    "\nFeedback: " + feedback
            );

            mailSender.send(mimeMessage);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // -------- SPECIAL REQUIREMENT MAIL --------
    public void sendSpecialRequirementMail(String name, String email,
                                           String message,
                                           MultipartFile photo){

        try {

            MimeMessage mimeMessage = mailSender.createMimeMessage();
            MimeMessageHelper helper =
                    new MimeMessageHelper(mimeMessage, true);

            helper.setTo("sahil@gmail.com");
            helper.setSubject("Special Cake Requirement Request");

            helper.setText(
                    "Name: " + name +
                    "\nEmail: " + email +
                    "\nRequirement: " + message
            );

            if(photo != null && !photo.isEmpty()){
                helper.addAttachment(photo.getOriginalFilename(), photo);
            }

            mailSender.send(mimeMessage);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
