//
//  HypnosisView.m
//  06.Hypnosister
//
//  Created by SteckDEV on 2/20/13.
//  Copyright (c) 2013 com.SteckDEV. All rights reserved.
//

#import "HypnosisView.h"


@implementation HypnosisView

-(void)drawRect:(CGRect)dirtyRect
{
    CGRect bounds = [self bounds];
    
    //Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    //The radius of the circle shoudl be nearly as big as the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init]; 
    
    //Add an arc to the path at center, with radius of maxRadius,
    // from 0 to 2*PI radians (a circle)
    /*
    [path addArcWithCenter:center
                    radius:maxRadius
                startAngle:0.0
                  endAngle:M_PI * 2.0
                 clockwise:YES];
     */
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
     [path addArcWithCenter:center
                     radius:currentRadius // note this is currentRadius!
                 startAngle:0.0
                   endAngle:M_PI * 2.0
                  clockwise:YES];
    }
    
    // Configure line width to 10 points
    [path setLineWidth:10];
    
    //Configure the drawing color to gray
    /*
     [[UIColor redColor] set];
    */
    [[self circleColor] setStroke];
    
    //Draw the line!
    [path stroke];
    
    NSString *text = @"You are getting sleepy.";
    CGRect textRect;
    
    // Get a font to draw it in
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    
    // Create the attributed string
    NSMutableAttributedString *attrString =
    [[NSMutableAttributedString alloc] initWithString:text];
    
    // Figure out the range of the whole string
    NSRange range = NSMakeRange(0, [attrString length]);
    
    // Set the drawing font for the whole string to font
    [attrString addAttribute:NSFontAttributeName value:font range:range];
    
    // Create a shadow object
    NSShadow *shadow = [[NSShadow alloc] init];
    [shadow setShadowOffset:CGSizeMake(4, 3)];
    [shadow setShadowColor:[UIColor darkGrayColor]];
    
    // Set the shadow for the whole string
    [attrString addAttribute:NSShadowAttributeName value:shadow range:range];
    
    for (int i = 0; i < [attrString length]; i++) {
        if (i % 2 == 0) {
            // Make even indx characters light gray
            [attrString addAttribute:NSForegroundColorAttributeName
                               value:[UIColor lightGrayColor]
                               range:NSMakeRange(i, 1)];
        }
        else
        {
            // Make odd index characters black
                        [attrString addAttribute:NSForegroundColorAttributeName
                                           value:[UIColor blackColor]
                                           range:NSMakeRange(i, 1)];
        }
    }
    
    
    
    //Determine the size of this string
    textRect.size = [attrString size];
    
    // Let's put that string in the center of the view
    
    
    // How big is this string when drawn in this font?
    textRect.size = [text sizeWithFont:font];
    
    // Lets put that string in the center of the view
    textRect.origin.x = center.x - textRect.size.width / 2.0;
    textRect.origin.y = center.y - textRect.size.height / 2.0;
    
    // Set the current fill color to black
    /*
    [[UIColor blackColor] s	et];
    
    // Draw the string
    [text drawInRect:textRect
            withFont:font];
     */
    
    // Draw the ATTRIBUTED string
    [attrString drawInRect:textRect];
}
- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
    if(_circleColor == [UIColor greenColor])
        [self setCircleColor:[UIColor redColor]];
    else
        [self setCircleColor:[UIColor greenColor]];
        NSLog(@"Device started shaking!");
    }
}

- (id)initWithFrame:(CGRect)frame{
    {
        self = [super initWithFrame:frame];
        if(self) {
            [self setBackgroundColor:[UIColor clearColor]];
            [self setCircleColor:[UIColor blueColor]];
        }
        return self;
    }
}

- (void)setCircleColor:(UIColor *)clr
{
    _circleColor = clr;
    [self setNeedsDisplay];
}

@end
