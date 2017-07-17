package com.smartsearch.dao;

import com.smartsearch.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by intel on 5/19/17.
 */

public interface UserDao extends JpaRepository<User, Long> {
    User findByUsername(String username);

}
