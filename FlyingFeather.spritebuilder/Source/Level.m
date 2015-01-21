//
//  Level.m
//  FlyingFeather
//
//  Created by MAEDAHAJIME on 2015/01/16.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "Level.h"

@implementation Level

// 砲台がトリガーアクション
-(void)launchBird:(id)sender
{
    NSLog(@"砲台アクション");
    // Calulate the rotation in radians
    // ラジアンで回転をCalulate
    float rotationRadians = CC_DEGREES_TO_RADIANS(_launcher.rotation);
    
    // Vector for the rotation
    // 回転のためのベクトル
    CGPoint directionVector = ccp(sinf(rotationRadians), cosf(rotationRadians));
    CGPoint ballOffset = ccpMult(directionVector, 50);
    
    // Load a ball and set its initial position
    // ボールをロードし、その初期位置を設定する
    CCNode* ball = [CCBReader load:@"Bird"];
    ball.position = ccpAdd(_launcher.position, ballOffset);
    
    // Add the ball to physics node
    // 物理ノードにボールを追加します。
    [_physicsNode addChild:ball];
    
    // Make an impulse and apply it
    // 衝動を作成し、それを適用
    CGPoint force = ccpMult(directionVector, 50000);
    [ball.physicsBody applyForce:force];
}

@end
