//
//  DogParkObject.swift
//  DogParkLocator
//
//  Created by David Gudeman on 11/12/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit
import CoreData

class DogParkObject: NSManagedObject {
    
    @NSManaged var dogParkName : String!
    @NSManaged var dogParkCounty : String!
    @NSManaged var dogParkDetails : String!
    @NSManaged var dogParkImage : String!
    @NSManaged var dogParkHours : String!
    @NSManaged var dogParkLatitude : NSNumber!
    @NSManaged var dogParkLongitude : NSNumber!
    @NSManaged var dogParkAllowsOffLeash : NSNumber!
}
