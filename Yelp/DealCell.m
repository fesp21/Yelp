//
//  DealCell.m
//  Yelp
//
//  Created by Shrikar Archak on 2/11/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

#import "DealCell.h"

@interface DealCell()
@property (weak, nonatomic) IBOutlet UISwitch *toggleSwitch;
@end

@implementation DealCell

- (void)awakeFromNib {
    // Initialization code
    [self.toggleSwitch setOnTintColor:[UIColor colorWithRed:181.0/255 green:10.0/255 blue:4.0/255 alpha:1]];
//    [self.toggleSwitch setOnImage:[UIImage imageNamed:@"yelp"]];
//    [self.toggleSwitch setThumbTintColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"yelp"]]];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)switchValueChanged:(id)sender {
    [self.delegate dealCell:self didChangeValue:self.toggleSwitch.on];
}

-(void) setOn:(BOOL)on {
    [self setOn:on animated:NO];
    self.toggleSwitch.on = on;
}
-(void) setOn:(BOOL)on animated:(BOOL)animated {
    [self.toggleSwitch setOn:on animated:animated];
}


@end
