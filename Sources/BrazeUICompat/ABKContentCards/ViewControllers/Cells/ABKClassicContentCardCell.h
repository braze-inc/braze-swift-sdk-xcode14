#import "ABKBaseContentCardCell.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

@class ABKClassicContentCard;

@interface ABKClassicContentCardCell : ABKBaseContentCardCell

@property (class, nonatomic) UIColor *titleLabelColor;
@property (class, nonatomic) UIColor *descriptionLabelColor;
@property (class, nonatomic) UIColor *linkLabelColor;

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (strong, nonatomic) IBOutlet UILabel *linkLabel;

@property (strong, nonatomic) NSArray *descriptionConstraints;
@property (strong, nonatomic) NSArray *linkConstraints;

@property (nonatomic, assign) CGFloat padding;

- (void)applyCard:(ABKClassicContentCard *)classicCard;

@end

#pragma clang diagnostic pop
