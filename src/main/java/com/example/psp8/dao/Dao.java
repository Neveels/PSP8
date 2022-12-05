package com.example.psp8.dao;

import com.example.psp8.model.AddressBook;

import java.util.List;

public interface Dao {
    List<AddressBook> getAll();
    void save(AddressBook addressBook);
    void update(AddressBook addressBook);
    void delete(AddressBook addressBook);
}
