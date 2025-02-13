package com.allergenie.migrations.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "menu_item_group")
public class MenuItemGroup {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "menu_id")
    private Integer menuId;
    @Column(name = "name")
    private String name;
    @Column(name = "position")
    private Integer position;

}
