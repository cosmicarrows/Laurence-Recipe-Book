//
//  ThirdViewController.m
//  LaurencesRecipeBook
//
//  Created by Laurence Wingo on 11/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "ThirdViewController.h"


@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"Charter";
}



-(void)goBack{
    
    [self.navigationController popViewControllerAnimated:YES];
}


-(void) viewDidAppear:(BOOL)paramAnimated{
    [super viewDidAppear:paramAnimated];
    [self performSelector:@selector(goBack) withObject:nil afterDelay:5.0f];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
