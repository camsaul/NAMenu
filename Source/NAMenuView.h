//
//  NAMenuView.h
//
//  Created by Cameron Saul on 02/20/2012.
//  Copyright 2012 Cameron Saul. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "NAMenuItem.h"

@class NAMenuView;
@protocol NAMenuViewDelegate <NSObject>
- (NSUInteger)menuViewNumberOfItems:(NAMenuView *)menuView;
- (NAMenuItem *)menuView:(NAMenuView *)menuView itemForIndex:(NSUInteger)index;
- (void)menuView:(NAMenuView *)menuView didSelectItemAtIndex:(NSUInteger)index;
@end

@interface NAMenuView : UIScrollView

@property (nonatomic, assign) id<NAMenuViewDelegate>menuDelegate;

/**
 * You can use these properties if you would like a different number of columns or
 * different-sized menu items.
 */
@property (nonatomic) NSUInteger columnCountPortrait; // default is 3
@property (nonatomic) NSUInteger columnCountLandscape; // default is 4
@property (nonatomic) CGSize itemSize; // default is 100x100.

@end
