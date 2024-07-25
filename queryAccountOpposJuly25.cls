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
    
    Public static void queryAccountOppos(){
        
        List<Account> accList = [SELECT ID, Name, (SELECT ID, Name, StageName, Amount FROM Opportunities) FROM Account LIMIT 10];
        
        for(Account acc: accList){
            if(!accList.isEmpty()){
                
                system.debug('Account name is '+ acc.Name);
                system.debug('Total Opportunity is '+ acc.Opportunities.size());
                
                
                if(!acc.Opportunities.isEmpty()){
                    
                    for(Opportunity opp: acc.Opportunities){
                        system.debug('Opp Name is '+opp.Name);
                        system.debug('stage Name is '+ opp.stageName);
                    }
                }
                
            }
        }
    }

}
