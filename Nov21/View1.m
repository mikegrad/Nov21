//
//  View1.m
//  Nov21
//
//  Created by Michael Gradilone on 11/21/13.
//  Copyright (c) 2013 FintechSolutions. All rights reserved.
//

#import "View1.h"
#import "ViewController.h"

@implementation View1

- (id) initWithFrame: (CGRect) frame controller: (ViewController *) c
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		self.font = [UIFont fontWithName: @"Courier" size: 16];
		self.editable = NO;
		viewController = c;
	}
	return self;
}

- (void) drawRect: (CGRect) rect
{
	// Drawing code
	self.text = [[viewController title] stringByAppendingString: @"\n"];
	
	/*for (UIView *v = self; v != nil; v = v.superview) {
		self.text = [self.text stringByAppendingFormat:
                     @"%@\n"
                     @"frame  (%g, %2g), %g × %g\n"
                     @"bounds (%g, %2g), %g × %g\n",
                     NSStringFromClass(v.class),
                     v.frame.origin.x,  v.frame.origin.y,  v.frame.size.width,  v.frame.size.height,
                     v.bounds.origin.x, v.bounds.origin.y, v.bounds.size.width, v.bounds.size.height
                     ];
	}
     */
}


@end
