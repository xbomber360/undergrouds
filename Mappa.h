//
//  Mappa.h
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 22/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Categoria;

@interface Mappa : NSManagedObject

@property (nonatomic, retain) NSString * descrizione;
@property (nonatomic, retain) NSString * nome;
@property (nonatomic, retain) NSString * orario;
@property (nonatomic, retain) Categoria *categoria;
@property (nonatomic, retain) NSManagedObject *stato;

@end
