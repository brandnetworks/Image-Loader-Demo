//
//  BNCDisplayOperation.h
//  ImageLoader
//
//  Created by bnicholas on 7/16/14.
//  Copyright (c) 2014 Brand Networks Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNCResizeOperation.h"

@interface BNCDisplayOperation : NSOperation

// Input
@property (nonatomic, strong) UIImageView *targetImageView;

// dependencies
@property (nonatomic, strong) BNCResizeOperation *resizeOperation;

@end
