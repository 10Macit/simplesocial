//
//  PostTableViewCell.swift
//  simplesocial
//
//  Created by Samet Macit on 13.08.2022.
//

import UIKit
import Kingfisher

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set(viewModel: PostViewModel) {
        profileImageView.image = UIImage(systemName: viewModel.imageName)
        nameLabel.text = viewModel.name
        userNameLabel.text = viewModel.userName
        contentLabel.text = viewModel.content
        contentImageView.kf.setImage(with: viewModel.contentImageURL)
    }
    
}

struct PostViewModel {
    let imageName: String
    let name: String
    let userName: String
    let content: String
    let contentImageURL: URL?
}
