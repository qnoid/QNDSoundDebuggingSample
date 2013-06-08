//
//  QNDSubject.m
//  QNDSoundDebuggingSample
//
//  Created by Markos Charatzas on 08/06/2013.
//  Copyright (c) 2013 Markos Charatzas (@qnoid).
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
//  of the Software, and to permit persons to whom the Software is furnished to do
//  so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//


#import "QNDSubject.h"


NSString* const QND_NOTIFY_SUBJECT = @"com.qnoid.notifications.QNDSubject";

@implementation QNDSubject

+(instancetype)newSubject
{
    QNDSubject *subject = [QNDSubject new];
    [subject wasCreated];

    [[NSNotificationCenter defaultCenter] addObserver:subject
                                             selector:@selector(wasNotified)
                                                 name:QND_NOTIFY_SUBJECT
                                               object:nil];
    
return subject;
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:QND_NOTIFY_SUBJECT
                                                  object:nil];
}

-(void)wasCreated
{
    {}
}

-(void)wasNotified
{
    {}
}
@end
