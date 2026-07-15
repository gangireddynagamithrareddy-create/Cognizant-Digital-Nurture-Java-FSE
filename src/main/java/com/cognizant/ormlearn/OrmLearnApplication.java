package com.cognizant.ormlearn;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.cognizant.ormlearn.model.Country;
import com.cognizant.ormlearn.model.Employee;
import com.cognizant.ormlearn.service.CountryService;
import com.cognizant.ormlearn.service.EmployeeService;

@SpringBootApplication
public class OrmLearnApplication {

    private static final Logger LOGGER =
            LoggerFactory.getLogger(OrmLearnApplication.class);

    private static CountryService countryService;
    private static EmployeeService employeeService;

    public static void main(String[] args) {

        ApplicationContext context =
                SpringApplication.run(OrmLearnApplication.class, args);

        employeeService = context.getBean(EmployeeService.class);

        testGetEmployee();
    }

    private static void testGetEmployee() {

        System.out.println("Start");

        Employee employee = employeeService.get(1);

        System.out.println(employee);

        System.out.println(employee.getDepartment());

        employee.getSkillList().forEach(System.out::println);

        System.out.println("End");
    }

    // Keep this method for later if needed
    private static void testSearchCountries() {

        countryService = null;

        System.out.println("Start");

        if (countryService != null) {
            List<Country> countries = countryService.searchCountries("Uni");
            countries.forEach(System.out::println);
        }

        System.out.println("End");
    }
}