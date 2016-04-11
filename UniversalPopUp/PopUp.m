//
//  PopUp.m
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import "PopUp.h"
#import "DetailsViewController.h"
#import "UIKit/UIKit.h"

@implementation PopUp

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    sectionTitle = @[@"SECURITY",@"TERMINAL",@"INFO"];
    data = @[@[@"Keys"],@[@"Appearance",@"Keyboard"],@[@"About"]];
    keyData = @[@"Key 1",@"Key 2",@"Key 3"];
    aboutData = @[@"About Me",@"About You",@"About Us"];
    keyBoard = @[@"KB 1",@"KB 2",@"KB 3",@"KB 4"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return sectionTitle.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [[data objectAtIndex:section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = data[indexPath.section][indexPath.row];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{


    return sectionTitle[section];
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    return 69;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    
    section1 = indexPath.section;
    row = indexPath.row;
    [self performSegueWithIdentifier:@"DetailsSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    
    DetailsViewController *destinationViewController = (DetailsViewController*)segue.destinationViewController;
    if (section1 == 0) {
        destinationViewController.itemDetails = keyData;
    }
    else if (section1 == 1)
    {
        destinationViewController.itemDetails = aboutData;
    }
    
}




@end
