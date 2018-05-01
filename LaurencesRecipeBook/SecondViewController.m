//
//  SecondViewController.m
//  LaurencesRecipeBook
//
//  Created by Laurence Wingo on 11/17/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize myPicker;

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
    
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"The Men's Warehouse";
    
    self.myPicker = [[UIPickerView alloc] init];
    self.myPicker.dataSource = self;
    self.myPicker.center = self.view.center;
    self.myPicker.delegate = self;
    self.myPicker.showsSelectionIndicator = YES;
    [self.view addSubview:self.myPicker];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    NSInteger result = 0;
    if ([pickerView isEqual:self.myPicker]){
        result = 1;
    }
    return result;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger result = 0;
    if ([pickerView isEqual:self.myPicker]){
        result = 10;
    }
    return result;
}


-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    NSString *result = nil;
    if ([pickerView isEqual:self.myPicker]){
        
        /*Row is zero-based and we want the first row (with index 0) to be rendered
         as Row 1 so we have to +1 every row index */
        result = [NSString stringWithFormat:@"Shoes %ld", (long)row + 1];
        
    }
    return result;
}


-(void) pushSecondController{
    ThirdViewController *secondController = [[ThirdViewController alloc] initWithNibName:nil bundle:NULL];
    
    [self.navigationController pushViewController:secondController animated:YES];
}

-(void) viewDidAppear:(BOOL)paramAnimated{
    [super viewDidAppear:paramAnimated];
    [self performSelector:@selector(pushSecondController) withObject:nil afterDelay:5.0f];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
