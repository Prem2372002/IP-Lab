/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class NewMain2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
               System.out.print(getDetails(1));
    }

    private static String getDetails(int id) {
        webservices.Product1_Service service = new webservices.Product1_Service();
        webservices.Product1 port = service.getProduct1Port();
        return port.getDetails(id);
    }
    
}
