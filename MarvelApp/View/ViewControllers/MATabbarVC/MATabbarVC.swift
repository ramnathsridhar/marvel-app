//
//  MATabbarVC.swift
//  MarvelApp
//
//  Created by Ramnath Sridhar on 16/07/22.
//

import UIKit

class MATabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().tintColor = .green
        viewControllers = [createCharacterSearchPageVCXIB(), createComicsSearchPageVC()]
    }
}



func createCharacterSearchPageVCXIB() -> UINavigationController{
    
    let characterSearchPageVC = CharactersSearchPageVC()
    
    characterSearchPageVC.title = "UI Search Characters"//AppString.searchCharactersString
    characterSearchPageVC.tabBarItem = UITabBarItem.init(tabBarSystemItem: .search, tag: 0)
    return UINavigationController.init(rootViewController: characterSearchPageVC)
}


func createCharacterSearchPageVC() -> UINavigationController{
    
    let characterSearchPageVC = CharacterSearchPageVC()
    
    characterSearchPageVC.title = AppString.searchCharactersString
    characterSearchPageVC.tabBarItem = UITabBarItem.init(tabBarSystemItem: .search, tag: 0)
    return UINavigationController.init(rootViewController: characterSearchPageVC)
}

func createComicsSearchPageVC() -> UINavigationController{
    
    let comicsSearchPageVC = ComicsSearchPageVC()
    comicsSearchPageVC.tabBarItem = UITabBarItem.init(tabBarSystemItem: .search, tag: 0)
    comicsSearchPageVC.title = AppString.searchComicsSearchString
    return UINavigationController.init(rootViewController: comicsSearchPageVC)
}
