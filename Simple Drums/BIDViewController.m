//
//  BIDViewController.m
//  Simple Drums
//
//  Created by Nicolai on 2013-09-24.
//  Copyright (c) 2013 Bonzai Studios. All rights reserved.
//

#import "BIDViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation BIDViewController{
    SystemSoundID hatSoundID, rideSoundID, kickSoundID, snareSoundID,
    tomSoundID, floorSoundID;
}


- (IBAction)buttonPressed:(UIButton *)sender {
    
    
    if (hatSoundID == 0) {
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"hat" withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &hatSoundID);
    }
    if (rideSoundID == 0) {
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"ride" withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &rideSoundID);
    }
    if (kickSoundID == 0) {
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"kick" withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &kickSoundID);
    }
    if (snareSoundID == 0) {
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"snare" withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &snareSoundID);
    }
    if (tomSoundID == 0) {
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"tom" withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &tomSoundID);
    }
    if (floorSoundID == 0) {
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"floor" withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &floorSoundID);
    }
    
    
    
    NSString *title = [sender titleForState:UIControlStateNormal];
    if ([title isEqualToString:@"hat"]){
            AudioServicesPlaySystemSound(hatSoundID);
    }
    if ([title isEqualToString:@"ride"]){
        AudioServicesPlaySystemSound(rideSoundID);
    }
    if ([title isEqualToString:@"kick"]){
        AudioServicesPlaySystemSound(kickSoundID);
    }
    if ([title isEqualToString:@"snare"]){
        AudioServicesPlaySystemSound(snareSoundID);
    }
    if ([title isEqualToString:@"tom"]){
        AudioServicesPlaySystemSound(tomSoundID);
    }
    if ([title isEqualToString:@"floor"]){
        AudioServicesPlaySystemSound(floorSoundID);
    }
    
}
@end
