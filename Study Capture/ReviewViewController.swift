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
    
    let imageView = UIImageView()
    var userLabelText: String?
    
    private func setup() {
        print(self.view.frame)
        self.view.backgroundColor = UIColor.white
        self.addImageView()
        self.addUserTag()
    }
    
    private func addImageView() {
        self.imageView.frame = self.view.frame
        self.view.addSubview(self.imageView)
        self.imageView.translatesAutoresizingMaskIntoConstraints = false
        self.imageView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.imageView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        self.imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.imageView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        
        self.imageView.contentMode = .scaleAspectFit
    }
    
    private func addUserTag() {
        let userLabel = UILabel()
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        userLabel.backgroundColor = .black
        userLabel.textColor = .white
        userLabel.clipsToBounds = true
        
        if let userLabelText = self.userLabelText {
            userLabel.text = "  \(userLabelText)"
        }
        
        self.imageView.addSubview(userLabel)
        
        userLabel.bottomAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: -self.imageView.frame.width/2 + 20).isActive = true
        userLabel.trailingAnchor.constraint(equalTo: self.imageView.trailingAnchor, constant: -10).isActive = true
        userLabel.widthAnchor.constraint(equalTo: self.imageView.widthAnchor, multiplier: 0.35).isActive = true
        userLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    private func burnUserID() {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
