package com.egerton.data;

import java.util.Date;

public class Medicine {
    private long id;
    private String name;
    private String genericName;
    private String storeBox;
    private int quantity;
    private String category;
    private String sideEffects;
    private String expiryDate;

    public Medicine() {
    }

    public Medicine(long id, String name, String genericName, String storeBox, int quantity, String category, String sideEffects, String expiryDate) {
        this.id = id;
        this.name = name;
        this.genericName = genericName;
        this.storeBox = storeBox;
        this.quantity = quantity;
        this.category = category;
        this.sideEffects = sideEffects;
        this.expiryDate = expiryDate;
    }

    //getters and setters

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGenericName() {
        return genericName;
    }

    public void setGenericName(String genericName) {
        this.genericName = genericName;
    }

    public String getStoreBox() {
        return storeBox;
    }

    public void setStoreBox(String storeBox) {
        this.storeBox = storeBox;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSideEffects() {
        return sideEffects;
    }

    public void setSideEffects(String sideEffects) {
        this.sideEffects = sideEffects;
    }

    public String getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(String expiryDate) {
        this.expiryDate = expiryDate;
    }

    @Override
    public String toString() {
        return id + "|" +
                name + "|" +
                genericName + "|" +
                storeBox + "|" +
                quantity + "|" +
                category + "|" +
                sideEffects + "|" +
                expiryDate ;
    }
}
