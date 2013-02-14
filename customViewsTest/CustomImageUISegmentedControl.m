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

	//[segmentedCtrl setTintColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"duck.png"]]];
    [self setBackgroundImage:[UIImage imageNamed:@"SegmentedControlNormalBackground"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [self setBackgroundImage:[UIImage imageNamed:@"SegmentedControlSelectedBackground"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
	[self setBackgroundImage:[UIImage imageNamed:@"SegmentedControlSelectedBackground"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];

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

	//normal segment
	NSDictionary *normalAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
									  //[UIFont fontWithName:@"Rok" size:20.0],UITextAttributeFont,
									  //[UIColor colorWithRed:75.0/255.0 green:75.0/255.0 blue:75.0/255.0 alpha:1.0], UITextAttributeTextColor,
									  [UIColor clearColor], UITextAttributeTextShadowColor,
									  [NSValue valueWithUIOffset:UIOffsetMake(0, 1)], UITextAttributeTextShadowOffset,
									  nil];//[NSDictionary dictionaryWithObject:  [UIColor redColor]forKey:UITextAttributeTextColor];
	[self setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];

	NSDictionary *selectedAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
										//[UIFont fontWithName:@"Rok" size:20.0],UITextAttributeFont,
										//[UIColor whiteColor], UITextAttributeTextColor,
										[UIColor clearColor], UITextAttributeTextShadowColor,
										[NSValue valueWithUIOffset:UIOffsetMake(0, 1)], UITextAttributeTextShadowOffset,
										nil] ;//[NSDictionary dictionaryWithObject:  [UIColor redColor]forKey:UITextAttributeTextColor];
	[self setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];


}

@end
