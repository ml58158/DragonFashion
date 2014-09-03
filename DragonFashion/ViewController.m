//
//  ViewController.m
//  DragonFashion
//
//  Created by Dave Krawczyk on 9/3/14.
//  Copyright (c) 2014 Dave Krawczyk. All rights reserved.
//

#import "Dragon.h"
#import "ViewController.h"
#import "ClothingDetailViewController.h"
@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *dragonsArray;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];


    Dragon *dragon1 = [[Dragon alloc]initWithFullname:@"Smaug Dragon" andClothingItem:@"High heels"];

    Dragon *dragon2 = [[Dragon alloc]initWithFullname:@"Spyro Dragon" andClothingItem:@"Pocket Protector"];
    
    Dragon *dragon3 = [[Dragon alloc]initWithFullname:@"Drake Dragon" andClothingItem:@"Weird Glasses!"];
    
    Dragon *dragon4 = [[Dragon alloc]initWithFullname:@"Ryan Dragon" andClothingItem:@"Wig"];
    
    self.dragonsArray = [NSArray arrayWithObjects:dragon1,dragon2,dragon3,dragon4,nil];
    

    
    for (Dragon *aDragon in self.dragonsArray) {
        NSLog(@"%@",aDragon);
    }

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dragonsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dragonCellID"];
    
    Dragon *aDragon = [self.dragonsArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = aDragon.fullname;
    cell.detailTextLabel.text = aDragon.signatureClothingItem;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)cell
{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    Dragon *dragon = [self.dragonsArray objectAtIndex:indexPath.row];
    
    ClothingDetailViewController *viewController = (ClothingDetailViewController *)segue.destinationViewController;
    viewController.title = dragon.signatureClothingItem;
    viewController.dragon = dragon;
}




@end
