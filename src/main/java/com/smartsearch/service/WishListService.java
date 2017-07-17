package com.smartsearch.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.smartsearch.model.WishList;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
/**
 * Created by intel on 6/23/17.
 */
@Service("WishListService")
@Transactional
public class WishListService {

    protected  static Logger logger = Logger.getLogger("service");

//    @Resource(name="sessionFactory")
//    private SessionFactory sessionFactory;

    @PersistenceContext
    EntityManager entityManager;


    public List<WishList> getAll(){

        logger.debug("Retrieving all wishes");


        // Retrieve session from Hibernate
        Session session = entityManager.unwrap(Session.class);

        // Create a Hibernate query
        String hql = "from WishList";
        Query query = session.createQuery(hql);

        return query.list();

    }

    public void add(WishList wishList){

        Session session = entityManager.unwrap(Session.class);

        session.save(wishList);
    }


    public void delete(int id) {
        logger.debug("Deleting existing WishList");

        // Retrieve session from Hibernate
        Session session = entityManager.unwrap(Session.class);

        // Retrieve existing WishList first
        WishList wishList = (WishList) session.get(WishList.class, id);

        // Delete
        session.delete(wishList);
    }

    public void edit(WishList WishList) {
        logger.debug("Editing existing WishList");

        // Retrieve session from Hibernate
        Session session = entityManager.unwrap(Session.class);

        com.smartsearch.model.WishList newwishList = new WishList();
        newwishList = WishList;
        // Retrieve existing WishList via id
        com.smartsearch.model.WishList existingWishList = (com.smartsearch.model.WishList) session.get(com.smartsearch.model.WishList.class, newwishList.getId());

        // Assign updated values to this
        existingWishList.setItemPrice(existingWishList.getItemPrice());
        existingWishList.setItemName(existingWishList.getItemName());

        // Save updates
        session.save(existingWishList);
    }


}
