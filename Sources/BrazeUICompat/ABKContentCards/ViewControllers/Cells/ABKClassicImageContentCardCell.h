#import "ABKClassicContentCardCell.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

@class ABKClassicContentCard;

/*!
 * The ABKClassicContentCard has an optional image property.
 * Use this view controller for a classic card with an image and ABKClassicContentCardCell for a
 * classic card without an image.
 */
@interface ABKClassicImageContentCardCell : ABKClassicContentCardCell

@property (strong, nonatomic) IBOutlet UIImageView *classicImageView;

- (void)applyCard:(ABKClassicContentCard *)classicCard;

@end

#pragma clang diagnostic pop
