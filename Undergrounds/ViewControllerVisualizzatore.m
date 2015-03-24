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

    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(10, 10, 400, 800)];
    [webView loadData:mappaDaVisualizzare MIMEType:@"application/pdf" textEncodingName:@"utf-8" baseURL:nil];
    [self.view addSubview:webView];

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
