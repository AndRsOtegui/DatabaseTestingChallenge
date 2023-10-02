import entities.Employee;
import org.testng.Assert;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;
import utils.crud.EmployeeCrud;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Date;
import java.util.List;

public class EmployeeTest {
    EmployeeCrud employeeCrud = new EmployeeCrud();
    @BeforeTest
    public void clearLog(){
        File logFile = new File("src/test/log.md");
        try {
            if (logFile.exists()) {
                PrintWriter writer = new PrintWriter(logFile);
                writer.close();
            } else {
                System.out.println("Log file does not exist.");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @Test
    public void getAllEmployees(){
        List<Employee> allEmployees = employeeCrud.getAllEmployees();
        Assert.assertNotNull(allEmployees);
        Assert.assertFalse(allEmployees.isEmpty());
    }

    @Test
    public void getEmployeesByLastname(){
        String lastname = "Vegito";
        List<Employee> employeesByLastname = employeeCrud.getEmployeesByLastname(lastname);
        Assert.assertNotNull(employeesByLastname);
        Assert.assertFalse(employeesByLastname.isEmpty());
    }

    @Test
    public void insertNewEmployee(){
       int id = 100;
       String name = "Trunks";
       String lastName = "Vegito";
       String email = "TrksVegito@gmail.com";
       String phoneNumber = "3001236547";
       double salary = 4200;
        Date birtDate = java.sql.Date.valueOf("2000-01-31");
        int companyID = 5;

        employeeCrud.insertNewEmployee(id,name,lastName,email,phoneNumber,salary,birtDate,companyID);
        Assert.assertNotNull(employeeCrud.getEmployeeByID(id));
    }

    @Test
    public void updateEmployee(){
        int id = 100;
        String name = "Gotenks";
        String lastName = "Gogeta";
        String email = "Gotenks@gmail.com";
        String phoneNumber = "3009876543";
        double salary = 8200;
        Date birtDate = java.sql.Date.valueOf("2000-02-29");
        int companyID = 5;

        employeeCrud.getEmployeeByID(id);
        int updateEmployedID = employeeCrud.updateEmployee(id,name,lastName,email,phoneNumber,salary,birtDate,companyID);
        employeeCrud.getEmployeeByID(id);
        Assert.assertTrue(updateEmployedID>0);
    }

    @Test
    public void deleteEmployee(){
        int id = 100;

        employeeCrud.deleteEmployee(id);
        Assert.assertFalse(employeeCrud.getEmployeeByIdBool(id));
        getAllEmployees();

    }


}
