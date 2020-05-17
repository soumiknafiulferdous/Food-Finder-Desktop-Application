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
public class product1 {
    private String name;
    private String resname;
    private String comment;
    public product1(){
        
    }
    public product1(String name,String resname,String comment){
        this.name=name;
        this.resname=resname;
        this.comment=comment;
    }
    public String getName()
    {
        return name;
    }
    public String getResname()
    {
        return resname;
    }
    public String getComment()
    {
        return comment;
    }
}
