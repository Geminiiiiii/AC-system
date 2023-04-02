package com.dao.bean;

public class Exam {
    private int exam_id;
    private String exam_name, subject, exam_info, exam_time, exam_venue, exam_type;

    // exam_id
    public int getExamId()
    {
        return exam_id;
    }
    public void setExamId(int exam_id)
    {
        this.exam_id = exam_id;
    }

    // exam_name
    public String getExamName()
    {
        return exam_name;
    }
    public void setExamName(String exam_name)
    {
        this.exam_name = exam_name;
    }

    // exam_name
    public String getSubject()
    {
        return subject;
    }
    public void setSubject(String subject)
    {
        this.subject = subject;
    }

    // exam_info
    public String getExamInfo()
    {
        return exam_info;
    }
    public void setExamInfo(String exam_info)
    {
        this.exam_info = exam_info;
    }

    // exam_time
    public String getExamTime()
    {
        return exam_time;
    }
    public void setExamTime(String exam_time)
    {
        this.exam_time = exam_time;
    }

    // exam_venue
    public String getExamVenue()
    {
        return exam_venue;
    }
    public void setExamVenue(String exam_venue)
    {
        this.exam_venue = exam_venue;
    }

    // exam_type
    public String getExamType()
    {
        return exam_type;
    }
    public void setExamType(String exam_type)
    {
        this.exam_type = exam_type;
    }
}