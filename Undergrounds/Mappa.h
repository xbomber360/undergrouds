//
//  Mappa.h
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 24/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Categoria, Stato;

@interface Mappa : NSManagedObject

@property (nonatomic, retain) NSString * descrizione;
@property (nonatomic, retain) NSData * file;
@property (nonatomic, retain) NSString * nome;
@property (nonatomic, retain) NSString * orario;
@property (nonatomic, retain) Categoria *categoria;
@property (nonatomic, retain) Stato *stato;

@end
