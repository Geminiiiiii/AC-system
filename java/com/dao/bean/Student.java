package com.dao.bean;

public class Student {
    private String student_id, student_name, student_password, studnet_gender, student_nationality, registration_date, student_major, student_email, student_phone, course;

    // student_id
    public String getStudentId()
    {
        return student_id;
    }
    public void setStudentId(String student_id)
    {
        this.student_id = student_id;
    }

    // student_name
    public String getStudentName()
    {
        return student_name;
    }
    public void setStudentName(String student_name)
    {
        this.student_name = student_name;
    }

    // student_password
    public String getStudentPassword()
    {
        return student_password;
    }
    public void setStudentPassword(String student_password)
    {
        this.student_password = student_password;
    }

    // studnet_gender
    public String getStudentGender()
    {
        return studnet_gender;
    }
    public void setStudentGender(String studnet_gender)
    {
        this.studnet_gender = studnet_gender;
    }

    // student_nationality
    public String getStudentNationality()
    {
        return student_nationality;
    }
    public void setStudentNationality(String student_nationality)
    {
        this.student_nationality = student_nationality;
    }

    // registration_date
    public String getRegistrationDate()
    {
        return registration_date;
    }
    public void setRegistrationDate(String registration_date)
    {
        this.registration_date = registration_date;
    }

    // student_major
    public String getStudentMajor()
    {
        return student_major;
    }
    public void setStudentMajor(String student_major)
    {
        this.student_major = student_major;
    }

    // student_email
    public String getStudentEmail()
    {
        return student_email;
    }
    public void setStudentEmail(String student_email)
    {
        this.student_email = student_email;
    }

    // student_phone
    public String getStudentPhone()
    {
        return student_phone;
    }
    public void setStudentPhone(String student_phone)
    {
        this.student_phone = student_phone;
    }

    // course
    public String getCourse()
    {
        return course;
    }
    public void setCourse(String course)
    {
        this.course = course;
    }
}