//
//  HomeViewController.swift
//  KolesaAPP
//
//  Created by Seidaly Rustem on 19.02.2023.
//

import UIKit

final class HomeViewController: UIViewController {

    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private lazy var newsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(NewsCollectionViewCell.self, forCellWithReuseIdentifier: Constants.Identifiers.newsCollectionViewCell)
//        collectionView.layer.borderWidth = 1
        collectionView.layer.borderColor = UIColor.init(red: 24/255, green: 24/255, blue: 24/255, alpha: 1).cgColor
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configureNavBar()
        
        setupViews()
        setupConstraints()
    }

}


//MARK: - Collection view data source methods

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Identifiers.newsCollectionViewCell, for: indexPath) as! NewsCollectionViewCell
        cell.layer.borderColor = UIColor.red.cgColor
        cell.layer.borderWidth = 3
        return cell
    }
}


//MARK: - Collection view delegate methods

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
}


//MARK: - Navigation bar methods

private extension HomeViewController {

    func configureNavBar() {
        let leftLabel = UILabel()
        leftLabel.text = "Kolesa.kz"
        leftLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        leftLabel.sizeToFit()
        let leftBarItem = UIBarButtonItem(customView: leftLabel)
        navigationItem.leftBarButtonItem = leftBarItem
        
        let rightButton = UIButton(type: .system)
        rightButton.setTitle("News", for: .normal)
        rightButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        rightButton.setTitleColor(.systemBlue, for: .normal)
        rightButton.addTarget(self, action: #selector(didTapNewsButton), for: .touchUpInside)
        let rightBarItem = UIBarButtonItem(customView: rightButton)
        navigationItem.rightBarButtonItem = rightBarItem
    }
    
    @objc func didTapNewsButton() {
        print("News button tapped")
    }
}


//MARK: - Setup views and constraints

private extension HomeViewController {
    
    func setupViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(newsCollectionView)
    }
    
    func setupConstraints() {
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.trailing.equalTo(view).inset(15)
        }
        newsCollectionView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(110)
            make.height.equalToSuperview().multipliedBy(0.02)
        }
    }
    
}
