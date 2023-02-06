//
//  ViewController.swift
//  WorkingProtocol
//
//  Created by Kaue Ludovico on 06/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Próxima Tela", for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.textColor = .white
        button.frame = CGRect(x: 85, y: 300, width: 200, height: 50)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(navigateToSecond), for: .touchUpInside)
    }
    
    @objc func navigateToSecond() {
        let secondViewController = SecondViewController()
        secondViewController.delegate = self
        self.navigationController?.present(secondViewController, animated: true)
    }
}

extension ViewController: SendDataDelegate {
    func sendData(data: String) {
        print(data, ">>>>>>>>>>>>>>>>>")
    }
}

