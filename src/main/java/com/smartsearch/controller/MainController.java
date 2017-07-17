package com.smartsearch.controller;

import com.smartsearch.model.Product;
import com.smartsearch.model.WishList;
import com.smartsearch.service.WishListService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.apache.log4j.Logger;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by intel on 5/19/17.
 */

@Controller
@RequestMapping("/")
public class MainController {

    @RequestMapping("/")
    public ModelAndView home() {
        return new ModelAndView("home");
    }

    @RequestMapping("/search")
    public ModelAndView showResult(@RequestParam("search_query") String keyword) {
        List<Product> searchResult = getSearchResult(keyword);
        ModelAndView modelAndView = new ModelAndView("search");
        modelAndView.addObject("keyword", keyword);
        //todo load from other web sites all the info
        //todo set in modelandview
        return modelAndView;
    }

    private List<Product> getSearchResult(String keyword) {
        RestTemplate restTemplate = new RestTemplate();
        List<String> supportedApiCalls = getSupportedApiUrls(keyword);
        List<Product> products = new ArrayList<>();

        for (String apiUrl : supportedApiCalls) {
            Product[] pList = restTemplate.getForObject(apiUrl, Product[].class);
            products.addAll(Arrays.asList(pList));
        }
        return products;
    }

    private List<String> getSupportedApiUrls(String keyword) {
        return new ArrayList<>();
    }

    protected static Logger logger = Logger.getLogger("controller");

    @Resource(name = "WishListService")
    private WishListService wishListService;

    @RequestMapping(value = "/wishlist", method = RequestMethod.GET)
    public String getWishList(Model model){
        List<WishList> wishLists = wishListService.getAll();

        model.addAttribute("wishlist", wishLists);

        return "wishlist";
    }


}