//
//  XWTetrisModel.m
//  XWGames
//
//  Created by gengxiaowei on 16/6/24.
//  Copyright © 2016年 GXW. All rights reserved.
//

#import "XWTetrisModel.h"

@implementation XWTetrisModel

@end

@interface XWTetrisBigModel () {
    CGFloat startPoint;
    NSArray *colorArray;
}
@end
@implementation XWTetrisBigModel

- (instancetype)initWithShape:(XWTetrisShape)shape {
    self = [super init];
    if (self) {
        startPoint = XWTETRIS_COLS / 2;
        colorArray = @[ [UIColor redColor], [UIColor greenColor], [UIColor yellowColor] ];
        _model1 = [[XWTetrisModel alloc] init];
        _model2 = [[XWTetrisModel alloc] init];
        _model3 = [[XWTetrisModel alloc] init];
        _model4 = [[XWTetrisModel alloc] init];

        _model1.x = startPoint - 1;
        _model1.y = 0;
        _model1.color = colorArray[shape];

        _model2.x = startPoint;
        _model2.y = 0;
        _model2.color = colorArray[shape];

        _model3.color = colorArray[shape];
        _model4.color = colorArray[shape];
        [self drawShape:shape];
    }
    return self;
}

- (void)drawShape:(XWTetrisShape)shape {
    switch (shape) {
        case XWTetrisShape_Tian: {
            _model3.x = startPoint - 1;
            _model3.y = 1;

            _model4.x = startPoint;
            _model4.y = 1;
            break;
        }
        case XWTetrisShape_Yi: {
            _model3.x = startPoint - 2;
            _model3.y = 0;

            _model4.x = startPoint + 1;
            _model4.y = 0;
            ;
            break;
        }
        case XWTetrisShape_Z: {
            _model3.x = startPoint + 1;
            _model3.y = 1;

            _model4.x = startPoint;
            _model4.y = 1;
            break;
        }
    }
}

@end