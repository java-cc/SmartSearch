package com.smartsearch.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Created by intel on 6/23/17.
 */

@Entity
@Table(name = "wishList")
public class WishList implements Serializable {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "itemName")
    private String itemName;

    @Column(name = "itemPrice")
    private String itemPrice;

    @Column(name = "userID")
    private int userID;


    @Column(name = "itemId")
    private int itemId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(String itemPrice) {
        this.itemPrice = itemPrice;
    }
}
