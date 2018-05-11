//
//  main.m
//  type def example
//
//  Created by Gobinda Paul on 5/11/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>


//typedef and #define are both the same but only a different is
//The typedef is limited to giving symbolic names to types only
//whereas #define can be used to define alias for values as well,
//like you can define 1 as ONE, etc.

#define TRUE  1
#define FALSE 0

//this is how we can use typedef for a struct
typedef struct Books
{
    __unsafe_unretained NSString* title;
    __unsafe_unretained NSString *author;
    __unsafe_unretained NSString *subject;
    int book_id;
} Book;

int main( )
{
    NSLog( @"Value of TRUE : %d\n", TRUE);
    NSLog( @"Value of FALSE : %d\n", FALSE);
    
    
    //we have define the Book struct as typedef so when opening
    //a variable of Book we don't have to write the keyword struct
    //we can do it by only declare it as int variable [int x]
    Book book;
    
    book.title = @"Objective-C Programming";
    book.author = @"TutorialsPoint";
    book.subject = @"Programming tutorial";
    book.book_id = 100;
    
    NSLog( @"Book title : %@\n", book.title);
    NSLog( @"Book author : %@\n", book.author);
    NSLog( @"Book subject : %@\n", book.subject);
    NSLog( @"Book Id : %d\n", book.book_id);
    
    return 0;
}
