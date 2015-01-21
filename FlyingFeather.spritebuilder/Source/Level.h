//
//  Level.h
//  FlyingFeather
//
//  Created by MAEDAHAJIME on 2015/01/16.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface Level : CCNode
{
    // 地面やバードに崩されるアイテム
    CCNode* _physicsNode;
    // 砲台
    CCNode* _launcher;
}

@end
