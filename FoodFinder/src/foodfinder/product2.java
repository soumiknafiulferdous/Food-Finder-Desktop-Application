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
public class product2 {
    private String item="";
    private int price=0;
    private byte[] image;
    public product2(){
        
    }
    public product2(String item,int price,byte[] image){
        this.item=item;
        this.price=price;
        this.image=image;
    }
    public String getItem(){
        return item;
    }
    public int getPrice(){
        return price;
    }
    public byte[] getMyImage(){
        return image;
    }
}
