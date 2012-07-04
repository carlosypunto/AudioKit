//
//  OCSAssignment.m
//  Objective-Csound
//
//  Created by Aurelius Prochazka on 6/12/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "OCSAssignment.h"

@interface OCSAssignment () {
    OCSParameter *input;
    OCSParameter *output;
}
@end

@implementation OCSAssignment
@synthesize output;  

- (id)initWithInput:(OCSParameter *)in {
    self = [super init];
    
    if (self) {
        output = [OCSParameter parameterWithString:[self opcodeName]];
        input = in;
    }
    return self; 
}

- (NSString *)stringForCSD
{
    return [NSString stringWithFormat:@"%@ = %@", output, input];
}


/// Gives the CSD string for the output parameter.  
- (NSString *)description {
    return [output parameterString];
}

@end
