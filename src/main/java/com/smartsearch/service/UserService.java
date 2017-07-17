package com.smartsearch.service;


import com.smartsearch.model.User;

/**
 * Created by intel on 6/4/17.
 * Service class for {@link }
 *
 */
public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
