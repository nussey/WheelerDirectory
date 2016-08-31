//
//  WHSScheduleViewController.m
//  WheelerDirectory
//
//  Created by Alex Nussey on 11/10/13.
//  Copyright (c) 2013 Nussey. All rights reserved.
//

#import "WHSScheduleViewController.h"

@interface WHSScheduleViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *scheduleSelector;
@property (weak, nonatomic) IBOutlet UILabel *scheduleTypeTextBox;
@property (weak, nonatomic) IBOutlet UILabel *firstBlockTextBox;
@property (weak, nonatomic) IBOutlet UILabel *secondBlockTextBox;
@property (weak, nonatomic) IBOutlet UILabel *thirdBlockTextBox;
@property (weak, nonatomic) IBOutlet UILabel *aLunchTextBox;
@property (weak, nonatomic) IBOutlet UILabel *bLunchTextBox;
@property (weak, nonatomic) IBOutlet UILabel *cLunchTextBox;
@property (weak, nonatomic) IBOutlet UILabel *dLunchTextBox;
@property (weak, nonatomic) IBOutlet UILabel *fourthBlockTextBox;

@property NSArray *scheduleType;
@property NSArray *firstBlock;
@property NSArray *secondBlock;
@property NSArray *thirdBlock;
@property NSArray *aLunch;
@property NSArray *bLunch;
@property NSArray *cLunch;
@property NSArray *dLunch;
@property NSArray *fourthBlock;


@end

@implementation WHSScheduleViewController

- (void)loadData
{
    self.scheduleType = @[@"Regular Bell Schedule", @"Home Room Bell Schedule", @"Assembly Bell Schedule", @"Wildcat Wednesday Bell Schedule"];
    
    self.firstBlock = @[@"8:25 - 10:00", @"8:25 - 9:50", @"8:25 - 9:35", @"8:25 -9:25"];
    self.secondBlock = @[@"10:05 - 11:39", @"10:20 – 11:45", @"10:52 – 12:02", @"9:30 - 10:30"];
    self.thirdBlock = @[@"11:44 - 1:50", @"11:50 – 1:56", @"12:07 – 2:13", @"11:40 - 1:46"];
    self.aLunch = @[@"11:44 - 12:14", @"11:50 – 12:20", @"12:07 – 12:37", @"11:40 – 12:10"];
    self.bLunch = @[@"12:16 - 12:46", @"12:22 – 12:52", @"12:39 – 01:09", @"12:12 – 12:42"];
    self.cLunch = @[@"12:48 - 1:18", @"12:54 – 1:24", @"1:11 – 1:41", @"12:44 – 1:14"];
    self.dLunch = @[@"1:20 - 1:50", @"1:26 – 1:56", @"1:43 – 2:13", @"1:16 – 1:46"];
    self.fourthBlock = @[@"1:55 - 3:30", @"2:01 – 3:30", @"2:18 - 3:30", @"10:35 - 11:35"];
}

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
    
    self.scheduleType = [[NSMutableArray alloc] init];
    self.firstBlock = [[NSMutableArray alloc] init];
    self.secondBlock = [[NSMutableArray alloc] init];
    self.thirdBlock = [[NSMutableArray alloc] init];
    self.aLunch = [[NSMutableArray alloc] init];
    self.bLunch = [[NSMutableArray alloc] init];
    self.cLunch = [[NSMutableArray alloc] init];
    self.dLunch = [[NSMutableArray alloc] init];
    self.fourthBlock = [[NSMutableArray alloc] init];
    
    
    [self loadData];
    
    [self.scheduleSelector addTarget:self action:@selector(updateSchedule:) forControlEvents:UIControlEventValueChanged];
    
    [self showScheduleData:0];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateSchedule:(id)sender
{
    //UISegmentedControl *daScheduleSwitcher = (UISegmentedControl *) sender;
    //NSNumber *selectedSegment = daScheduleSwitcher.selectedSegmentIndex;
    
    int clickedSegment = [sender selectedSegmentIndex];
    
    [self showScheduleData:clickedSegment];
}

- (void)showScheduleData:(int)index
{
    self.scheduleTypeTextBox.text = self.scheduleType[index];
    
    self.firstBlockTextBox.text = self.firstBlock[index];
    self.secondBlockTextBox.text = self.secondBlock[index];
    self.thirdBlockTextBox.text = self.thirdBlock[index];
    self.aLunchTextBox.text = self.aLunch[index];
    self.bLunchTextBox.text = self.bLunch[index];
    self.cLunchTextBox.text = self.cLunch[index];
    self.dLunchTextBox.text = self.dLunch[index];
    self.fourthBlockTextBox.text = self.fourthBlock[index];
}

@end
