//program to query parenta and its child records through class and method.
public class ParentChildQuerying {
    
    public static void queryClass(){
        
        for(Account acc : [select id, name, (select id , firstName, LastName, phone from Contacts) from Account ]){
            
            system.debug('Account id are '+ acc.id);
            system.debug('Account names are '+ acc.Name);
            
            for(Contact con : acc.Contacts){
                
                system.debug('Contact id are '+ con.id);
                system.debug('Contact names are '+ con.FirstName);
                system.debug('Contacts lastName are '+ con.LastName);
            }
        }
    }

}
