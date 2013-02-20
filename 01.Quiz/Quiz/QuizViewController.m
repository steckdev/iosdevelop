//
//  QuizViewController.m
//  Quiz
//
//  Created by Tyler Steck on 12/13/12.
//  Copyright (c) 2012 LANDesk. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        //create two arrays and make the points point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //Add questions and answers to the arrays
        [questions addObject:@"What is Heather's favorite kind of sandwich?"];
        [answers addObject:@"Pannini"];
        
        [questions addObject:@"What toy is Ellie terrified of?"];
        [answers addObject:@"Sleeping baby with binky"];
        
        [questions addObject:@"What was Tyler's first smartphone?"];
        [answers addObject:@"iPhone 3G"];
        
        [questions addObject:@"What year and Month is Tyler's first MacBook Pro?"];
        [answers addObject:@"Nov 2011"];
        
        [questions addObject:@"What gen was Tyler's first iPad?"];
        [answers addObject:@"iPad 3rd Gen"];
    }

// Return the address of the new object
return self;
}

- (IBAction)showQuestion:(id)sender
{
    //Step to the next question
    currentQuestionIndex++;
    
    // Am I the past last question
    if (currentQuestionIndex == [questions count])
    {
        // Go back to the first question
        currentQuestionIndex = 0;
    }
    
    // Get the string at that index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Log the string to the console
    NSLog(@"displaying question: %@", question);
    
    // Display the string in the question field
    [questionField setText:question];
    
    // Clear the answer field
    [answerField setText:@"???"];
    
}
- (IBAction)showAnswer:(id)sender;
{
    //What is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    // Display it in the answer field
    [answerField setText:answer];

    
}
@end


