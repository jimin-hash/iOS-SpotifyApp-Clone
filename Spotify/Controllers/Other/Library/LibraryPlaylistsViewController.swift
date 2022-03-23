//
//  LibraryPlaylistsViewController.swift
//  Spotify
//
//  Created by 박지민 on 2022/03/21.
//

import UIKit

class LibraryPlaylistsViewController: UIViewController {

    var playlists = [Playlist]()
    
    public var selectionHandler: ((Playlist) -> Void)?
    
    
    private let noPlaylistView = ActionLabelView()
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SearchResultSubtitleTableViewCell.self, forCellReuseIdentifier: SearchResultSubtitleTableViewCell.identifier)
        tableView.isHidden = true
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        setUpNoPlaylistView()
        fetchData()
        
        if selectionHandler != nil {
            navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(didTapClose))
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
            
        noPlaylistView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        noPlaylistView.center = view.center
        
        tableView.frame = view.bounds
    }
    
    @objc func didTapClose() {
        dismiss(animated: true, completion: nil)
    }
    
    private func setUpNoPlaylistView() {
        view.addSubview(noPlaylistView)
        noPlaylistView.delegate = self
        noPlaylistView.configure(with: ActionLabelViewViewModel(text: "You don't have any playlists yet.", actionTitle: "Create"))
    }
    
    private func updateUI() {
        if playlists.isEmpty {
            // show label
            noPlaylistView.isHidden = false
            tableView.isHidden = true
        } else {
            // show table
            tableView.reloadData()
            tableView.isHidden = false
            noPlaylistView.isHidden = true
        }
    }
    
    private func fetchData() {
        APICaller.shared.getCurrentUserPlaylists { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let playlists):
                    self.playlists = playlists
                    self.updateUI()
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    public func showCreatePlaylistAlert() {
        // Show Creation UI
        let alert = UIAlertController(title: "New Playlists", message: "Enter Playlist name.", preferredStyle: .alert)
        alert.addTextField { textfield in
            textfield.placeholder = "Playlists..."
        }
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Creates", style: .default, handler: { _ in
            guard let field = alert.textFields?.first, let text = field.text, !text.trimmingCharacters(in: .whitespaces).isEmpty else {
                return
            }
            
            APICaller.shared.createPlaylist(with: text) { [weak self] success in
                if success {
                    // Refresh list of playlists
                    self?.fetchData()
                } else {
                    print("Failed to create playlist")
                }
            }
        }))
        
        present(alert, animated: true)
    }
}

extension LibraryPlaylistsViewController: ActionLabelViewDelegate {
    func actionLabelViewDidTapButton(_ actionView: ActionLabelView) {
        showCreatePlaylistAlert()
    }
}

extension LibraryPlaylistsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playlists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchResultSubtitleTableViewCell.identifier, for: indexPath) as? SearchResultSubtitleTableViewCell else {
            return UITableViewCell()
        }
        let playlist = playlists[indexPath.row]
        let viewModel = SearchResultSubtitleTableViewCellViewModel(title: playlist.name, subTitle: playlist.owner.display_name, imageURL: URL(string: playlist.images.first?.url ?? ""))
        cell.configure(with: viewModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let playlist = playlists[indexPath.row]
        guard selectionHandler == nil else {
            selectionHandler?(playlist)
            dismiss(animated: true, completion: nil)
            return
        }
        
        let vc = PlaylistViewController(playlist: playlist)
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}