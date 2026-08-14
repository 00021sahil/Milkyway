
package com.milkyway.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.internet.MimeMessage;

import java.util.Random;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    public String generateOTP() {
        Random random = new Random();
        int otp = 100000 + random.nextInt(900000);
        return String.valueOf(otp);
    }

    public void sendOtpMail(String email, String otp) {
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper =
                    new MimeMessageHelper(message, true);

            helper.setTo(email);
            helper.setSubject("OTP Verification");

            helper.setText(
                    "Your OTP is: " + otp +
                    "\nValid for 2 minutes."
            );

            mailSender.send(message);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void sendFinalMail(String name, String email,
                              String message,
                              byte[] photoBytes,
                              String photoName) {

        try {

            // Owner mail
            MimeMessage ownerMessage = mailSender.createMimeMessage();
            MimeMessageHelper ownerHelper =
                    new MimeMessageHelper(ownerMessage, true);

            ownerHelper.setTo("sahilshinde989@gmail.com");
            ownerHelper.setSubject("New Customer Submission");

            ownerHelper.setText(
                    "Name: " + name +
                    "\nEmail: " + email +
                    "\nMessage: " + message
            );

            if (photoBytes != null) {
                ownerHelper.addAttachment(
                        photoName,
                        new ByteArrayResource(photoBytes)
                );
            }

            mailSender.send(ownerMessage);

            // Customer confirmation
            MimeMessage customerMessage = mailSender.createMimeMessage();
            MimeMessageHelper customerHelper =
                    new MimeMessageHelper(customerMessage, true);

            customerHelper.setTo(email);
            customerHelper.setSubject("Submission Successful");

            customerHelper.setText(
                    "Dear " + name + ",\n\n" +
                    "Your submission has been received successfully.\n" +
                    "Our team will contact you shortly.\n\n" +
                    "Thank you for trusting us."
            );

            mailSender.send(customerMessage);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
