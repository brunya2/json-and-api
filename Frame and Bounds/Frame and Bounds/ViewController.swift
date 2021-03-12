//
//  ViewController.swift
//  Frame and Bounds
//
//  Created by Brunya on 10.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    let tableView = UITableView()

   

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.backgroundColor = UIColor.systemPink

        getCat()
        
    }

    func getCat() {
        print("Hello, Cat!")
        guard let  url = URL(string: "https://api.thecatapi.com/v1/images/search") else { return }

        let session = URLSession.shared.dataTask(with: url) { (data, response, error) in

            if let error = error {
                print(error.localizedDescription)
            }
            if let something = data {
                let mystring = String(data: something, encoding: .utf8)
                do {
                    let json = try JSONDecoder().decode([CatModel].self, from: something)
                    print(json)
                }
                catch {
                    print(error)
                }
               
    
            }
        }
        session.resume()
    }
    
    
    
    @objc
    func moveTable() {
        UIView.animate(withDuration: 0.5) {
            self.tableView.frame.origin.x += 36
            
          
        }
    }
    
}


