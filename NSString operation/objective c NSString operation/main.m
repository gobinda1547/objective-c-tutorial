//
//  main.m
//  objective c NSString operation
//
//  Created by Gobinda Paul on 4/16/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        //this is how we print something in the console
        NSLog(@"Hello, World!");
        
        //this is how we declare a string
        NSString *myName = @"gobinda paul";
        
        //this is how we print a string variable
        NSLog(@"my full name is %@\n",myName);
        
        //how to print the length of a string
        int myNameLength = (int)[myName length];
        NSLog(@"Length of my name is %d",myNameLength);
        
        //this is how we print a specific character of a position
        NSLog(@"First character of my name is %c\n", [myName characterAtIndex:0]);
        
        //this is how we can change the formate of a string
        int date = 16,month=4,year=2018;
        NSString *dateValue = [NSString stringWithFormat:@"%d/%d/%d",date,month,year];
        NSLog(@"date is = %@\n",dateValue);
        
        //check whether two string are same or not
        NSString *a = @"abc";
        NSString *b = @"abc";
        BOOL isEqual = [a isEqualToString:b];
        NSLog(@"Is string a and b are equal or not: %d\n",isEqual);
        
        //convert NSString to regular String
        const char *uCString = [a UTF8String];
        NSLog(@"Converted into regular String: %s\n",uCString);
        
        //convert a String into UpperCaseString
        NSString *text1 = @"I Love My Country";
        NSLog(@"converted to uppercase: %@\n", [text1 uppercaseString]);
        
        //convert a String into LowerCaseString
        NSString *text2 = @"I Love My Country";
        NSLog(@"converted to lowercase: %@\n", [text2 lowercaseString]);
        
        //this is how we can add two strings
        NSString *text = [text1 stringByAppendingString:text2];
        NSLog(@"this is the whole text: %@\n",text);
        
        //this is an example of nested string function calling
        NSLog(@"whole text: %@", [[text1 uppercaseString] stringByAppendingString:text2]);
        
        //how to search into a string, while it will give you back an object of NSRange
        //then you have to access the two attribute of NSRange
        //one of the is (Object Name of NSRange).location
        //another one is (Object Name of NSRange).length
        NSString *pattern = @"Countri";
        NSRange searchResult = [text rangeOfString:pattern];
        if(searchResult.location == NSNotFound){
            NSLog(@"%@ is not found in the main string.\n",pattern);
        }else {
            NSLog(@"%@ is found at %lu and the length is %lu\n",pattern,searchResult.location,searchResult.length);
        }
        
        //how to replace a String with another string
        NSRange rangeForChange = NSMakeRange(10 , 3);
        const char *updatedText = [[text stringByReplacingCharactersInRange:rangeForChange withString:@"UPDATED TEXT"] UTF8String];
        NSLog(@"the updated text after replacing is %s\n",updatedText);
        
        //this is how we can declare a mutable string with initial capacity
        NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
        [groceryList appendFormat:@"%s","potato, banana, pasta" ];
        NSLog(@"grocery list: %@\n",groceryList);
        
        //we can also initialize the value of a mutable string in direct formate like in this example
        NSMutableString *aString= [NSMutableString stringWithCapacity:50];
        [aString appendFormat:@"this is a line with no semicolon."];
        NSLog(@"aString after addition:%@\n",aString);
        
        //here is how we can find a string into a mutable string
        NSRange nowRange = [aString rangeOfString:@"no"];
        NSLog(@"no found at posiition %lu\n",nowRange.location);
        
        //this is how we can delete a certain range of a mutable string
        [aString deleteCharactersInRange:NSMakeRange(20,3)];
        NSLog(@"aString after deletion:%@\n",aString);
        
        //this is how we can replace a certain range of string with another string
        [aString replaceCharactersInRange:NSMakeRange(10, 4) withString:@"block"];
        NSLog(@"aString after deletion:%@\n",aString);
        
        //this is how we can insert string after a certain position
        [aString insertString:@"out" atIndex:20];
        NSLog(@"aString after insrtion:%@\n",aString);
        
        
        
        
        
    }
    return 0;
}
