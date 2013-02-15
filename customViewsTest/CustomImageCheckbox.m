//
//  CustomImageCheckbox.m
//  customViewsTest
//
//  Created by Oriol Ferrer Mesià on 15/02/13.
//  Copyright (c) 2013 Oriol Ferrer Mesià. All rights reserved.
//

#import "CustomImageCheckbox.h"

@implementation CustomImageCheckbox

- (void)awakeFromNib {

    [super awakeFromNib];

	[self setImage:[UIImage imageNamed:@"checkBoxOff.png"]
						forState:UIControlStateNormal];
	[self setImage:[UIImage imageNamed:@"checkBoxOn.png"]
						forState:UIControlStateSelected];

	self.adjustsImageWhenHighlighted = FALSE;

	[self addTarget:self action:@selector(toggle:) forControlEvents:UIControlEventTouchUpInside];

	//debug
	//[self setBackgroundColor:[UIColor redColor]];

}

- (IBAction)toggle:(id)sender{
	//NSLog(@"toggle %@", sender);
    self.selected = !self.selected;
}


@end
