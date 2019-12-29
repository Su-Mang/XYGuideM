//
//  MangerLoginView.h
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MangerLoginView : UIView
@property (nonatomic,strong) UITextField * accountTextField;
@property (nonatomic,strong) UITextField * passwordTextField;
@property (nonatomic,strong) UIButton * loginButton;
@property (nonatomic,strong) UIButton * cancelButton;
@end

NS_ASSUME_NONNULL_END
