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
    
    public static void childToParentQuerying(){
        
        List<Contact> conList = [SELECT ID, FirstName, lastName, AccountID, Account.Name, Account.Phone from Contact Limit 10];
        
        if(!conList.isEmpty()){
            for(Contact con : conList){
                system.debug('First Name '+ con.firstName);
                system.debug('Last name is '+ con.LastName);
                system.debug('Account name is '+ con.Account.Name);
                system.debug('Account Phone is '+con.Account.Phone);
            }
        }
    }
    
    public static void childToParentQueryingOpportunities(){
        
        List<Opportunity> oppList = [SELECT ID, Name, STageName, CloseDate, Account.Name, Account.Phone, Account.AnnualRevenue FROM Opportunity LIMIT 10];
        
        if(!oppList.isEmpty()){
            for(Opportunity opp : oppList){
                system.debug('opportunity name is '+opp.Name);
                system.debug('Opportunity stage is '+ opp.StageName);
                system.debug('AccountName is '+ opp.Account.Name);
                system.debug('Account revenue is '+ opp.Account.annualRevenue);
                system.debug('Account phone is '+ opp.Account.Phone);
            }
        }
    }

}
