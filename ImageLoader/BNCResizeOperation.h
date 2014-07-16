//
//  BNCResizeOperation.h
//  ImageLoader
//
//  Created by bnicholas on 7/16/14.
//  Copyright (c) 2014 Brand Networks Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNCDownloadOperation.h"

@interface BNCResizeOperation : NSOperation

// inputs
@property (nonatomic, assign) CGSize targetSize;

// dependencies
@property (nonatomic, strong) BNCDownloadOperation *downloadOperation;

// output
@property (nonatomic, strong, readonly) UIImage *resultImage;

@end
