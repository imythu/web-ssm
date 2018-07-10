package com.myth.pojo;

public class Course {
    private Integer nCourseId;

    private String vcCourseName;

    private Integer nType;

    private Float fCredit;

    private Integer nGrade;

    private Integer nMajor;

    private String vcDetail;

    public Integer getnCourseId() {
        return nCourseId;
    }

    public void setnCourseId(Integer nCourseId) {
        this.nCourseId = nCourseId;
    }

    public String getVcCourseName() {
        return vcCourseName;
    }

    public void setVcCourseName(String vcCourseName) {
        this.vcCourseName = vcCourseName == null ? null : vcCourseName.trim();
    }

    public Integer getnType() {
        return nType;
    }

    public void setnType(Integer nType) {
        this.nType = nType;
    }

    public Float getfCredit() {
        return fCredit;
    }

    public void setfCredit(Float fCredit) {
        this.fCredit = fCredit;
    }

    public Integer getnGrade() {
        return nGrade;
    }

    public void setnGrade(Integer nGrade) {
        this.nGrade = nGrade;
    }

    public Integer getnMajor() {
        return nMajor;
    }

    public void setnMajor(Integer nMajor) {
        this.nMajor = nMajor;
    }

    public String getVcDetail() {
        return vcDetail;
    }

    public void setVcDetail(String vcDetail) {
        this.vcDetail = vcDetail == null ? null : vcDetail.trim();
    }
}