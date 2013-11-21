//
//  View1.h
//  Nov21
//
//  Created by Michael Gradilone on 11/21/13.
//  Copyright (c) 2013 FintechSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface View1: UITextView {
	ViewController *viewController;
    
}


- (id) initWithFrame: (CGRect) frame controller: (ViewController *) c;
@end