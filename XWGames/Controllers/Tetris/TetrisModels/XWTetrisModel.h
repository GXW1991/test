//
//  XWTetrisModel.h
//  XWGames
//
//  Created by gengxiaowei on 16/6/24.
//  Copyright © 2016年 GXW. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    XWTetrisShape_Z = 0,
    XWTetrisShape_Yi,
    XWTetrisShape_Tian,
} XWTetrisShape;

@interface XWTetrisModel : NSObject
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, strong) UIColor *color;
@end

//z、———— 、田
@interface XWTetrisBigModel : NSObject
@property (nonatomic, strong) XWTetrisModel *model1;
@property (nonatomic, strong) XWTetrisModel *model2;
@property (nonatomic, strong) XWTetrisModel *model3;
@property (nonatomic, strong) XWTetrisModel *model4;

- (instancetype)initWithShape:(XWTetrisShape)shape;
@end
