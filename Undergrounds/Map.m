//
//  Map.m
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 16/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import "Map.h"

@implementation Map
    
-(id) initMap: (NSString*)citta : (NSString*) stato : (NSString*) orario :  (NSString*) descrizione{
    if (self = [super init]) {
        self.citta=citta;
        self.stato=stato;
        self.orario=orario;
        self.descrizione=descrizione;
        
    }
        return self;

}


    
    


@end
