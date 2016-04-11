//
//  DetailsViewController.h
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController <UITableViewDelegate , UITableViewDataSource>
{
    NSMutableArray *tableData;
    int64_t *section2;
    int64_t *row;

}
@property (strong, nonatomic) NSMutableArray *itemDetails;


@end
