package com.allergenie.migrations.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "restaurant")
public class Restaurant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "name")
    private String name;
    @Column(name = "phone_number")
    private String phoneNumber;
    @Column(name = "email_address")
    private String emailAddress;
    @Column(name = "street_address")
    private String streetAddress;
    @Column(name = "street_address_two")
    private String streetAddressTwo;
    @Column(name = "city")
    private String city;
    @Column(name = "state")
    private String state;
    @Column(name = "zip_code")
    private String zipCode;
}


