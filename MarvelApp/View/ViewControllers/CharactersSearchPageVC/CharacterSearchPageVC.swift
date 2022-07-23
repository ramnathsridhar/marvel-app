//
//  CharacterSearchPageVC.swift
//  MarvelApp
//
//  Created by Ramnath Sridhar on 16/07/22.
//

import UIKit

class CharacterSearchPageVC: UIViewController {

    let searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "CHARACTER PAGE VC"
        navigationItem.searchController = searchController
        
    }
}


extension CharacterSearchPageVC: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
}
