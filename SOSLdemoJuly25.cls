public class SOSLdemoJuly25 {
    
    public static void soslQuery(){
        
        List<List<sObject>> searchList = [FIND 'test' IN ALL FIELDS RETURNING Account(Name), Account(Phone), Contact(FIrstName, LastName, Email)];
        
        List<Account> accList = (List<Account>)searchList[0];
        List<Contact> conList = (List<Contact>)searchList[1];
        
        system.debug(accList);
        system.debug(conList);
    }

}
