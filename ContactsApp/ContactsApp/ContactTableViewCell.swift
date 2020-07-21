//
//  ContactTableViewCell.swift
//  ContactsApp
//
//  Created by Pratheek S Sharma on 17/07/20.
//  Copyright © 2020 Pratheek S Sharma. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // name being added to the view along with the required autoLayout
        addSubview(nameLabel)
        nameConfiguration()
        
        // designation begin added to the view along with the required autoLayout
        addSubview(desiganationLabel)
        designationConfiguration()
        
        // image to be added to the view along with the required autoLayout
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var nameLabel = { () -> UILabel in
        let name = UILabel()
        return name
    }()
    
    func nameConfiguration() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameLabel.font = .boldSystemFont(ofSize: 14)
    }
    
    var desiganationLabel = { () -> UILabel in
        let designation = UILabel()
        return designation
    }()
    
    func designationConfiguration() {
        
        desiganationLabel.numberOfLines = 0
        desiganationLabel.adjustsFontForContentSizeCategory = true
        
        desiganationLabel.translatesAutoresizingMaskIntoConstraints = false
        desiganationLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        desiganationLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor,constant: 20).isActive = true
        desiganationLabel.font = .systemFont(ofSize: 10)
    }
    
    

   func set(contact: Contact){
    nameLabel.text = contact.name
    desiganationLabel.text = contact.designation
      
   }
}
