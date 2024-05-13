//
//  TabBarViewController.swift
//  SpotifyApp
//
//  Created by Cristian guillermo Romero garcia on 30/04/24.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    func setUpViews(){
        
        //MARK: HomeView Configuration
        let homeViewController = HomeViewController()
        homeViewController.navigationItem.largeTitleDisplayMode = .always
        homeViewController.title = "Browse"
        let homeNavigation = UINavigationController(rootViewController: homeViewController)
        homeNavigation.navigationBar.prefersLargeTitles = true
        homeNavigation.tabBarItem.title = "Home"
        homeNavigation.tabBarItem.image = UIImage(systemName: "house")
        //MARK: SearchView Connfiguration
        let searchViewController = SearchViewController()
        searchViewController.navigationItem.largeTitleDisplayMode = .always
        searchViewController.title = "Search"
        let searchNavigation = UINavigationController(rootViewController: searchViewController)
        searchNavigation.navigationBar.prefersLargeTitles = true
        searchNavigation.tabBarItem.title = "Search"
        searchNavigation.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        //MARK: LibraryView Configuration
        let libraryViewController = LibraryViewController()
        libraryViewController.navigationItem.largeTitleDisplayMode = .always
        libraryViewController.title = "Library"
        let libraryNavigation = UINavigationController(rootViewController: libraryViewController)
        libraryNavigation.navigationBar.prefersLargeTitles = true
        libraryNavigation.tabBarItem.title = "Library"
        libraryNavigation.tabBarItem.image = UIImage(systemName: "music.note.list")
        
        //MARK: Set ViewController
        let viewController: [UIViewController] = [homeNavigation, searchNavigation, libraryNavigation]
        setViewControllers(viewController, animated: false)
    }
    

}
