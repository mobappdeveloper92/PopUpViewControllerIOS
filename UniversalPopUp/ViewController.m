//
//  ViewController.m
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import "ViewController.h"
#import "PopUp.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viiew");
    type = [self mobileType];
    NSLog(@"%d",type);
}

- (IBAction)SettingsButton:(id)sender {
    
    if (type == 1){
        
        UIStoryboard *a = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UIViewController *viewController = [a instantiateViewControllerWithIdentifier:@"PopUpView"];
        
        [self displayContentController:viewController];
        
    }
    
    else{
    
        [self performSegueWithIdentifier:@"ShowSegue" sender:self];
    }
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    return UIModalPresentationOverFullScreen;
    
}



- (void) displayContentController: (UIViewController*) content {
    
    [self addChildViewController:content];
    UINavigationBar *nav = [[UINavigationBar alloc] initWithFrame:(CGRectMake(50, 50, self.view.frame.size.width - 100, 100))];
    [nav setBackgroundColor:([UIColor blackColor])];
    [[self view] addSubview:nav] ;
    [[content view] setFrame:CGRectMake(self.view.center.x, 100, self.view.frame.size.width - 100, self.view.frame.size.height - 200)];
    content.view.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height /2);
    [[self view] addSubview:content.view];
    [content didMoveToParentViewController:self];
  
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (int)mobileType{
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone){
        
        return 0;
        
    }
    else return 1;
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//
//    PopUp *destinationViewController = (PopUp*)segue.destinationViewController;
//
//    if(type == 1) {
//
//        [destinationViewController.view setFrame:(CGRectMake(self.view.center.x, self.view.center.y, self.view.frame.size.width - 100, self.view.frame.size.height - 100))];
//
//
//
//
//    }

//    if (type == 1) {
//        UIStoryboard *a = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        UIViewController *viewController = [a instantiateViewControllerWithIdentifier:@"PopUpView"];
//    }
//    else{
//        [self performSegueWithIdentifier:@"a" sender:self];
//    }
//}

//func deviceType() -> String{
//    let deviceIdiom = UIScreen.mainScreen().traitCollection.userInterfaceIdiom
//    let type : String?
//    //check the idiom
//    switch (deviceIdiom) {
//        case .Pad:
//            type = "Ipad"
//        case .Phone:
//            type = "Iphone and Ipod"
//        case .TV:
//            type = "TvOS"
//        default:
//            type = "Unspecified"
//
//    }
//    return type!
//}





@end
