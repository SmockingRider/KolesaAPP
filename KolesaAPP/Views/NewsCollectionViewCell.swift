//
//  NewsCollectionViewCell.swift
//  KolesaAPP
//
//  Created by Seidaly Rustem on 19.02.2023.
//

import UIKit

final class NewsCollectionViewCell: UICollectionViewCell {
    
    private lazy var newsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "kolesa")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 15
        return imageView
    }()
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        
    }
}



//MARK: - Setup views and constraints

private extension NewsCollectionViewCell {
    
    func setupViews() {
        contentView.addSubview(newsImageView)
    }
    
    func setupConstraints() {
        newsImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
