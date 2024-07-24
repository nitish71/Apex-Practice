public class RectangleConstJuly24 {
    
    integer len, width;
    
    Public RectangleConstJuly24(integer l, integer b){
        
        len = l;
        width = b;
        
        
    }
    public void area(){
        
        integer A;
        A = len*width;
        system.debug('Area of rectangle is '+ A);
        
    }
    
}

/*
 * This is to call the constructor and methods.
RectangleConstJuly24 myRec = new RectangleConstJuly24(100,80);
myRec.area();
*/
