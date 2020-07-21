//
//  Contact.swift
//  ContactsApp
//
//  Created by Pratheek S Sharma on 17/07/20.
//  Copyright © 2020 Pratheek S Sharma. All rights reserved.
//

import UIKit

class Contact {
    var name: String
    var designation: String?
    var profilePicture: UIImage?
    
    init?(name:String, designation:String?, profilePicture:UIImage? ) {
        self.name = name
        self.designation = designation
        self.profilePicture = profilePicture
    }
    
}
