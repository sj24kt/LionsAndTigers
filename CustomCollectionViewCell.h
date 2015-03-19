//
//  CustomCollectionViewCell.h
//  LionsAndTigers
//
//  Created by Sherrie Jones on 3/18/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCollectionViewCell : UICollectionViewCell

@property(nonatomic, weak) IBOutlet UICollectionView *collectionView;
@property NSDictionary *searchResults;
@property NSArray *searches;

@end
