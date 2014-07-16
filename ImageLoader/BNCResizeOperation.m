//
//  BNCResizeOperation.m
//  ImageLoader
//
//  Created by bnicholas on 7/16/14.
//  Copyright (c) 2014 Brand Networks Inc. All rights reserved.
//

#import "BNCResizeOperation.h"

@interface BNCResizeOperation ()

@property (nonatomic, strong) UIImage *resultImage;

@end

@implementation BNCResizeOperation

- (void)main
{
    UIImage *sourceImage = self.downloadOperation.resultImage;
    
    UIGraphicsBeginImageContext(self.targetSize);
    [sourceImage drawInRect:CGRectMake(0, 0, self.targetSize.width, self.targetSize.height)];
    self.resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

@end
