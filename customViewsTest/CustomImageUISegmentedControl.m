//
//  CustomImageUISegmentedControl.m
//  customViewsTest
//
//  Created by Oriol Ferrer Mesià on 14/02/13.
//  Copyright (c) 2013 Oriol Ferrer Mesià. All rights reserved.
//

#import "CustomImageUISegmentedControl.h"

@implementation CustomImageUISegmentedControl

- (void)awakeFromNib {

	 [super awakeFromNib];
	
    [self setBackgroundImage:[UIImage imageNamed:@"SegmentedControlNormalBackground"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [self setBackgroundImage:[UIImage imageNamed:@"SegmentedControlSelectedBackground"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];

	[self setDividerImage:[UIImage imageNamed:@"SegmentedControlNormalDivider"]
	  forLeftSegmentState:UIControlStateSelected
		rightSegmentState:UIControlStateNormal
			   barMetrics:UIBarMetricsDefault];

	[self setDividerImage:[UIImage imageNamed:@"SegmentedControlNormalDivider"]
	  forLeftSegmentState:UIControlStateNormal
		rightSegmentState:UIControlStateNormal
			   barMetrics:UIBarMetricsDefault];

	[self setDividerImage:[UIImage imageNamed:@"SegmentedControlNormalDivider"]
	  forLeftSegmentState:UIControlStateNormal
		rightSegmentState:UIControlStateSelected
			   barMetrics:UIBarMetricsDefault];

	self.apportionsSegmentWidthsByContent = NO; //uneven segments!
	
	//normal segment
	float fontSize = 14;
	float colorGain = 0.9;
	NSDictionary *normalAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
									  [UIFont fontWithName:@"0Arame-Mono-Bold" size:fontSize],												UITextAttributeFont,
									  [UIColor colorWithRed:colorGain*0/255.0 green:colorGain*41/255.0 blue:colorGain*68/255.0 alpha:1],	UITextAttributeTextColor,
									  [UIColor clearColor],																					UITextAttributeTextShadowColor,
									  [NSValue valueWithUIOffset:UIOffsetMake(0, 0)],														UITextAttributeTextShadowOffset,
									  nil];
	[self setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];

	colorGain = 1;
	NSDictionary *selectedAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
										[UIFont fontWithName:@"0Arame-Mono-Bold" size:fontSize],													UITextAttributeFont,
										[UIColor colorWithRed:colorGain * 0/255.0 green:colorGain * 41/255.0 blue:colorGain * 68/255.0 alpha:1],	UITextAttributeTextColor,
										[UIColor clearColor],																						UITextAttributeTextShadowColor,
										[NSValue valueWithUIOffset:UIOffsetMake(0, 0)],																UITextAttributeTextShadowOffset,
										nil];
	[self setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];

	//text offset
	[self setContentPositionAdjustment:UIOffsetMake(0, 2)
						forSegmentType:UISegmentedControlSegmentAny
							barMetrics:UIBarMetricsDefault];

}

@end
