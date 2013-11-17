//
//  WalksModel.m
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import "WalksModel.h"
#import "Walk.h"
#import "AFNetworking.h"

@implementation WalksModel
-(id)initFromServer:(NSString *)serverURL
{
    self = [super init];
    if( self )
    {
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        
        [manager GET:serverURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {

            // initialize an array of walks
            NSMutableArray *walks = [[NSMutableArray alloc] init];
            for(NSDictionary *walkJSON in responseObject)
            {
                Walk *aWalk = [[Walk alloc] initWIthJSON:walkJSON];
                [walks addObject:aWalk];
            }
            self.walksArray = walks;
            
            // push a global notification
            [[NSNotificationCenter defaultCenter] postNotificationName:@"initFromServerFinishedLoading" object:nil];

        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
        }];
    }
    return self;
}

@end
