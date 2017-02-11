//
//  ViewController.m
//  播放音效
//
//  Created by 上海均衡 on 2016/10/20.
//  Copyright © 2016年 上海均衡. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface ViewController ()
@property(assign,nonatomic) SystemSoundID soundID;
@end

@implementation ViewController
-(SystemSoundID)soundID{
    if (_soundID==0) {
        
        //生成soundID
        CFURLRef url=(__bridge CFURLRef)[[NSBundle mainBundle] URLForResource:@"bugai.mp3" withExtension:nil];
        AudioServicesCreateSystemSoundID(url, &_soundID);
    }
    return _soundID;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    AudioServicesPlaySystemSound(soundID);
    AudioServicesPlayAlertSound(self.soundID);
}

@end
