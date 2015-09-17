//
//  KPdataStore.h
//  PokemonIndex
//
//  Created by MacMan on 9/14/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KPdataStore : NSObject

@property (nonatomic) NSArray *aToZKPdataStore;
@property (nonatomic) NSDictionary *typeKPdataStore;

- (void)initializeData;

@end
