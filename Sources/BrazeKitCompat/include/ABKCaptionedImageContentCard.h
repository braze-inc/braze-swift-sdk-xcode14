#import "ABKContentCard.h"
#import "BrazePreprocessor.h"

NS_ASSUME_NONNULL_BEGIN
BRZ_DEPRECATED("renamed to 'Braze.ContentCard.CaptionedImage'")
@interface ABKCaptionedImageContentCard : ABKContentCard <NSCoding>

/*
 * The URL of the card's image.
 */
@property (copy) NSString *image;

/*
 * This property is the aspect ratio of the card's image. It is meant to serve as a hint before
 * image loading completes. Note that the property may not be supplied in certain circumstances.
 */
@property float imageAspectRatio;

/*
 * The title text for the card.
 */
@property (copy) NSString *title;

/*
 * The description text for the card.
 */
@property (copy) NSString *cardDescription;

/*
 * The link text for the property url, like @"blog.appboy.com". It can be displayed on the card's
 * UI to indicate the action/direction of clicking on the card.
 */
@property (copy, nullable) NSString *domain;

@end
NS_ASSUME_NONNULL_END
