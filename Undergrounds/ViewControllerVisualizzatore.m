//
//  ViewControllerVisualizzatore.m
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 24/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import "ViewControllerVisualizzatore.h"

@interface ViewControllerVisualizzatore ()

@end

@implementation ViewControllerVisualizzatore

@synthesize mappaDaVisualizzare;

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [webView loadData:mappaDaVisualizzare MIMEType:@"application/pdf" textEncodingName:@"utf-8" baseURL:nil];
    //[webView setBackgroundColor:[UIColor clearColor]];
    webView.scalesPageToFit= true;
   // [webView stringByEvaluatingJavaScriptFromString:@"document.body.style.zoom = 50.0;"];
    webView.contentMode = UIViewContentModeScaleAspectFit;
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame: self.view.frame];
    scrollView.contentMode = UIViewContentModeScaleAspectFit;
    scrollView.autoresizingMask = ( UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    scrollView.maximumZoomScale = 2.0;
    scrollView.minimumZoomScale = 1;
    scrollView.clipsToBounds = YES;
    //scrollView.delegate = self;
    [scrollView addSubview:webView];
    //int scroll=500; //Pixels to scroll
//    NSString* s=[[NSString alloc] initWithFormat:@"window.scrollTo(0, %i)",scroll];
//    [webView stringByEvaluatingJavaScriptFromString:s];
//
    [self.view addSubview:scrollView];

    [scrollView setZoomScale:5.0];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
