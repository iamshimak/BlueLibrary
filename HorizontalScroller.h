//
//  HorizontalScroller.h
//  BlueLibrary
//
//  Created by Ahamed Shimak on 7/17/17.
//  Copyright © 2017 Eli Ganem. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HorizontalScrollerDelegate;

@interface HorizontalScroller : UIView
@property(weak) id <HorizontalScrollerDelegate> delegate;

- (void)reload;
@end

@protocol HorizontalScrollerDelegate <NSObject>
// methods declaration goes in here
@required
// ask the delegate how many views he wants to present inside the horizontal scroller
- (NSInteger)numberOfViewsForHorizontalScroller:(HorizontalScroller *)scroller;

// ask the delegate to return the view that should appear at <index>
- (UIView *)horizontalScroller:(HorizontalScroller *)scroller viewAtIndex:(int)index;

// inform the delegate what the view at <index> has been clicked
- (void)horizontalScroller:(HorizontalScroller *)scroller clickedViewAtIndex:(int)index;

@optional
// ask the delegate for the index of the initial view to display. this method is optional
// and defaults to 0 if it's not implemented by the delegate
- (NSInteger)initialViewIndexForHorizontalScroller:(HorizontalScroller *)scroller;
@end