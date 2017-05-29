/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.attendance.service;
import org.atendance.model.LoginModel;
/**
 *
 * @author raben
 */
public class LoginService {
    
    private LoginModel loginModel;
    
    public LoginService()
    {
        loginModel = new LoginModel();
        
        loginModel.setUserName("admin");
        loginModel.setPassword("admin");
    }
    
    public boolean isValidUser(String userName, String password)
    {
        if(userName.equals(loginModel.getUserName()) && password.equals(loginModel.getPassword()))
        {
            return true;
        }
        return false;
    }
    
    public LoginModel getUser()
    {
        return loginModel;
    }
    
}
