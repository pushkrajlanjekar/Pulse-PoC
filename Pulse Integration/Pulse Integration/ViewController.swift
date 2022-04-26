//
//  ViewController.swift
//  Pulse Integration
//
//  Created by Pushkraj on 25/04/22.
//

import UIKit
import PulseUI
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getUsers()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Network",
                                                            style: .plain,
                                                            target: self, action: #selector(addTapped))
    }
    
    @objc func addTapped() {
        let vcPulseInspector = UIHostingController(rootView: PulseUI.MainView())
        navigationController?.pushViewController(vcPulseInspector, animated: true)
    }
    
    func getUsers() {
        var request = URLRequest(url: URL(string: "https://gorest.co.in/public/v2/users")!)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request).resume()
    }
}

