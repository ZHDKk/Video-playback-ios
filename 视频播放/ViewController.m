//
//  ViewController.m
//  视频播放
//
//  Created by zh dk on 2017/8/31.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //创建字符串，保存视频网络地址
    NSString *strUrl = @"http://v.cctv.com/flash/mp4video6/TMS/2011/01/05/cf752b1c12ce452b3040cab2f90bc265_h264818000nero_aac32-1.mp4";
    //将字符串地址转换为网址连接
    NSURL *url = [NSURL URLWithString:strUrl];
    
    //方法一：
//    //创建一个视图播放对象
//    _playerCtl = [[MPMoviePlayerController alloc]initWithContentURL:url];
//    _playerCtl.view.frame = self.view.bounds;
//    
//    //视频下载后的处理编解码
//    [_playerCtl prepareToPlay];
//    
//    [self.view addSubview:_playerCtl.view];
    
    //方法二：
    _playView = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
    _playView.view.frame = self.view.bounds;
    [self.view addSubview:_playView.view];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
