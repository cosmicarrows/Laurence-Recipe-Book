//
//  RootViewController.m
//  LaurencesRecipeBook
//
//  Created by Laurence Wingo on 11/11/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"


@interface RootViewController ()

@end

@implementation RootViewController

@synthesize myTableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



-(void) performAdd:(id)paramSender{
    NSLog(@"Action method got called");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor magentaColor];
    self.title = @"Victoria's Secret";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(performAdd:)];
    
    
    self.myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.myTableView.delegate = self;
    
    [self.view addSubview:self.myTableView];
    
    self.myTableView.dataSource = self;
    
    /*Make sure our table view resizes correctly */
    self.myTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
                                              
                                              }



-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CGFloat result = 20.f;
    
    if ([tableView isEqual:self.myTableView]){
        result = 40.0f;
    }
    
    return result;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSInteger result = 0;
    if ([tableView isEqual:self.myTableView]){
        result = 3;
    }
    return result;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSInteger result = 0;
    if ([tableView isEqual:self.myTableView]){
        switch (section){
            case 0:{
                result = 2;
                break;
            }
            case 1:{
                result = 2;
                break;
            }
            case 2:{
                result = 2;
                break;
            }
        }
    }
    return result;
}



-(UITableView *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *result = nil;
    
    if ([tableView isEqual:self.myTableView]){
        static NSString *TableViewCellIdentifier = @"MyCells";
        
        result = [tableView dequeueReusableCellWithIdentifier:TableViewCellIdentifier];
        
        if (result == nil){
            result = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableViewCellIdentifier];
        }
        
        result.textLabel.text = [NSString stringWithFormat:@"Section %ld, Cell %ld", (long)indexPath.section, (long)indexPath.row];
    }
    return result;
}


-(void) pushSecondController{
    SecondViewController *secondController = [[SecondViewController alloc] initWithNibName:nil bundle:NULL];
    
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
