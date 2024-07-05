//program to insert 5 accounts each with an opportunity and a contact
public class Insert5AccWithOppAndCon {
    
    public static void createAcc(){
        
        List<Account> accList = new List<Account>();
        List<Opportunity> oppList = new List<Opportunity>();
        List<Contact> conList = new List<Contact>();
        
        for(integer i = 1 ; i<= 5; i++){
            
            Account acc = new Account();
            acc.Name = 'Five acc w/ con opp'+i;
            acc.Active__c = 'Yes';
            acc.AnnualRevenue = 1009390;
            acc.Description = 'Account with opp and con';
            accList.add(acc);
            
        }
        
        insert accList;
        
        for (Account acc : accList){
            
            
            Opportunity opp = new Opportunity();
            opp.Name = 'Opportunity for account';
            opp.StageName = 'Prospecting';
            opp.Amount = 100000;
            opp.CloseDate = system.today();
            opp.AccountId = acc.Id;
            oppList.add(opp);
            
            
            Contact con = new Contact();
            con.FirstName = 'James';
            con.LastName = 'champion';
            con.Phone = '82198189';
            con.AccountId = acc.Id;
            conList.add(con);
        }
        
        insert oppList;
        insert conList;
        
        
        
    }
    
    
    
}

