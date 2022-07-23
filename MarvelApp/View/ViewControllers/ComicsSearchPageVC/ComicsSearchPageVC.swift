//
//  ComicsSearchPageVC.swift
//  MarvelApp
//
//  Created by Ramnath Sridhar on 16/07/22.
//

import UIKit

class ComicsSearchPageVC: UIViewController {

    var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "COMICS PAGE VC"
        imageView.image = UIImage.add
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            imageView.heightAnchor.constraint(equalToConstant: 50),
            imageView.widthAnchor.constraint(equalToConstant: 50)
        
        ])
        
    }
}
