//
//  ViewController.h
//  视频播放
//
//  Created by zh dk on 2017/8/31.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController : UIViewController

{
    //定义一个播放器对象
    MPMoviePlayerController *_playerCtl;
    
    
    //定义一个播放视图控制器
    MPMoviePlayerViewController *_playView;
}

@end

