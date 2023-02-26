//
//  MessagesViewController.swift
//  KolesaAPP
//
//  Created by Seidaly Rustem on 19.02.2023.
//

import UIKit

final class MessagesViewController: UIViewController {
    
    private lazy var messegeImages: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "messegesImage")
        imageView.contentMode = .scaleToFill
        imageView.transform = CGAffineTransform(scaleX: 0.38, y: 0.38)
        return imageView
    }()
    
    private lazy var messegeLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "It is quiet here for now"
        titleLabel.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        return titleLabel
    }()
    
    
    private lazy var messegeLabel2: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Start a dialogue on the page of any advert"
        titleLabel.numberOfLines = 1
        titleLabel.font = UIFont.systemFont(ofSize: 18)
        return titleLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavBar()
        setupViews()
        setupConstraints()
        
        view.backgroundColor = .white
    }
    
    private func configureNavBar() {
        navigationItem.title = "Messeges"
    }

}

private extension MessagesViewController {
    func setupViews() {
        view.addSubview(messegeImages)
        view.addSubview(messegeLabel)
        view.addSubview(messegeLabel2)
    }
    
    func setupConstraints() {
        messegeImages.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-170)
        }
        
        messegeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(messegeImages.snp.bottom).offset(-180)
        }
        messegeLabel2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(messegeImages.snp.bottom).offset(-150)
        }
    }
}
