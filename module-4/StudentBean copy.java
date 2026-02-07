package model;

import java.io.Serializable;

/**
 * StudentBean
 * This JavaBean stores student information
 * and is used by a JSP page for display purposes.
 *
 * @author Alexis Mitchell
 */
public class StudentBean implements Serializable {

    private static final long serialVersionUID = 1L;

    // Fields (minimum of 5)
    private String studentId;
    private String name;
    private String major;
    private int credits;
    private double gpa;

    // No-argument constructor (required for JavaBeans)
    public StudentBean() {
    }

    // Getters and Setters
    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getName() {
        return name;
    }    

    public void setName(String name) {
        this.name = name;
    }

    public String getMajor() {
        return major;
    }    

    public void setMajor(String major) {
        this.major = major;
    }

    public int getCredits() {
        return credits;
    }    

    public void setCredits(int credits) {
        this.credits = credits;
    }

    public double getGpa() {
        return gpa;
    }    

    public void setGpa(double gpa) {
        this.gpa = gpa;
    }
}