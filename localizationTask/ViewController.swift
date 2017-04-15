//
//  ViewController.swift
//  localizationTask
//
//  Created by Gulia_Is on 15.04.17.
//  Copyright © 2017 iOSLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "tableCell"
    
    @IBOutlet weak var fullNameLabel: UILabel!
    let fullName = NSLocalizedString("Gulia Iskandarova",comment: "Гулия Искандарова")
    
    @IBOutlet weak var profilePhoto: UIImageView!
    
    let label1 = [[
    NSLocalizedString("Date of birth",comment: "Дата рождения"),
    NSLocalizedString("Hometown",comment: "Родной город"),
    NSLocalizedString("Languages",comment: "Языки")],[
    NSLocalizedString("Country",comment: "Страна"),
    NSLocalizedString("Skype",comment: "Skype")]]
    
    let label2 = [[
    NSLocalizedString("01 January 1990",comment: "01 Январь 1990"),
    NSLocalizedString("London",comment: "Лондон"),
    NSLocalizedString("English, Chikashshanompa, Русский",comment: "English, Chikashshanompa, Русский")],[
    NSLocalizedString("Great Britain",comment: "Великобритания"),
    NSLocalizedString("itishumster",comment: "itishumster")]]
    
    let sectionNameArr = [
    NSLocalizedString("Basic info",comment: "Основные"),
    NSLocalizedString("Contact info",comment: "Контакты")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    fullNameLabel.text = fullName
    tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier:cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.sectionNameArr.count
    }
    
    func tableView( _ tableView : UITableView,  titleForHeaderInSection section: Int)->String? {
        return self.sectionNameArr[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.label1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as! CustomTableViewCell
        
        cell.firstLabel.text = label1[indexPath.section][indexPath.row]
        cell.secondLabel.text = label2[indexPath.section][indexPath.row]
        
        return cell
    }
    
}

