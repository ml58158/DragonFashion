//
//  ClothingDetailViewController.m
//  DragonFashion
//
//  Created by Dave Krawczyk on 9/3/14.
//  Copyright (c) 2014 Dave Krawczyk. All rights reserved.
//

#import "ClothingDetailViewController.h"
#import <DragonFashion-Swift.h>

@interface ClothingDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation ClothingDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nameLabel.text = self.dragon.fullname;

    DragonSlayer *shrek = [[DragonSlayer alloc] init];
    [shrek slayDragon:self.dragon];
    NSLog(@"slain dragons %@" , shrek.slainDragons);
}





@end
