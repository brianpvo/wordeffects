//
//  main.m
//  WordEffects
//
//  Created by Brian Vo on 2018-04-09.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (1) {
            // 255 unit long array of characters
            char inputNumber[255];
            char inputChars[255];
            
            printf("Input a number from 1-6\n 1. Uppercase\n 2. Lowercase\n 3. Numberize\n 4. Canadianize\n 5. Respond\n 6. De-Space-It\n");
            fgets(inputNumber, 255, stdin);
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSString *inputChoice = [NSString stringWithUTF8String:inputNumber];
            
            switch ([inputChoice integerValue]) {
                case 1:
                    NSLog(@"Input was: %@", [inputString uppercaseString]);
                    break;
                case 2:
                    NSLog(@"Input was: %@", [inputString lowercaseString]);
                    break;
                case 3:
                    if ([inputString intValue] == 0) {
                        NSLog(@"Input was unsuccessful, please try again.");
                    }
                    else {
                        NSLog(@"Input was: %d", [inputString intValue]);
                    }
                    break;
                case 4:
                    NSLog(@"Input was: %@", [inputString stringByAppendingString:@", eh"]);
                    break;
                case 5:
                    if ([inputString containsString:@"?"]) {
                        NSLog(@"I don't know.");
                    }
                    if ([inputString containsString:@"!"]) {
                        NSLog(@"Whoa, calm down!");
                    }
                    break;
                case 6:
                    NSLog(@"Input was: %@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
                default:
                    NSLog(@"Stop! I only accept numbers 1-6");
                    break;
            }
        }
    }
    return 0;
}
