//
//  detailedViewController.swift
//  ContactsApp
//
//  Created by Pratheek S Sharma on 20/07/20.
//  Copyright © 2020 Pratheek S Sharma. All rights reserved.
//

import UIKit

class detailedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(nameLabel)
        configureNameLabel()
        view.addSubview(designationLabel)
        configureDesignationLabel()
        // Do any additional setup after loading the view.
    }
    
    let nameLabel = { () -> UILabel in
        let name = UILabel()
        return name
    }()

    func configureNameLabel() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        nameLabel.font = .boldSystemFont(ofSize: 14)

    }
    
    let designationLabel = { () -> UILabel in
        let designation = UILabel()
        return designation
    }()
     
    func configureDesignationLabel() {
        designationLabel.translatesAutoresizingMaskIntoConstraints = true
        designationLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        designationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        designationLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        designationLabel.font = .boldSystemFont(ofSize: 14)
    }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
