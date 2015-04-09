//
//  DragonSlayer.swift
//  dragonfashion
//
//  Created by Matt Larkin on 4/9/15.
//  Copyright (c) 2015 Dave Krawczyk. All rights reserved.
//

import Foundation

@objc class DragonSlayer: NSObject {

var name = String()
var strength = Int()
var slainDragons = [Dragon]()

    func slayDragon(dragon: Dragon) {
        slainDragons.append(dragon)
    }


}
