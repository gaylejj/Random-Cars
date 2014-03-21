//
//  JJViewController.m
//  Car Types
//
//  Created by Jeff Gayle on 2/26/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

#import "JJViewController.h"
#import "LC.h"

@interface JJViewController ()

@end

@implementation JJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    LC *tesla = [[LC alloc]init];
    tesla.name = @"Tesla Model S";
    tesla.color = @"Black";
    tesla.image = [UIImage imageNamed:@"tesla.jpg"];
    
    self.carImage.image = tesla.image;
    self.nameLabel.text = tesla.name;
    self.colorLabel.text = tesla.color;
    self.currentIndex = 0;
    
    
    LC *maserati = [[LC alloc]init];
    maserati.name = @"Maserati";
    maserati.color = @"Blue";
    maserati.image = [UIImage imageNamed:@"Maserati.jpeg"];
    
    LC *mustang = [[LC alloc]init];
    mustang.name = @"Mustang";
    mustang.color = @"Silver";
    mustang.image = [UIImage imageNamed:@"Mustang.jpg"];
    
    LC *porsche = [[LC alloc]init];
    porsche.name = @"Porsche";
    porsche.color = @"Red";
    porsche.image = [UIImage imageNamed:@"porsche.jpg"];
    
    self.luxuryCars = [[NSMutableArray alloc]init];
    [self.luxuryCars  addObject:tesla];
    [self.luxuryCars addObject:maserati];
    [self.luxuryCars addObject:mustang];
    [self.luxuryCars addObject:porsche];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextCarButtonPressed:(UIBarButtonItem *)sender {
    int numberOfCars = [self.luxuryCars count];
    int randomIndex = arc4random() % numberOfCars;
    LC *randomCar = [self.luxuryCars objectAtIndex:randomIndex];
    
    self.nameLabel.text = randomCar.name;
    self.colorLabel.text = randomCar.color;
    self.carImage.image = randomCar.image;
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0) {
        randomIndex ++;
    }
    else if (self.currentIndex == randomIndex){
        randomIndex --;
    }
    self.currentIndex = randomIndex;
    sender.title = @"Choose another car";
    }
@end
