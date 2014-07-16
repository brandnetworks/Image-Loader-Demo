//
//  BNCDetailViewController.m
//  ImageLoader
//
//  Created by bnicholas on 7/16/14.
//  Copyright (c) 2014 Brand Networks Inc. All rights reserved.
//

#import "BNCDetailViewController.h"
#import "BNCDownloadOperation.h"
#import "BNCResizeOperation.h"
#import "BNCDisplayOperation.h"

@interface BNCDetailViewController ()

@end

@implementation BNCDetailViewController

- (void)viewWillAppear:(BOOL)animated
{
    BNCDownloadOperation *downloader = [[BNCDownloadOperation alloc] init];
    downloader.sourceUrl = [NSURL URLWithString:@"http://photos.petfinder.com/photos/pets/20828727/1/?bust=1345487641&width=500&-x.jpg"];
    
    BNCResizeOperation *resizer = [[BNCResizeOperation alloc] init];
    resizer.targetSize = self.imageView.frame.size;
    resizer.downloadOperation = downloader;
    [resizer addDependency:downloader];
    
    BNCDisplayOperation *displayer = [[BNCDisplayOperation alloc] init];
    displayer.targetImageView = self.imageView;
    displayer.resizeOperation = resizer;
    [displayer addDependency:resizer];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [queue addOperation:downloader];
    [queue addOperation:resizer];
    [queue addOperation:displayer];
    // stuffs
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
