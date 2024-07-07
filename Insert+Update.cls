//program to understand how to create and update the records on runtime.
public class UpsertDML {
    
    public static void createUpdateContact(){
        
        List<Contact> conList = new List<Contact>();
        
        for(Contact con : [select id,firstName,LastName, phone, email,AccountID, Account.name, Account.Phone from Contact where email = null and phone = null]){
            
            con.email = 'test@test.com';
            con.phone = '87329732';
            
            conList.add(con);
            
        }
        
        update conList;
        
        for(integer i = 1; i<=5; i++){
            Contact con = new Contact();
            con.LastName = 'Champion';
            con.FirstName = 'james';
            con.Phone = '23542353';
            con.Email = 'test@tst.com';{
                conList.add(con);
            }
            
        }
        
        upsert conList;
        
        
    }
    
}
