package com.smartsearch.service;

/**
 * Created by intel on 6/4/17.
 * Service for Security.
 *
 * @author Sevak Martirosyan
 * @version 1.0
 */

public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
