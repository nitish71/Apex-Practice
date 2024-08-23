public static void dataBaseClassDemoOpp(){
        //create a list of contact
        List<Opportunity> oppList = new List<Opportunity>{
            New Opportunity(Name = 'Sheldon Cooper Opportunity', CloseDate = system.today(), StageName = 'Prospecting'),
                New Opportunity(Name = 'Howard Wolowitz Opportunity', CloseDate = system.today(), StageName = 'New'),
                New Opportunity(Name = 'Bernedette Opportunity', CloseDate = system.today(), StageName = 'Needs Analysis'),
                New Opportunity(Name = 'Amy Farahfolwer', CloseDate = system.today())
        };
            List<Database.saveResult> srResult = Database.insert(oppList, False);
        
        for(Database.saveResult sr: srResult){
            if(sr.isSuccess()){
                system.debug('Successfully inserted Opportunity, opportuniity ID are '+ sr.getID());
            }else{
                for(Database.Error err : sr.getErrors()){
                    system.debug('The following error has occured');
                    system.debug(err.getStatusCode() + ':'+ err.getMessage());
                    system.debug('Opportunity insertion failed '+ err.getFields());
                }
            }
        }
    }
