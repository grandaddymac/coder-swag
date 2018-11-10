//
//  Category.swift
//  coder-swag
//
//  Created by gdm on 11/10/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import Foundation

struct Category {
    
    //these can only be set from this struct but can be accessed from outside it
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        //self refers to this struct. title & image will be set to title in init
        self.title = title
        self.imageName = imageName
    }
}
