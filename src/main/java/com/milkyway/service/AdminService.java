package com.milkyway.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.milkyway.dao.AdminDao;
import com.milkyway.model.Admin;

@Service
public class AdminService {

    @Autowired
    private AdminDao adminDao;

    @Autowired
    private JavaMailSender mailSender;

    public Admin getAdmin() {
        return adminDao.findById(1).orElse(null);
    }

    public boolean checkPassword(String password) {

        Admin admin = getAdmin();

        if(admin == null)
            return false;

        return admin.getPassword().equals(password);
    }

    public String generateOtp() {

        Random random = new Random();

        int otp = 100000 + random.nextInt(900000);

        return String.valueOf(otp);
    }

    public void sendOtp(String email,String otp) {

        SimpleMailMessage message = new SimpleMailMessage();

        message.setTo(email);
        message.setSubject("Crème Pop Admin Login OTP");
        message.setText("Your OTP is : " + otp);

        mailSender.send(message);
    }

    public String getMaskedEmail() {

        Admin admin = getAdmin();

        String email = admin.getEmail();

        String[] parts = email.split("@");

        String name = parts[0];

        return name.substring(0,2)
                + "******"
                + name.substring(name.length()-2)
                + "@"
                + parts[1];
    }

}