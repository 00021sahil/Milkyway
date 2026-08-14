package com.milkyway.controller;

import com.milkyway.service.EmailService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ContactController {

	@Autowired
	private EmailService emailService;

	@GetMapping("/feedback")
	public String feedback() {
		return "feedback";
	}
	
	@GetMapping("/special")
	public String special() {
		return "special";
	}

	@PostMapping("/sendOtp")
	@ResponseBody
	public String sendOtp(@RequestParam String name, @RequestParam String email, @RequestParam String message,
			HttpSession session) {

		String otp = emailService.generateOTP();

		session.setAttribute("otp", otp);
		session.setAttribute("otpTime", System.currentTimeMillis());
		session.setAttribute("name", name);
		session.setAttribute("email", email);
		session.setAttribute("message", message);

		emailService.sendOtpMail(email, otp);

		return "OTP_SENT";
	}

	@PostMapping("/verifyOtp")
	@ResponseBody
	public String verifyOtp(@RequestParam String enteredOtp, HttpSession session) {

		String sessionOtp = (String) session.getAttribute("otp");
		Long otpTime = (Long) session.getAttribute("otpTime");

		if (sessionOtp == null || otpTime == null)
			return "INVALID";

		long currentTime = System.currentTimeMillis();

		if (currentTime - otpTime > 2 * 60 * 1000)
			return "EXPIRED";

		if (sessionOtp.equals(enteredOtp)) {
			session.setAttribute("verified", true);
			return "VALID";
		}

		return "INVALID";
	}

	@PostMapping("/finalSubmit")
	public String finalSubmit(@RequestParam(value = "photo", required = false) MultipartFile photo, HttpSession session)
			throws Exception {

		Boolean verified = (Boolean) session.getAttribute("verified");

		if (verified == null || !verified)
			return "feedback";

		String name = (String) session.getAttribute("name");
		String email = (String) session.getAttribute("email");
		String message = (String) session.getAttribute("message");

		byte[] photoBytes = null;
		String photoName = null;

		if (photo != null && !photo.isEmpty()) {
			photoBytes = photo.getBytes();
			photoName = photo.getOriginalFilename();
		}

		emailService.sendFinalMail(name, email, message, photoBytes, photoName);

		session.invalidate();

		return "feedbackSubmitted";
	}

}
