public class sObjectJuly24 {
    
    public static void createAccount(){
        
        Account acc = new Account();
        acc.Name = 'July 24';
        acc.Phone = '3i3209903';
        acc.AnnualRevenue = 1289022;
        acc.Active__c = 'Yes';
        acc.Industry = 'Manufacturing';
        acc.Type = 'Person Account';
        
        insert acc;
    }
    
    public static void createOpportunity(){
        
        Opportunity opp = new Opportunity();
        opp.Name = 'Opporunity July 24';
        opp.StageName = 'Needs Analysis';
        opp.CloseDate = system.today();
        opp.Amount = 1000000;
        
        insert opp;
    }
    public static void createOppWithAccount(){
        
        Account acc = new Account();
        Opportunity opp = new Opportunity();
        
        acc.Name = 'Account for Opp july 24';
        acc.Active__c = 'Yes';
        acc.AnnualRevenue = 100000;
        acc.Industry = 'Technology';
        acc.Phone = '324324322';
        insert acc;
        
        opp.Name = 'Opp for Account July 24';
        opp.CloseDate = system.today();
        opp.StageName = 'New';
        opp.Amount = 10213213;
        opp.AccountId = acc.Id;
        insert opp;
    }
    
    public static void createContactWithAccount(){
        
        Account acc = new Account();
        Contact con = new Contact();
        
        acc.Name = 'Account for contcat jult 24';
        acc.Phone = '2343243342';
        acc.Active__c = 'Yes';
        acc.AnnualRevenue = 2121212;
        insert acc;
        
        con.LastName = 'Guptya';
        con.FirstName = 'Ninja';
        con.Phone = '798898999';
        con.Salutation = 'Mr.';
        con.AccountId = acc.Id;
        insert con;
    }
    
    
    
    
    
    

}

//to call =  sObjectJuly24.createOppWithAccount(); 
