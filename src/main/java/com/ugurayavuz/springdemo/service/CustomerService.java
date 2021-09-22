package com.ugurayavuz.springdemo.service;

import com.ugurayavuz.springdemo.entity.Customer;

import java.util.List;

public interface CustomerService {

     public List<Customer> getCustomers();

     public void saveCustomer(Customer theCustomer);

     public Customer getCustomer(int theId);
}
