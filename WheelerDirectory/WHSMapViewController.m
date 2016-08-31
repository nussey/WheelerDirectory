//
//  WHSMapViewController.m
//  WheelerDirectory
//
//  Created by Alex Nussey on 11/11/13.
//  Copyright (c) 2013 Nussey. All rights reserved.
//

#import "WHSMapViewController.h"

@interface WHSMapViewController ()


@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property UIImageView *daMap;

@end

@implementation WHSMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.daMap = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"school_map"]];
    self.scrollView.contentSize = self.daMap.frame.size;
    [self.scrollView addSubview:self.daMap];
    self.scrollView.minimumZoomScale = 0.2;
    self.scrollView.maximumZoomScale = 1;
    self.scrollView.contentOffset = CGPointMake(800.0, 1020.0);
    self.scrollView.contentInset=UIEdgeInsetsMake(15.0,30.0,0.0,0.0);
    //self.scrollView.zoomScale = 1;
    //[self.scrollView setZoomScale:0.2];
    self.scrollView.delegate=self;
    
    
    //self.imageView.frame = CGRectMake(
                                 //self.imageView.frame.origin.x,
                                 //self.imageView.frame.origin.y, 300, 300);
    
    //self.imageView.image = [UIImage imageNamed:@"gtavmap.png"];
    //self.scrollView.frame = CGRectMake(0, 0, 10, 10);
    
    //self.imageView.image.size.width = 8192;
    //self.imageView.image.size.width = 8192;
    
    //self.scrollView.contentSize = self.imageView.image.size;
    //[self.scrollView setFrame:CGRectMake(0, 0, 1, 1)];
    //[self.scrollView setScrollEnabled:YES];
    //[self.scrollView setContentSize:CGSizeMake(self.imageView.image.size.width, self.imageView.image.size.height)];
    //[self.scrollView setFrame:CGRectMake(0, 0, 100, 100)];
    
    // Do any additional setup after loading the view.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scroll{
    return self.daMap;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
