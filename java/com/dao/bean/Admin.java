package com.dao.bean;

public class Admin {
    public String admin_name, admin_password;
    
    // admin_name
    public String getAdminName()
    {
        return admin_name;
    }
    public void setAdminName(String admin_name)
    {
        this.admin_name = admin_name;
    }

    // admin_password
    public String getAdminPassword()
    {
        return admin_password;
    }
    public void setPassword(String admin_password)
    {
        this.admin_password = admin_password;
    }
}