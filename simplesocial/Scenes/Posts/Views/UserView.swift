//
//  UserView.swift
//  simplesocial
//
//  Created by Samet Macit on 13.08.2022.
//

import Foundation
import UIKit

protocol UserViewDelegate: AnyObject {
    func didTapUserView()
}

final class UserView: UIView {
    
    private lazy var avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.crop.circle.fill")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private weak var delegate: UserViewDelegate?
    
    init(delegate: UserViewDelegate) {
        super.init(frame: .zero)
        self.delegate = delegate
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
    
    private func setupViews() {
        addSubviews(
            avatarImageView,
            userNameLabel
        )
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(userViewTapped))
        addGestureRecognizer(tapGestureRecognizer)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            avatarImageView.heightAnchor.constraint(equalToConstant: 24),
            avatarImageView.widthAnchor.constraint(equalToConstant: 24),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            avatarImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4),
            
            userNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 4),
            userNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            userNameLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
        ])
    }
    
    func set(viewModel: UserViewModel) {
        userNameLabel.text = viewModel.userName
    }
    
    @objc func userViewTapped() {
        delegate?.didTapUserView()
    }
}
