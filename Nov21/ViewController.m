//
//  ViewController.m
//  Nov21
//
//  Created by Michael Gradilone on 11/21/13.
//  Copyright (c) 2013 FintechSolutions. All rights reserved.
//

#import "ViewController.h"
#import "View1.h"
#import "Nov21AppDelegate.h"


@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (id) initWithTitle: (NSString *) title {
	self = [super initWithNibName: nil bundle: nil];
	if (self != nil) {
		// Custom initialization
		self.title = title;
        
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle: @"Next Ninja"
                                                                                  style: UIBarButtonItemStyleBordered
                                                                                 target: self
                                                                                 action: @selector(nextStation)
                                                  ];
	}
	return self;
}

- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[View1 alloc] initWithFrame: frame controller: self];
    
    if ([self.title isEqualToString:@"Donatello"]) {
        [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"TMNTDonatello2012.png"]]];
    } else if ([self.title isEqualToString:@"Leonardo"]) {
        [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"leonardo.jpg"]]];
    } else if ([self.title isEqualToString:@"Michelangelo"]) {
        [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Michelangelo.jpg"]]];
    } else if ([self.title isEqualToString:@"Raphael"]) {
        [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"raphael.jpg"]]];
    }

}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) nextStation {
	UIApplication *application = [UIApplication sharedApplication];
	Nov21AppDelegate *applicationDelegate = application.delegate;
	[applicationDelegate nextStation];
}


- (NSUInteger) supportedInterfaceOrientations {
	return UIInterfaceOrientationMaskAll;
}

- (BOOL) shouldAutorotate {
	return YES;
}

@end
