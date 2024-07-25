public class RelationshipQueryJuly25 {
    
    public static void queryAccountContacts(){
        
        List<Account> accList = [SELECT id, name,(SELECT ID, FirstName, LastName, Phone FROM Contacts) from Account Limit 10];
        
        for(Account acc : accList){
            if(!accList.isEmpty()){
                
                system.debug('Account name is '+ acc.Name);
                system.debug('TOtal Contacts are '+ acc.Contacts.size());
                
                if(!acc.Contacts.isEmpty()){
                    for(Contact con :acc.Contacts){
                        system.debug('Firstname '+ con.FirstName);
                        system.debug('LastName = '+ con.LastName);
                    }
                    
                }
            }
        }
    }

}
