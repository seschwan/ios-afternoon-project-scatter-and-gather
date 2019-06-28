//
//  ViewController.swift
//  ScatterAndGather
//
//  Created by Seschwan on 6/26/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    
    var isScattered = false
    
    var letterL: UILabel!
    var letterA: UILabel!
    var letterM: UILabel!
    var letterB: UILabel!
    var letterD: UILabel!
    var letterA2: UILabel!
    
    
    // Outlets
    
    @IBOutlet weak var lambdaLogo: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLabels()
        // Do any additional setup after loading the view.
    }


    
    // MARK: - Actions
    
    @IBAction func toggleBtnPressed(_ sender: UIBarButtonItem) {
        // Make the boolean change values.
        
        
    }
    
    
    func configureLabels() {
        let height = 100
        let width = 65
        let fontSize: CGFloat = 72
        
        letterL = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height))
        letterL.backgroundColor = .clear
        self.view.addSubview(letterL)
        letterL.text = "L"
        letterL.textAlignment = .center
        letterL.font = UIFont.systemFont(ofSize: fontSize)
        
        letterA = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height))
        letterA.backgroundColor = .clear
        self.view.addSubview(letterA)
        letterA.text = "A"
        letterA.textAlignment = .center
        letterA.font = UIFont.systemFont(ofSize: fontSize)
        
        
        letterM = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height))
        letterM.backgroundColor = .clear
        self.view.addSubview(letterM)
        letterM.text = "M"
        letterM.textAlignment = .center
        letterM.font = UIFont.systemFont(ofSize: fontSize)
        
        
        letterB = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height))
        letterB.backgroundColor = .clear
        self.view.addSubview(letterB)
        letterB.text = "B"
        letterB.textAlignment = .center
        letterB.font = UIFont.systemFont(ofSize: fontSize)
        
        
        letterD = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height))
        letterD.backgroundColor = .clear
        self.view.addSubview(letterD)
        letterD.text = "D"
        letterD.textAlignment = .center
        letterD.font = UIFont.systemFont(ofSize: fontSize)
        
        
        letterA2 = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height))
        letterA2.backgroundColor = .clear
        self.view.addSubview(letterA2)
        letterA2.text = "A"
        letterA2.textAlignment = .center
        letterA2.font = UIFont.systemFont(ofSize: fontSize)
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        
        stackView.addArrangedSubview(letterL)
        stackView.addArrangedSubview(letterA)
        stackView.addArrangedSubview(letterM)
        stackView.addArrangedSubview(letterB)
        stackView.addArrangedSubview(letterD)
        stackView.addArrangedSubview(letterA2)
        
        NSLayoutConstraint.activate([stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,                                constant: 20),
                                     stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
                                     stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)])
        
    }
}

