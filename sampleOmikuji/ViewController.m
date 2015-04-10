//
//  ViewController.m
//  sampleOmikuji
//
//  Created by 永山 大志 on 2015/04/08.
//  Copyright (c) 2015年 永山 大志. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *_omikujilist;
    NSArray *_dolist;
    int _rNum;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alertButton:(id)sender {
    
    _omikujilist = [NSArray arrayWithObjects:@"大吉", @"中吉", @"小吉", @"吉", @"凶", nil];
    
    _dolist = [NSArray arrayWithObjects:@"サッカー", @"テニス", @"野球", @"ソフトボール", @"ラグビー", nil];
    
    _rNum = arc4random() % 5;
    
    UIAlertView     *alert = [[UIAlertView alloc] initWithTitle:@"今日の運勢？" message:_omikujilist[_rNum] delegate: self cancelButtonTitle:@"もう一度" otherButtonTitles:@"ラッキーアイテム",nil];
    
    [alert show];
}

- (void)alertView: (UIAlertView *)alertView clickedButtonAtIndex:
(NSInteger)buttonIndex {
    NSLog(@"%ld", (long)buttonIndex);
    
    if (buttonIndex == 1) {
    self.resultLabel.text = _dolist[_rNum];
    }
}
@end
