//
//  ViewController.swift
//  typesetting
//
//  Created by Lisa on 19/08/2019.
//  Copyright © 2019 Lisa. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var allTelephones: [Telephone] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let testTelephon = Telephone()
        testTelephon.nameLabel = "Александрова Александра Александровна"
        testTelephon.phoneLabel = "IPhone 7 Grey 12 GB"
        testTelephon.numbertask = "# 58120087"
        testTelephon.phoneNumberLabel = "8 910 123 45 67"
        testTelephon.textViewText = "Не включается, при проверке выявлены неявные проблемы обработки технического потока данных. Камера работает некорректно."
        testTelephon.status = "Устранение неполадок"
        testTelephon.photoPhone = "IP8G2020R_1"
        allTelephones.append(testTelephon)
        
        let testTelephonOne = Telephone()
        testTelephonOne.nameLabel = "Александрова Александра Александровна"
        testTelephonOne.phoneLabel = "IPhone 8 Grey 64 GB"
        testTelephonOne.numbertask = "# 58120088"
        testTelephonOne.phoneNumberLabel = "8 910 123 45 67"
        testTelephonOne.textViewText = "Не включается, при проверке выявлены неявные проблемы обработки технического потока данных. Камера работает некорректно."
        testTelephonOne.status = "Ремонт"
        testTelephonOne.photoPhone = "5a8c28452756ba53b0402a64"
        allTelephones.append(testTelephonOne)
        
        let testTelephonTwo = Telephone()
        testTelephonTwo.nameLabel = "Александрова Александра Александровна"
        testTelephonTwo.phoneLabel = "IPhone XR Grey 128 GB"
        testTelephonTwo.numbertask = "# 58120089"
        testTelephonTwo.phoneNumberLabel = "8 910 123 45 67"
        testTelephonTwo.textViewText = "Не включается, при проверке выявлены неявные проблемы обработки технического потока данных. Камера работает некорректно."
        testTelephonTwo.status = "Диагностика"
        testTelephonTwo.photoPhone = "10177cf010ffe80b7078b99256bf2776"
        allTelephones.append(testTelephonTwo)
        
        
    }
}
extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return allTelephones.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        let tel = allTelephones[indexPath.row]
        
        cell.nameLabel.text! = tel.nameLabel
        cell.phoneLabel.text! = tel.phoneLabel
        cell.numbertask.text! = tel.numbertask
        cell.phoneNumberLabel.text! = tel.phoneNumberLabel
        cell.textViewText.text! = tel.textViewText
        cell.status.text! = tel.status
        cell.photoPhone.image! =  UIImage(named: tel.photoPhone)!
        
        
        
        return cell
    }
    

}
