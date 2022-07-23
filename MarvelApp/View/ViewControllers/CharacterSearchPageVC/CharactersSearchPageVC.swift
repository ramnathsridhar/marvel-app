//
//  CharactersSearchPageVC.swift
//  MarvelApp
//
//  Created by Ramnath Sridhar on 17/07/22.
//

import UIKit

class CharactersSearchPageVC: UIViewController {

    @IBOutlet weak var searchBarTextField: UISearchBar!
    @IBOutlet weak var recentSearchesTableView: UITableView!
    @IBOutlet weak var charactersResultCollectionView: UICollectionView!
    
    @IBOutlet weak var searchBarTextFieldHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBarTextField.delegate = self
        recentSearchesTableView.delegate = self
        recentSearchesTableView.dataSource = self
        searchBarTextFieldHeightConstraint.constant = 0
        searchBarTextField.showsCancelButton = true
    }
}

extension CharactersSearchPageVC: UISearchBarDelegate {
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        searchBarTextFieldHeightConstraint.constant = 150
        return true
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBarTextFieldHeightConstraint.constant = 150
    }
    
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        searchBarTextFieldHeightConstraint.constant = 0
        return true

    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchBarTextFieldHeightConstraint.constant = 150

    }
    
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBarTextFieldHeightConstraint.constant = 0

    }
}


extension CharactersSearchPageVC: UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell.init()
        cell.backgroundColor = .purple
        return cell
    }
    
    
}
