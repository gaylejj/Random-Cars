//
//  JJViewController.h
//  Car Types
//
//  Created by Jeff Gayle on 2/26/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JJViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *carImage;
@property (strong, nonatomic) IBOutlet UILabel *colorLabel;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) NSMutableArray *luxuryCars;
@property (nonatomic) int currentIndex;

- (IBAction)nextCarButtonPressed:(UIBarButtonItem *)sender;

@end
