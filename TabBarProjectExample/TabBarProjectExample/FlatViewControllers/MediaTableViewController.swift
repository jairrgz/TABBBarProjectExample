//
//  MediaTableViewController.swift
//  TabBarProjectExample
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 10/01/25.
//

import Foundation

import UIKit

class MediaTableViewController: UITableViewController {
    
    private let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    private let albumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "music.note")
        imageView.tintColor = .label
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let albumTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "SOUR"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let artistLabel: UILabel = {
        let label = UILabel()
        label.text = "Olivia Rodrigo"
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .secondaryLabel
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let controlsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let songs = [
        "brutal",
        "traitor",
        "drivers license",
        "1 step forward, 3 steps back",
        "deja vu",
        "good 4 u"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        title = "Media"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        // Configurar header
        setupHeaderView()
        
        // Configurar controles
        setupControlsStackView()
    }
    
    private func setupHeaderView() {
        headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 400)
        
        headerView.addSubview(albumImageView)
        headerView.addSubview(albumTitleLabel)
        headerView.addSubview(artistLabel)
        headerView.addSubview(controlsStackView)
        
        NSLayoutConstraint.activate([
            albumImageView.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 20),
            albumImageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            albumImageView.widthAnchor.constraint(equalToConstant: 250),
            albumImageView.heightAnchor.constraint(equalToConstant: 250),
            
            albumTitleLabel.topAnchor.constraint(equalTo: albumImageView.bottomAnchor, constant: 20),
            albumTitleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            
            artistLabel.topAnchor.constraint(equalTo: albumTitleLabel.bottomAnchor, constant: 8),
            artistLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            
            controlsStackView.topAnchor.constraint(equalTo: artistLabel.bottomAnchor, constant: 20),
            controlsStackView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            controlsStackView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20),
            controlsStackView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -20)
        ])
        
        tableView.tableHeaderView = headerView
    }
    
    private func setupControlsStackView() {
        let controls: [UIImage] = [
            UIImage(systemName: "heart")!,
            UIImage(systemName: "arrow.down.circle")!,
            UIImage(systemName: "ellipsis")!,
            UIImage(systemName: "shuffle")!,
            UIImage(systemName: "play.circle.fill")!
        ]
        
        controls.forEach { image in
            let button = UIButton()
            button.setImage(image, for: .normal)
            button.tintColor = image == UIImage(systemName: "play.circle.fill") ? .systemGreen : .label
            button.transform = image == UIImage(systemName: "play.circle.fill") ? CGAffineTransform(scaleX: 1.5, y: 1.5) : .identity
            controlsStackView.addArrangedSubview(button)
        }
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Media \(indexPath.row + 1)"
        return cell
    }
}





import SwiftUI

struct MediaTableViewControllerPreview: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> MediaTableViewController {
        return MediaTableViewController()
    }
    
    func updateUIViewController(_ uiViewController: MediaTableViewController, context: Context) {
        
    }
}

#Preview {
    MediaTableViewControllerPreview()
        .edgesIgnoringSafeArea(.all)
}

#Preview {
    MediaTableViewController()
        
}
