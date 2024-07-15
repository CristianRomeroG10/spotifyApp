//
//  FeaturedPlaylistCollectionViewCell.swift
//  spotifyApp
//
//  Created by Cristian guillermo Romero garcia on 11/07/24.
//

import UIKit

class FeaturedPlaylistCollectionViewCell: UICollectionViewCell {
    static let identifier = "FeaturedPlaylistCollectionViewCell"
    private let playlistCoverImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(systemName: "photo")
        imageview.layer.masksToBounds = true
        imageview.layer.cornerRadius = 4
        imageview.contentMode = .scaleAspectFill
        return imageview
    }()
    
    private let playlistNameLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textAlignment = .center
       return label
    }()
   
    private let creatorNameLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15, weight: .thin)
        label.textAlignment = .center
       return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubview(playlistCoverImageView)
        contentView.addSubview(playlistNameLabel)
        contentView.addSubview(creatorNameLabel)
        contentView.clipsToBounds = true
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        creatorNameLabel.frame = CGRect(
            x: 3,
            y: contentView.height-30,
            width: contentView.width-6,
            height: 30)
        playlistNameLabel.frame = CGRect(
            x: 3,
            y: contentView.height-60,
            width: contentView.width-6,
            height: 30)
        let imageSize = contentView.height-70
        playlistCoverImageView.frame = CGRect(
            x: (contentView.width-imageSize)/2,
            y: 3,
            width: imageSize,
            height: imageSize)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        playlistNameLabel.text = nil
        creatorNameLabel.text = nil
        playlistCoverImageView.image = nil
    }
    
    func configure(with viewModel: FeaturedPlaylistCellViewModel){
        playlistNameLabel.text = viewModel.name
        creatorNameLabel.text = viewModel.creatorName
        playlistCoverImageView.sd_setImage(with: viewModel.artWorkURL, completed: nil)
    }
}
