//
//  PopUp.h
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopUp : UIViewController <UITableViewDelegate, UITableViewDataSource>

{
    NSArray *data;
    NSArray *keyData;
    NSArray *sectionTitle;
    NSArray *aboutData;
    NSArray *keyBoard ;
    int64_t *section1;
    int64_t *row;
    
}
@property (nonatomic) NSUInteger *name;

@end
