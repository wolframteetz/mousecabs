#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <AppKit/AppKit.h>

// mousecabs - mouse coordinates and button state (c) 2016, wolfram teetz <wolframteetz@gmail.com>

void queryPointer()
{
    NSRect screenRect = [[NSScreen mainScreen] frame];
    NSPoint mouseLoc = [NSEvent mouseLocation]; //get current mouse position
    NSUInteger pressedMouseButtons = [NSEvent pressedMouseButtons];
    printf("%g\n%g\n%tu\n", roundf(mouseLoc.x), roundf(screenRect.size.height-mouseLoc.y), pressedMouseButtons);
}

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    CLLocationManager *locationManager = [[CLLocationManager alloc] init];

    queryPointer();

    [pool drain];

    return 0;
}
