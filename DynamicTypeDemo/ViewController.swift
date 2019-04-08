//
//  ViewController.swift
//  DynamicTypeDemo
//
//  Created by Felipe Marino on 02/03/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outletLabel: UILabel!
    private lazy var viewCodedLabel: UILabel = UILabel.scaledTitle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
        adjustForContentSizeCategoryChanges()
    }
    
    func setupLabels() {
        view.addSubview(viewCodedLabel)
        viewCodedLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewCodedLabel.topAnchor.constraint(equalTo: outletLabel.bottomAnchor, constant: 50.0).isActive = true
        viewCodedLabel.leadingAnchor.constraint(equalTo: outletLabel.leadingAnchor).isActive = true
        viewCodedLabel.trailingAnchor.constraint(equalTo: outletLabel.trailingAnchor).isActive = true
        viewCodedLabel.heightAnchor.constraint(equalTo: outletLabel.heightAnchor).isActive = true
        
        adjustForContentSizeCategoryChanges()
        outletLabel.font = UIFont.outletLabelFont
        outletLabel.text = "Outlet"
    }
    
    private func adjustForContentSizeCategoryChanges() {
        if #available(iOS 10.0, *) {
            outletLabel.adjustsFontForContentSizeCategory = true
        } else {
            NotificationCenter.default.addObserver(self,
                                                   selector: #selector(self.didChangeContentSizeCategory),
                                                   name: UIContentSizeCategory.didChangeNotification,
                                                   object: nil)
        }
    }
    
    @objc func didChangeContentSizeCategory() {
        outletLabel.font = UIFont.outletLabelFont
        viewCodedLabel.font = UIFont.viewCodedLabelFont
    }
}
