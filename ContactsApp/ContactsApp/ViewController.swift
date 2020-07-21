//
//  ViewController.swift
//  ContactsApp
//
//  Created by Pratheek S Sharma on 17/07/20.
//  Copyright © 2020 Pratheek S Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    let contact = ["Pratheek","Praveen","Ramanan","Sathvik","Seetha","John","Srivats","Subramanian","Indresh","Sriram","Shiva Reddy"]
//
    var contacts: [Contact?] = []
    var tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contacts = fetchData()
        configureTable()
        configureCell()
    }

    
    
    func configureTable() {
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        tableView.rowHeight = 50
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }

    func configureCell(){
        tableView.register(ContactTableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
}

extension ViewController: UITableViewDataSource,UITableViewDelegate,UINavigationControllerDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! ContactTableViewCell
        let contact = contacts[indexPath.row]!
        cell.set(contact:contact)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = .gray
        return label
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailedVC = detailedViewController()
        detailedVC.nameLabel.text = contacts[indexPath.row]?.name
        detailedVC.designationLabel.text = contacts[indexPath.row]?.designation
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let detailedVC = storyboard.instantiateViewController(identifier: "detailedVCId") as? detailedViewController ?? UIViewController()
        tableView.deselectRow(at: indexPath, animated: true)
//        print(navigationController)
        navigationController?.pushViewController(detailedVC, animated: true)
    }
    
}

extension ViewController {
    
    func fetchData() -> [Contact?] {
    
        let contact1 = Contact(name: "Pratheek", designation: "J Dev", profilePicture: nil)
        let contact2 = Contact(name: "Subramanian", designation: "J Dev", profilePicture: nil)
        let contact3 = Contact(name: "Indresh", designation: "J Dev", profilePicture: nil)
        let contact4 = Contact(name: "Shiva", designation: "J Dev", profilePicture: nil)
        let contact5 = Contact(name: "Sathvik", designation: "J Dev", profilePicture: nil)
        let contact6 = Contact(name: "Blesson", designation: "J Dev", profilePicture: nil)
        let contact7 = Contact(name: "Ramnan", designation: "J Dev", profilePicture: nil)
        let contact8 = Contact(name: "Srivats", designation: "J Dev", profilePicture: nil)
        let contact9 = Contact(name: "John", designation: "J Dev", profilePicture: nil)
        let contact10 = Contact(name: "Seetharaman", designation: "J Dev", profilePicture: nil)
        
        return [contact1,contact2,contact3,contact4,contact5,contact6,contact7,contact8,contact9,contact10]
    }
    
}

