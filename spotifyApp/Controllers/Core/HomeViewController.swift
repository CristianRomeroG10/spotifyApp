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
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "gear"),
            style: .done,
            target: self,
            action: #selector(didTapSettingsButtom)
        )
        fetchData()
    }
    
    private func fetchData(){
        APICaller.shared.getRecommendedGenres { result in
            switch result{
            case .success(let model):
                let genres = model.genres
                var seeds = Set<String>()
                while seeds.count < 5 {
                    if let random = genres.randomElement(){
                        seeds.insert(random)
                    }
                }
                APICaller.shared.getRecommendation(genres: seeds) { _ in
                    
                }
            case . failure(let error): break
            }
        }
        
       
    }

    @objc func didTapSettingsButtom(){
        let settingsViewController = SettingsViewController()
        settingsViewController.title = "Settings"
        settingsViewController.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(settingsViewController, animated: true)
    }
}

