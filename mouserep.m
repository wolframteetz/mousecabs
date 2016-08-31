#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <AppKit/AppKit.h>

// mouserep - mouse repeat - repeat clicks on screen coordinates using cliclick (c) 2016, wolfram teetz <wolframteetz@gmail.com>

void queryPointer()
{
    // ignore first click
    while ([NSEvent pressedMouseButtons] == 1) usleep(10000);
    while ([NSEvent pressedMouseButtons] == 0) usleep(10000);
    // log all further clicks
    while (true) {
    while ([NSEvent pressedMouseButtons] == 1) usleep(10000);
    while ([NSEvent pressedMouseButtons] == 0) usleep(10000);
    NSRect screenRect = [[NSScreen mainScreen] frame];
    NSPoint mouseLoc = [NSEvent mouseLocation]; //get current mouse position
    NSUInteger pressedMouseButtons = [NSEvent pressedMouseButtons];
    printf("    do shell script \"/usr/local/bin/cliclick c:%g,%g\"\n    delay 8\n", roundf(mouseLoc.x), roundf(screenRect.size.height-mouseLoc.y));
    }
}

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    CLLocationManager *locationManager = [[CLLocationManager alloc] init];

    queryPointer();

    [pool drain];

    return 0;
}
