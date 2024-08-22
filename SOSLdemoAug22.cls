//searching object
public class SOSLdemoAug22 {
    
    
    public static void sosl(){
        
        List<List<sObject>> searchList = [FIND 'test' IN ALL FIELDS RETURNING Account(Name), Contact(FirstName, LastName, Email),
                                         Opportunity(ID, Name, StageName, Amount)];
        
        List<Account> accList = (List<Account>)searchList[0];
        List<Contact> conList = (List<Contact>)searchList[1];
        List<Opportunity> oppList = (List<Opportunity>) searchList[2];
        
        for(Account acc: accList){
            system.debug(acc);
        }
        
        system.debug(accList);
        
    }
}
