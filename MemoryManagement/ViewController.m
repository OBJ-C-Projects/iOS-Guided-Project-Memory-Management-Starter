//
//  ViewController.m
//  MemoryManagement
//
//  Created by Paul Solt on 1/29/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "Person.h"
#import "LSILog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO: Disable ARC in settings
    
    NSLog(@"Hi");
    
    //Create object to test
    NSString *name = [[NSString alloc] initWithString:@"Fritz"];
    
    NSLog(@"%@",name);
    
    //Makes the count go up by one
    [name retain];
    [name retain];
//    NSLog(@"Counter before release: %@",name.retainCount);
    //Release from memory
    [name release];
    [name release];
    
    [name release];
    name = nil; //By setting it to nil we lower the memory position to zero
    
    //This could potencially crash the app (it may still work till something else use that memory space)
    //NSLog(@"Counter after release: %@",name.retainCount);
    
    //All collection types will take ownership of memory
    NSMutableArray *colors = [[NSMutableArray alloc] init];
    
    NSLog(@"%@",colors);
    
    
    //clean up
    [colors release];
}


@end
