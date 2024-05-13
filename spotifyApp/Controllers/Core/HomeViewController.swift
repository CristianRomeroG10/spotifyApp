//
//  ViewController.swift
//  SpotifyApp
//
//  Created by Cristian guillermo Romero garcia on 29/04/24.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSettingsButtom))
    }

    @objc func didTapSettingsButtom(){
        let settingsViewController = SettingsViewController()
        settingsViewController.title = "Settings"
        settingsViewController.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(settingsViewController, animated: true)
    }
}

