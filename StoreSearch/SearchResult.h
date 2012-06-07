//
//  SearchResult.h
//  StoreSearch
//
//  Created by Koala on 5/26/12.
//  Copyright (c) 2012 KNS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SearchResult : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *artistName;
@property (nonatomic, copy)NSString *artworkURL60;
@property (nonatomic, copy)NSString *artworkURL100;
@property (nonatomic, copy)NSString *storeURL;
@property (nonatomic, copy)NSString *kind;
@property (nonatomic, copy)NSString *currency;
@property (nonatomic, copy)NSDecimalNumber *price;
@property (nonatomic, copy)NSString *genre;

@end
