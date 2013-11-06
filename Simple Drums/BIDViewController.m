//
//  BIDViewController.m
//  Simple Drums
//
//  Copyright 2013 Vincent Berthiaume
// 
//  This file is part of Simple Drums.
// 
//  Simple Drums is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
// 
//  Simple Drums is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
// 
//  You should have received a copy of the GNU General Public License
//  along with Simple Drums.  If not, see <http://www.gnu.org/licenses/>.

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
