public static void dataBaseClassDemoAccount(){
        //create a list of contact
        List<Account> accList = new List<Account>{
            New Account(Name = 'Sheldon Cooper Account', Phone = '3444444242'),
                New Account(Name = 'Howard Wolowitz Account'),
                New Account(Name = 'Bernedette Account'),
                New Account()
        };
            List<Database.saveResult> srResult = Database.insert(accList, False);
        
        for(Database.saveResult sr: srResult){
            if(sr.isSuccess()){
                system.debug('Successfully inserted Account, Account ID are '+ sr.getID());
            }else{
                for(Database.Error err : sr.getErrors()){
                    system.debug('The following error has occured');
                    system.debug(err.getStatusCode() + ':'+ err.getMessage());
                    system.debug('Account insertion failed '+ err.getFields());
                }
            }
        }
    }
