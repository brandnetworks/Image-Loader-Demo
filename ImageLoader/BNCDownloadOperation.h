//
//  BNCDownloadOperation.h
//  ImageLoader
//
//  Created by bnicholas on 7/16/14.
//  Copyright (c) 2014 Brand Networks Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNCDownloadOperation : NSOperation

// Inputs
@property (nonatomic, strong) NSURL *sourceUrl;

// Outputs
@property (nonatomic, strong, readonly) UIImage *resultImage;

@end
