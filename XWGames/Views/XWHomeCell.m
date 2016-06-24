//
//  XWHomeCell.m
//  XWGames
//
//  Created by gengxiaowei on 16/6/21.
//  Copyright © 2016年 GXW. All rights reserved.
//

#import "XWHomeCell.h"

@interface XWHomeCell ()
@property (nonatomic, strong) UIImageView *imgview;
@property (nonatomic, strong) UILabel *label;
@end

@implementation XWHomeCell

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
    }
    return _label;
}

- (UIImageView *)imgview {
    if (!_imgview) {
        _imgview = [[UIImageView alloc] init];
    }
    return _imgview;
}

- (void)setIconImage:(UIImage *)iconImage {
    _iconImage = iconImage;
    self.imgview.image = iconImage;
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.label.text = title;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.imgview];
        [self.contentView addSubview:self.label];

        WEAKSELF;
        [self.imgview mas_makeConstraints:^(MASConstraintMaker *make) {
            STRONGSELF;
            make.top.bottom.equalTo(strongSelf.contentView);
            make.left.equalTo(strongSelf.contentView).offset(10);
            make.width.equalTo(@40);
        }];

        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            STRONGSELF;
            make.top.bottom.equalTo(strongSelf.imgview);
            make.left.equalTo(strongSelf.imgview.mas_right).offset(10);
            make.right.equalTo(strongSelf.contentView).offset(-10);
        }];
    }
    return self;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
