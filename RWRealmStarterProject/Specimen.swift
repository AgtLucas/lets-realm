//
//  Specimen.swift
//  RWRealmStarterProject
//
//  Created by Lucas da Silva on 6/28/15.
//  Copyright (c) 2015 Bill Kastanakis. All rights reserved.
//

import UIKit
import Realm

class Specimen: RLMObject {
    dynamic var name = ""
    dynamic var specimenDescription = ""
    dynamic var latitude: Double = 0.0
    dynamic var longitude: Double = 0.0
    dynamic var created = NSDate()
}
