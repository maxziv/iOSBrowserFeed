//
//  BNRWebViewController.m
//  Nerdfeed
//
//  Created by Maxwell Zhou on 7/17/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRWebViewController.h"

@implementation BNRWebViewController

- (void)loadView
{
    UIWebView *webView = [[UIWebView alloc] init];
    
    webView.scalesPageToFit = YES;
    self.view = webView;
}

- (void) setURL:(NSURL *) URL
{
    _URL = URL;
    if(_URL)
    {
        NSURLRequest *req = [NSURLRequest requestWithURL:_URL];
        [(UIWebView *) self.view loadRequest:req];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
