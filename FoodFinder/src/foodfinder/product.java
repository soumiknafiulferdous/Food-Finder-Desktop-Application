/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package foodfinder;

/**
 *
 * @author User
 */
public class product{
    private String name;
    private String location;
    private String rating;
    private String cuisine;
    public product(){
        
    }
    public product(String name,String location,String cuisine,String rating){
        this.name=name;
        this.location=location;
        this.rating=rating;
        this.cuisine=cuisine;
    }
    public String getName()
    {
        return name;
    }
    public String getLocation()
    {
        return location;
    }

    public String getCuisine()
    {
        return cuisine;
    }
    public String getRating()
    {
        return rating;
    }
}
