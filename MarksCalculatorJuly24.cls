public class MarksCalculatorJuly24 {
    
    public static void division(decimal marks1,decimal marks2, decimal marks3){
        
        decimal totalMarks = marks1+marks2+marks3;
        system.debug('Total marks is '+ totalMarks);
        
        decimal percentage = (totalMarks/3);
        
        if(percentage>=60){
            system.debug('FIrst division');
        }else if(percentage>=45 && percentage<60){
            system.debug('Second division');
        }else if(percentage>=35 && percentage <45){
            system.debug('Third division');
        }else{
            system.debug('You did not pass');
        }
    }

}

//to call = MarksCalculatorJuly24.division(83,90,72);
