package com.dao.bean;

public class Teacher {
    private int teacher_id;
    private String teacher_name, teacher_password, teacher_gender, teacher_photo, teacher_title, teacher_info, teacher_email;

    // teacher_id
    public int getTeacherId()
    {
        return teacher_id;
    }
    public void setTeacherId(int teacher_id)
    {
        this.teacher_id = teacher_id;
    }

    // teacher_name
    public String getTeacherName()
    {
        return teacher_name;
    }
    public void setTeacherName(String teacher_name)
    {
        this.teacher_name = teacher_name;
    }

    // teacher_password
    public String getTeacherPassword()
    {
        return teacher_password;
    }
    public void setTeacherPassword(String teacher_password)
    {
        this.teacher_password = teacher_password;
    }

    // teacher_gender
    public String getTeacherGender()
    {
        return teacher_gender;
    }
    public void setTeacherGender(String teacher_gender)
    {
        this.teacher_gender = teacher_gender;
    }

    // teacher_photo
    public String getTeacherPhoto()
    {
        return teacher_photo;
    }
    public void setTeacherPhoto(String teacher_photo)
    {
        this.teacher_photo = teacher_photo;
    }

    // teacher_title
    public String getTeacherTitle()
    {
        return teacher_title;
    }
    public void setTeacherTitle(String teacher_title)
    {
        this.teacher_title = teacher_title;
    }

    // teacher_info
    public String getTeacherInfo()
    {
        return teacher_info;
    }
    public void setTeacherInfo(String teacher_info)
    {
        this.teacher_info = teacher_info;
    }

    //teacher_email
    public String getTeacherEmail()
    {
        return teacher_email;
    }
    public void setTeacherEmail(String teacher_email)
    {
        this.teacher_email = teacher_email;
    }
}