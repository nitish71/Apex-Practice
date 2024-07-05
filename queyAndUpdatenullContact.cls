//program to query contact with null phone and update them with 9832894334.
public class updatePhoneOnContact {
    
    public static void updateContact(){
        
        List<Contact> conList = new List<Contact>();
        
        conList = [select id, firstname, lastname, phone , email from contact where email = null];
        
        system.debug(conList);
        
        for (Contact con : conList){
            
            //con.Phone = '9832894334';
            con.Email = 'James.champion@usa.com';
            
            
        }
        
        update conList;
}

}
