package entities;

import jakarta.persistence.*;

import java.sql.Date;

@Entity(name="employee")
@Table(name="employee")
public class Employee {

    @Id
    @Column(name="idEmployee",nullable = false)
    private int id;

    @Column(name="firstName",nullable = false,length = 45)
    private String firstname;

    @Column(name="lastName",nullable = false,length = 45)
    private String lastName;

    @Column(name="email",nullable = false,length = 45)
    private String email;

    @Column(name="phoneNumber",nullable = false,length = 45)
    private String phoneNumber;

    @Column(name="address",length = 45)
    private String address;

    @Column(name="Salary",nullable = false)
    private double salary;

    @Column(name="birthDate",nullable = false)
    private Date birthDate;

    @Column(name="idCompany",nullable = false)
    private int idCompany;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public int getIdCompany() {
        return idCompany;
    }

    public void setIdCompany(int idCompany) {
        this.idCompany = idCompany;
    }



    public Employee(){
    }

    public Employee(int id,String firstname,String lastName,String email,String phoneNumber,double salary,Date birthDate,int idCompany ){
        this.id = id;
        this.firstname = firstname;
        this.lastName = lastName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.salary = salary;
        this.birthDate = birthDate;
        this.idCompany = idCompany;
    }



}
