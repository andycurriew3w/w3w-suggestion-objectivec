//
//  W3wTextField.h
//  W3wSuggestionField
//
//  Created by Lshiva on 25/08/2019.
//  Copyright © 2019 what3words. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface W3wTextField : UITextField

@property(nonatomic) bool isSearchEnable;

-(void)setAPIKey:(NSString *)apiKey;

@end

@interface SuggestionTableViewCell : UITableViewCell
    @property(nonatomic, strong) IBOutlet UIView *containerView;
    @property(nonatomic, strong) IBOutlet UILabel *three_word_address;
    @property(nonatomic, strong) IBOutlet UILabel *nearest_place;
    @property(nonatomic, strong) IBOutlet UIImageView *country_flag;

@end
