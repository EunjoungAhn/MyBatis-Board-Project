package com.fastcampus.ch4.controller;

import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.fastcampus.ch4.dao.UserDao;
import com.fastcampus.ch4.dao.UserDaoImpl;
import com.fastcampus.ch4.domain.BoardDto;
import com.fastcampus.ch4.domain.SearchCondition;
import com.fastcampus.ch4.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @GetMapping("/delete")
    public String deleteForm(){
        return "deleteForm";
    }

    @PostMapping("/delete")
    public String delete(String id, String pwd, HttpSession session) throws Exception {
        System.out.println("delete: id = " + id + "/ pwd:" + pwd);
        // 1. id와 pwd를 확인
        if(pwd != null) {
            userDao.deleteUser(id, pwd);
            session.invalidate();
            return "redirect:/";
        }
        return "redirect:/board/list";
    }

    @GetMapping("/myInfo")
    public String myInfoRead(HttpServletRequest request, Model m) {
        User user = null;
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        try {
            user = userDao.selectUser(id);
            m.addAttribute(user);
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/";
        }

        return "myInfo";
    }

    @PostMapping("/updateUser")
    public String updateUser(User user) throws Exception {
        if(user != null) {
            userDao.updateUser(user);
            System.out.println("user = " + user);
            return "redirect:/";
        }
        return "redirect:/";
    }

}
