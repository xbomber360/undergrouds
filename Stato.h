//
//  Stato.h
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 22/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Mappa;

@interface Stato : NSManagedObject

@property (nonatomic, retain) NSString * nome;
@property (nonatomic, retain) NSSet *listaCitta;
@end

@interface Stato (CoreDataGeneratedAccessors)

- (void)addListaCittaObject:(Mappa *)value;
- (void)removeListaCittaObject:(Mappa *)value;
- (void)addListaCitta:(NSSet *)values;
- (void)removeListaCitta:(NSSet *)values;

@end
