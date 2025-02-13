package com.allergenie.migrations.entities;

import jakarta.persistence.*;

import java.sql.ResultSet;
import java.sql.SQLException;

@Entity
@Table(name = "menu")
public class Menu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "name")
    private String name;
    @Column(name = "is_active")
    private Boolean isActive;
}
