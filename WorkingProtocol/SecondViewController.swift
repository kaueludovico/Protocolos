//
//  File.swift
//  WorkingProtocol
//
//  Created by Kaue Ludovico on 06/02/23.
//

import UIKit

protocol SendDataDelegate {
    func sendData(data: String)
}


class SecondViewController: UIViewController {
    
    var delegate: SendDataDelegate?
    
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Volta Tela", for: .normal)
        button.backgroundColor = .red
        button.titleLabel?.textColor = .white
        button.frame = CGRect(x: 85, y: 300, width: 200, height: 50)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(dismissViewController), for: .touchUpInside)
    }
    
    @objc func dismissViewController() {
        
        delegate?.sendData(data: "FUNCIONAAAAAAAAAAAAAA")
        dismiss(animated: true)
    }
}
