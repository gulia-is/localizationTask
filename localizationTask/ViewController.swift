//
//  ViewController.swift
//  localizationTask
//
//  Created by Gulia_Is on 15.04.17.
//  Copyright © 2017 iOSLab. All rights reserved.
//

import UIKit

struct Objects {
    var sectionName: String
    var title: [String]
    var description: [String]
}

class ViewController: UIViewController {
    
    var objectsArr = [Objects]()
    
    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "tableCell"
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var profilePhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier:cellIdentifier)
    objectsArr = [Objects(sectionName: NSLocalizedString("Basic info", comment: ""),
                              title:[NSLocalizedString("Date of birth", comment: ""), NSLocalizedString("Hometown", comment: "")],
                              description: [NSLocalizedString("01 January 1990", comment: ""),NSLocalizedString("London", comment: "")]),
                  Objects(sectionName: NSLocalizedString("Contact info", comment: ""),
                              title:[NSLocalizedString("Country", comment: "")],
                              description:[NSLocalizedString("Great Britain", comment: "")])]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return objectsArr.count
    }
    
    func tableView( _ tableView : UITableView,  titleForHeaderInSection section: Int)->String? {
        return objectsArr[section].sectionName
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArr[section].title.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as! CustomTableViewCell
        
        cell.firstLabel.text = objectsArr[indexPath.section].title[indexPath.row]
        cell.secondLabel.text = objectsArr[indexPath.section].description[indexPath.row]

        return cell
    }    
}
