//program to create five accounts each account should have one contact and one opportunity
public class AccWithOneAccAndOpp {
    
    public static void createAcc(){
        
        List<Account> accList = new List<Account>();
        List<Opportunity> oppList = new List<opportunity>();
        List<Contact> conList = new List<Contact>();
        
        
        for (integer i  = 1; i<= 5; i++){
            Account acc = new Account();
            acc.Name = 'Testing an account';
            acc.Active__c = 'Yes';
            acc.AnnualRevenue = 1000000;
            acc.Rating = 'Hot';
            accList.add(acc);
            
        }
        insert accList;
        
        for (Account acc: accList){
            Opportunity opp = new Opportunity();
            opp.Name = 'Testing opportunity';
            opp.Amount = 1099090;
            opp.StageName = 'Prospecting';
            opp.CloseDate = system.today();
            opp.AccountId = acc.Id;
            oppList.add(opp);
        }
        insert accList;
        
        for (Account acc :accList){
            
            
            Contact con = new Contact();
            con.LastName = 'Kumar';
            con.FirstName = 'Nitish';
            con.Phone = '9873287387';
            con.AccountId = acc.Id;
            conList.add(con);
        }
        
        insert conList;
            
            
        
        
    }
    
}
