//
//  ViewController.m
//  DebugWithiPhone
//
//  Created by haranicle on 2014/11/20.
//  Copyright (c) 2014年 haranicle. All rights reserved.
//

#import "ViewController.h"
#import "SushiButton.h"
#import "DDASLLogCapture.h"
#import <CocoaLumberjack/CocoaLumberjack.h>
#import <LumberjackConsole/PTEDashboard.h>
#import <FLEX/FLEXManager.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet SushiButton *sushiButton;
@property (weak, nonatomic) IBOutlet SushiButton *fishButton;
@property (weak, nonatomic) IBOutlet SushiButton *beerButton;

@end

@implementation ViewController

static const int ddLogLevel = LOG_LEVEL_VERBOSE;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [[NSUserDefaults standardUserDefaults] setInteger:12345 forKey:@"MySettingsValue"];
    
    [PTEDashboard.sharedDashboard show];

    DDLogError(@"なにかおかしい。");
    DDLogInfo(@"なんとか処理を開始します。");
    DDLogVerbose(@"なぜか動く。");

    DDLogDebug(@"ボタンのタイトルに変な値入れときますね。");
    [self.fishButton setTitle:@"ほげええええええええええええええ" forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPushFlexButton:(id)sender
{
    [[FLEXManager sharedManager] showExplorer];
}

- (IBAction)onPushSushiButton:(id)sender
{
    DDLogInfo(@"%@が押下されました。", _sushiButton.titleLabel.text);
}

- (IBAction)onPushFishButton:(id)sender
{
    DDLogInfo(@"%@が押下されました。", _fishButton.titleLabel.text);
}

- (IBAction)onPushBeerButton:(id)sender
{
    DDLogInfo(@"%@が押下されました。", _beerButton.titleLabel.text);
}

@end
