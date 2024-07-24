public class ListDemoJuly24 {
    
    public static void listDemoColors(){
        
        List<String> colors = new List<String>();
        colors.add('Red');
        colors.add('Green');
        colors.add('Blues');
        colors.add('violet');
        colors.add('Magenta');
        
        system.debug('Colosrs in the lis is '+ colors);
    }
    
    
    public static void listDemoNumbers(){
        
        List<integer> numberss = new List<integer>();
        numberss.add(11);
        numberss.add(12);
        numberss.add(10);
        numberss.add(32);
        numberss.add(43);
        
        system.debug('numbers  in the lis is '+ numberss);
    }
    
    public static void createAccounts(){
        
        List<Account> myList = new List<Account>();
        
        for(Integer i = 1; i<= 6; i++){
            Account acc = new Account();
            acc.Name = 'Siri Luminos'+i;
            acc.Active__c = 'Yes';
            acc.AnnualRevenue = 19999990;
            myList.add(acc);
        }
        insert myList;
        
        
    }
    
    public static void createOpportunity(){
        
        List<Opportunity> oppList = new List<Opportunity>();
        
        for(integer i = 1; i<=10; i++){
            
            Opportunity opp = new Opportunity();
            opp.Name = 'Opportunnty July 24'+i;
            opp.StageName = 'Qualification';
            opp.CloseDate = system.today();
            opp.Amount = 10000000;
            oppList.add(opp);
        }
        
        insert oppList;
    }
    
    Public static void OppWithAccount(){
        
        List<Account> accList = new List<Account>();
        List<opportunity> oppList = new List<Opportunity>();
        
        for (integer i = 1; i<=5; i++){
            Account acc = new Account();
            acc.Name = 'Account for ooppo July 24 '+i;
            acc.Active__c = 'Yes';
            acc.Phone = '1032920942';
            acc.AnnualRevenue = 1303900;
            accList.add(acc);
            
            
        }
        insert accList;
        
        for(Account acc : accList){
            Opportunity opp = new Opportunity();
            opp.Name = 'Opp for Account july 24 *';
            opp.StageName = 'Needs Analysis';
            opp.CloseDate = system.today();
            opp.Amount = 9999999;
            opp.AccountId = acc.Id;
            
            oppList.add(opp);
            
        }
        
        
        insert oppList;
    }
    
    public static void createAccWithConAndCase(){
        
        List<Account> accList = new List<Account>();
        List<Contact> conList = new List<Contact>();
        List<Case> caseList = new List<Case>();
        
        for(Integer i = 1; i <= 5; i++){
            
            Account acc = new Account();
            acc.Name = 'Act for co and case july   24';
            acc.Active__c = 'Yes';
            acc.AnnualRevenue = 100000;
            acc.Industry = 'Media';
            accList.add(acc);
            
        }
        insert accList;
        
        for(Account acc : accList){
            
            Contact con = new Contact();
            con.LastName = 'Cooper';
            con.FirstName = 'Sheldon';
            con.Phone = '98327823';
            con.Languages__c = 'English';
            con.AccountId = acc.Id;
            conList.add(con);
            
            Case cse = new Case();
            cse.AccountId = acc.Id;
            //cse.CaseNumber = '0001244';
            cse.Subject = 'Regarding BSOD isssue- crowdstrike';
            cse.Comments = 'Unable to get inside my window computer';
            caseList.add(cse);
        }
        
        insert conList;
        insert caseList;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
