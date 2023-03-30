package productobj;

/**
 *
 * @author admin
 */
public class productobj1 {
    public String name;
    public String price;
    public String instock;
    public  productobj1(String name,String price,String instock){
      this.name=name;
      this.price=price;
      this.instock=instock;
       
    }
    public String getName(){
        return name;
    }
    public String getprice(){
        return price;
    }
    public String getstock(){
        return instock;
    }
    public void setName(String name){
        this.name=name;
    }
    public void setprice(String price){
        this.price=price;
    }
    public void setstock(String instock){
        this.instock=instock;
    }
}
