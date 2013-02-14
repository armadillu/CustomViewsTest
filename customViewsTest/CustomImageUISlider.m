//
//  CustomImageUISlider.m
//  customViewsTest
//
//  Created by Oriol Ferrer Mesià on 14/02/13.
//  Copyright (c) 2013 Oriol Ferrer Mesià. All rights reserved.
//

#import "CustomImageUISlider.h"

@implementation CustomImageUISlider


- (void)awakeFromNib {
    [super awakeFromNib];
    UIImage *sliderLeftTrackImage = [[UIImage imageNamed: @"SliderMin.png"] stretchableImageWithLeftCapWidth: 33 topCapHeight: 0];
	[self setMinimumTrackImage: sliderLeftTrackImage forState: UIControlStateNormal];
	[self setMaximumTrackImage: sliderLeftTrackImage forState: UIControlStateNormal];
	[self setThumbImage:[UIImage imageNamed:@"SliderKnob.png"] forState: UIControlStateNormal];
	[self setThumbImage:[UIImage imageNamed:@"SliderKnob.png"] forState: UIControlStateHighlighted];
	[self setThumbImage:[UIImage imageNamed:@"SliderKnob.png"] forState: UIControlStateSelected];
}


@end
