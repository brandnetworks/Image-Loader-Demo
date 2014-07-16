//
//  BNCDownloadOperation.m
//  ImageLoader
//
//  Created by bnicholas on 7/16/14.
//  Copyright (c) 2014 Brand Networks Inc. All rights reserved.
//

#import "BNCDownloadOperation.h"

@interface BNCDownloadOperation ()

@property (nonatomic, strong) UIImage *resultImage;


@end

@implementation BNCDownloadOperation

- (void)main
{
    self.resultImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:self.sourceUrl]];
}

@end
