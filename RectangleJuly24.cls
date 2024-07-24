public class RectangleJuly24 {
    
    integer len, width;
    
    public void area(){
        
        len = 10;
        width = 6;
        integer area;
        area = len*width;
        system.debug('Area of rectangle is '+ area);
    }
    
    public void perimeter(){
        
        len = 18;
        width = 12;
        integer perimeter;
        perimeter = 2*(len+width);
        system.debug('Perimeter of rectangle is '+ perimeter);
        
    }

}

/*
RectangleJuly24 myReactangle = new RectangleJuly24();
myReactangle.area();
myReactangle.perimeter();
*/
