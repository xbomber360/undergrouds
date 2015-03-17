//
//  Map.h
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 16/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Map : NSObject{

    NSString *citta;
    NSString *stato;
    NSString *orario;
    NSString *descrizione;
    

}

@property (readwrite) NSString *citta;
@property (readwrite) NSString *stato;
@property (readwrite) NSString *orario;
@property (readwrite) NSString *descrizione;

-(id) initMap: (NSString*)citta : (NSString*) stato : (NSString*) orario :  (NSString*) descrizione;


@end
