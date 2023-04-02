package com.dao.bean;

public class Course {
    private int course_credit;
    private String course_id, course_name, course_info, course_time, course_venue, teacher;

    // course_credit
    public int getCourseCredit()
    {
        return course_credit;
    }
    public void setCourseCredit(int course_credit)
    {
        this.course_credit = course_credit;
    }

    // course_id
    public String getCourseId()
    {
        return course_id;
    }
    public void setCourseId(String course_id)
    {
        this.course_id = course_id;
    }

    // course_name
    public String getCourseName()
    {
        return course_name;
    }
    public void setCourseName(String course_name)
    {
        this.course_name = course_name;
    }

    // course_info
    public String getCourseInfo()
    {
        return course_info;
    }
    public void setCourseInfo(String course_info)
    {
        this.course_info = course_info;
    }

    // course_time
    public String getCourseTime()
    {
        return course_time;
    }
    public void setCourseTime(String course_time)
    {
        this.course_time = course_time;
    }

    // course_venue
    public String getCourseVenue()
    {
        return course_venue;
    }
    public void setCourseVenue(String course_venue)
    {
        this.course_venue = course_venue;
    }

    // teacher
    public String getTeacher()
    {
        return teacher;
    }
    public void setTeacher(String teacher)
    {
        this.teacher = teacher;
    }
}