package com.fastcampus.ch4.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import com.fastcampus.ch4.dao.UserDao;
import com.fastcampus.ch4.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

@Controller // ctrl+shift+o 자동 import
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    UserDao userDao;

    @InitBinder
    public void toDate(WebDataBinder binder) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(df, false));
        //binder.setValidator(new CustomDateEditor()); // UserValidator를 WebDataBinder의 로컬 validator로 등록
        //	List<Validator> validatorList = binder.getValidators();
        //	System.out.println("validatorList="+validatorList);
    }

    @GetMapping("/add")
    public String register() {
        return "registerForm"; // WEB-INF/views/registerForm.jsp
    }

    @PostMapping("/save")
    public String save(@Valid User user, BindingResult result, Model m) {
        System.out.println("result="+result); // BindingResult 에러확인
        System.out.println("user="+user);

        // DB에 신규회원 정보를 저장
        try {
            if (userDao.insertUser(user) != 1)
                throw new Exception("Sign in failed.");

            return "redirect:/";
        } catch (Exception e) {
            e.printStackTrace();
            return "registerForm";
        }
    }

    private boolean isValid(User user) {
        return true;
    }
}
