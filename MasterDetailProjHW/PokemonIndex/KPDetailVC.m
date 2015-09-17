//
//  KPDetailVC.m
//  PokemonIndex
//
//  Created by MacMan on 9/14/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "KPDetailVC.h"

@interface KPDetailVC()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation  KPDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = self.pokemonName;
    
    NSString *imageName = [self.pokemonName lowercaseString];
    self.imageView.image = [UIImage imageNamed:imageName];
    
    self.navigationItem.title = self.pokemonName;
}

@end








