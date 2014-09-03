//
//  ViewController.m
//  DragonFashion
//
//  Created by Dave Krawczyk on 9/3/14.
//  Copyright (c) 2014 Dave Krawczyk. All rights reserved.
//

#import "Dragon.h"
#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *dragonsArray;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];


    Dragon *smaug = [[Dragon alloc]init];
    smaug.fullname = @"Smaug Dragon";
    
    NSLog(@"%@",smaug.fullname);
    
    self.dragonsArray = [NSArray arrayWithObject:@"Smaug"];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dragonsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dragonCellID"];
    cell.textLabel.text = [self.dragonsArray objectAtIndex:indexPath.row];
    
    return cell;
    
}




@end
