//
//  BNCDisplayOperation.m
//  ImageLoader
//
//  Created by bnicholas on 7/16/14.
//  Copyright (c) 2014 Brand Networks Inc. All rights reserved.
//

#import "BNCDisplayOperation.h"

@implementation BNCDisplayOperation

- (void)main
{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.targetImageView.image = self.resizeOperation.resultImage;
    });
}

@end
