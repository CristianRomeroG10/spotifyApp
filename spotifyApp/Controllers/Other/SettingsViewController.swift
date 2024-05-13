//
//  SettingsViewController.swift
//  SpotifyApp
//
//  Created by Cristian guillermo Romero garcia on 30/04/24.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private let settingTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var sections = [Section]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureModels()
        title = "Settings"
        view.backgroundColor = .systemBackground
        view.addSubview(settingTableView)
        settingTableView.dataSource = self
        settingTableView.delegate = self
    }
    
    func configureModels(){
        sections.append(Section(title: "Profile", options: [Option(title: "View your profile", handler: {[weak self] in
            DispatchQueue.main.async{
                self?.viewProfile()
            }
            
        })]))
        sections.append(Section(title: "Account", options: [Option(title: "Sign out", handler: { [weak self] in
            DispatchQueue.main.async{
                self?.signOutTapped()
            }
        })]))
    }
    
    private func viewProfile(){
        let profileViewController = ProfileViewController()
        profileViewController.title = "Profile"
        profileViewController.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(profileViewController, animated: true)
    }
    private func signOutTapped(){
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        settingTableView.frame = view.bounds
    }
}

extension SettingsViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sections[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = sections[indexPath.section].options[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model.title
        return cell
    }
}
extension SettingsViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //Call handler for cell
        let model = sections[indexPath.section].options[indexPath.row]
        model.handler()
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let model = sections[section]
        return model.title
    }
}
