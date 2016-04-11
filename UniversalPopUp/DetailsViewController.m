//
//  DetailsViewController.m
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import "DetailsViewController.h"

@implementation DetailsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    tableData = _itemDetails;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{


}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return tableData.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 1;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{

    section2 = indexPath.section;
    row = indexPath.row;
    [self performSegueWithIdentifier:@"MoreDetailsSegue" sender:self];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = tableData[indexPath.row];
    return cell;
}

//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//       // [tableData removeObjectAtIndex: indexPath.row];
//        //tableView deleteRowsAtIndexPaths:tableData[indexPath] withRowAnimation:true];
//        //[tableView deleteRowsAtIndexPaths:[[tableData removeObjectAtIndex: indexPath.row]] withRowAnimation:true];
//        
//        [tableData removeObjectAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:NSMutableArray  withRowAnimation:true];
//        [tableView reloadData];
//    
//    }
//    }
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
