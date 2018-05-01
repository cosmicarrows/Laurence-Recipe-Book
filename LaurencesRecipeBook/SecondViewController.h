//
//  SecondViewController.h
//  LaurencesRecipeBook
//
//  Created by Laurence Wingo on 11/17/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) UIPickerView *myPicker;

@end
