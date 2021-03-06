//
//	ReaderContentTile.m
//	Reader v2.0.0
//
//	Created by Julius Oklamcak on 2011-07-01.
//	Copyright © 2011 Julius Oklamcak. All rights reserved.
//
//	This work is being made available under a Creative Commons Attribution license:
//		«http://creativecommons.org/licenses/by/3.0/»
//	You are free to use this work and any derivatives of this work in personal and/or
//	commercial products and projects as long as the above copyright is maintained and
//	the original author is attributed.
//

#import "ReaderConstants.h"
#import "ReaderContentTile.h"

@implementation ReaderContentTile

#pragma mark Constants

#define LEVELS_OF_DETAIL 1
#define LEVELS_OF_DETAIL_BIAS 3

#pragma mark Properties

//@synthesize ;

#pragma mark ReaderContentTile class methods

+ (CFTimeInterval)fadeDuration
{
#ifdef DEBUGX
	NSLog(@"%s", __FUNCTION__);
#endif

	return 0.25; // Set to 0.0 to disable fade
}

#pragma mark ReaderContentTile instance methods

- (id)init
{
#ifdef DEBUGX
	NSLog(@"%s", __FUNCTION__);
#endif

	if ((self = [super init]))
	{
		self.levelsOfDetail = LEVELS_OF_DETAIL;

		self.levelsOfDetailBias = LEVELS_OF_DETAIL_BIAS;

        self.tileSize = CGSizeMake(1724.0f, 1424.0f);
	}

	return self;
}

- (void)dealloc
{
#ifdef DEBUGX
	NSLog(@"%s", __FUNCTION__);
#endif

	[super dealloc];
}

@end
