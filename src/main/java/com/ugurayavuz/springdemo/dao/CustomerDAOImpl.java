package com.ugurayavuz.springdemo.dao;

import com.sun.xml.internal.rngom.digested.DEmptyPattern;
import com.ugurayavuz.springdemo.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO{

    // need to inject the session factory
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Customer> getCustomers() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query - sort by last name
        Query<Customer> theQuery = currentSession.createQuery("from Customer order by lastName", Customer.class);


        // execute the query and get the list of customers(resultList)
        List<Customer> customers = theQuery.getResultList();

        // return the results
        return customers;
    }

    @Override
    public void saveCustomer(Customer theCustomer) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save the customer
        currentSession.saveOrUpdate(theCustomer);
//        if (primaryKey/id) empty
//                then INSERT new customer
//        else UPDATE existing customer
    }

    @Override
    public Customer getCustomer(int theId) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // now retrieve/read from database using primary key
        Customer tempCustomer = currentSession.get(Customer.class, theId);

        return tempCustomer;

    }

}
