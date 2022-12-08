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

#import "heap-inl.h"
#import "idna.h"
#import "queue.h"
#import "strscpy.h"
#import "uv-common.h"
#import "unix/atomic-ops.h"
#import "unix/internal.h"
#import "unix/spinlock.h"
#import "uv.h"
#import "uv/errno.h"
#import "uv/threadpool.h"
#import "uv/version.h"
#import "uv/tree.h"
#import "uv/unix.h"
#import "uv/darwin.h"

FOUNDATION_EXPORT double uvVersionNumber;
FOUNDATION_EXPORT const unsigned char uvVersionString[];

