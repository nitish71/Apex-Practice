public class InchesToFeetJuly24 {
    
    public static void inchesToFeet(integer inches){
        
        if(inches<12){
            integer feet = 0;
            system.debug('entered icnhes is lees than a feet');
        }else{
            
            integer feet = inches/12;
            system.debug('give inches is '+ feet+ 'feet and '+(12-(inches/12))+' inches');
        }
    }

}

//to call the method - InchesToFeetJuly24.inchesToFeet(67);
