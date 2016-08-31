//
//  WHSTeacherInfoViewController.m
//  WheelerDirectory
//
//  Created by Alex Nussey on 11/9/13.
//  Copyright (c) 2013 Nussey. All rights reserved.
//

#import "WHSTeacherInfoViewController.h"

@interface WHSTeacherInfoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageHolder;
@property (weak, nonatomic) IBOutlet UILabel *nameTextBox;
@property (weak, nonatomic) IBOutlet UILabel *positionTextBox;
@property (weak, nonatomic) IBOutlet UIButton *emailButton;
@property (weak, nonatomic) IBOutlet UIButton *websiteButton;
@property (weak, nonatomic) IBOutlet UINavigationBar *navBar;

@property NSString *website;
@property NSString *address;

@end

@implementation WHSTeacherInfoViewController

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
    
    self.website = [[NSString alloc] init];
    self.address= [[NSString alloc] init];
    
    // Do any additional setup after loading the view.
    
    self.nameTextBox.text = self.teacherData[0];
//self.navigationItem.title = self.teacherData[0];
    self.positionTextBox.text = self.teacherData[1][0];
    
    self.address = self.teacherData[1][1];
    self.website = self.teacherData[1][2];
    
    [_emailButton addTarget:self action:@selector(sendDaMail) forControlEvents:UIControlEventTouchUpInside];
    
    if(![self.website  isEqual: @""])
    {
        [_websiteButton addTarget:self action:@selector(directToWebsite) forControlEvents:UIControlEventTouchUpInside];
    }
    else
    {
        _websiteButton.enabled = NO;
    }
    
    //DISABLE THE WEBSITE BUTTON IF THERE IS NO WEBSITE
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)directToWebsite
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.website]];
}

- (void)sendDaMail
{
    MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
    mailer.mailComposeDelegate = self;
    [mailer setToRecipients:[NSArray arrayWithObjects:self.address, nil]];
    
    [self presentModalViewController:mailer animated:YES];
    //[mailer dismissModalViewControllerAnimated:YES];
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    [self dismissModalViewControllerAnimated:YES];
}


@end
