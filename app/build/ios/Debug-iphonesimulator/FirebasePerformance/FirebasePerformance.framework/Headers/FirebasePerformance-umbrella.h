#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "FirebasePerformance.h"
#import "FIRHTTPMetric.h"
#import "FIRPerformance.h"
#import "FIRPerformanceAttributable.h"
#import "FIRTrace.h"

FOUNDATION_EXPORT double FirebasePerformanceVersionNumber;
FOUNDATION_EXPORT const unsigned char FirebasePerformanceVersionString[];

