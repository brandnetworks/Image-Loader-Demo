//
//  BNCDetailViewController.h
//  ImageLoader
//
//  Created by bnicholas on 7/16/14.
//  Copyright (c) 2014 Brand Networks Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNCDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
