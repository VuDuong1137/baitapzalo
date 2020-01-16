//
//  Screen1ViewController.swift
//  lambaitapzalo
//
//  Created by Dương chãng on 1/15/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class Screen1ViewController: UIViewController {
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "plus"), for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        return button
        
        
    }()

    let view1 : UIView = {
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = UIColor.red
        return view1
        
    }()
    let table: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        view1.addSubview(button)
        view.addSubview(table)
        detuplayout()
        chuyenman()
    }
    func detuplayout(){
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        view1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        button.topAnchor.constraint(equalTo: view1.topAnchor, constant: 40).isActive = true
        button.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: -40).isActive = true
       // button.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: 5).isActive = true
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.widthAnchor.constraint(equalToConstant: 30).isActive = true
    }
    func chuyenman(){
        button.addTarget(self, action: #selector(gotodaucong), for: .touchUpInside)
    }
    @objc func gotodaucong(){
        let gotodaucong = daucongViewController()
        let navigation = UINavigationController(rootViewController: gotodaucong)
        // chuyển toàn màn hình
        navigation.modalPresentationStyle = .fullScreen
        present(navigation, animated: true, completion: nil)
    }
}
