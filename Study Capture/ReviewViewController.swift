//
//  ReviewViewController.swift
//  Study Capture
//
//  Created by Daniel Lee on 5/4/19.
//  Copyright © 2019 DLEE. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.selfieDelegate?.resetToOriginalState()
    }
    
    let imageView = UIImageView()
    var userLabel = UILabel()
    var selfieDelegate: Reset?
    
    var userObject: UserObject? {
        didSet {
            self.imageView.image = self.userObject?.image
            self.userLabel.text = self.userObject?.userID
        }
    }
    
    internal func setup() {
        self.view.backgroundColor = UIColor.white
        self.addImageView()
        self.addUserTag()
        self.addSaveButton()
    }

}
