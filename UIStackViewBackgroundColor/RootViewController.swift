//
//  RootViewController.swift
//  UIStackViewBackgroundColor
//
//  Created by Alex Nagy on 07/04/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class RootViewController: UIViewController {
    
    lazy var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    lazy var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var tutorialStackView: UIStackView = {
        let stackView = UIStackView()
//        stackView.backgroundColor = .red
        stackView.addBackground(color: .red)
        
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 5
        
        stackView.addArrangedSubview(blueView)
        stackView.addArrangedSubview(greenView)
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
    }

    fileprivate func setupViews() {
        view.backgroundColor = .white
        
        view.addSubview(tutorialStackView)
        
        tutorialStackView.topToSuperview(offset: 36, usingSafeArea: true)
        tutorialStackView.leftToSuperview(offset: 12, usingSafeArea: true)
        tutorialStackView.rightToSuperview(offset: -12, usingSafeArea: true)
        tutorialStackView.height(50)
    }

}

