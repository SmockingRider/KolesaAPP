//
//  ProfileViewController.swift
//  KolesaAPP
//
//  Created by Seidaly Rustem on 19.02.2023.
//

import UIKit

final class ProfileViewController: UIViewController {

    //MARK: - SegmentControl Methods
    
    private let contentView = UIView()
    
    private lazy var segmentControl: UISegmentedControl = {
        let segmentControl = UISegmentedControl()
        return segmentControl
    }()
    
    private lazy var textBar: UITextField = {
        let textBar = UITextField()
        textBar.placeholder = " Enter a phone number"
        textBar.layer.borderColor = UIColor.systemBlue.cgColor
        textBar.layer.borderWidth = 1
        textBar.backgroundColor = .white
        textBar.textColor = .black
        textBar.layer.cornerRadius = 4
        textBar.layer.masksToBounds = true
        textBar.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: textBar.frame.height))
        textBar.leftViewMode = .always
        return textBar
    }()

    private lazy var buttonContinue: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.init(red: 45/255, green: 130/255, blue: 221/255, alpha: 1)
        button.layer.cornerRadius = 4
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Continue", for: .normal)
        return button
    }()
    
    
    private lazy var mainLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Kolesa.kz"
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return titleLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configureNavBar()
        
        setupViews()
        setupConstraints()
    }
}



//MARK: - Navigation bar methods
private extension ProfileViewController {

    func configureNavBar() {
        navigationItem.title = "My account"
        
        let rightButton = UIButton(type: .system)
        rightButton.setTitle("Settings", for: .normal)
        rightButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        rightButton.setTitleColor(.systemBlue, for: .normal)
        rightButton.addTarget(self, action: #selector(didTapNewsButton), for: .touchUpInside)
        let rightBarItem = UIBarButtonItem(customView: rightButton)
        navigationItem.rightBarButtonItem = rightBarItem
    }
    
    @objc func didTapNewsButton() {
        print("Settings button tapped")
    }
}

private extension ProfileViewController {
    
    func setupViews() {
        view.addSubview(contentView)
        contentView.addSubview(mainLabel)
        contentView.addSubview(textBar)
        contentView.addSubview(buttonContinue)
    }
    
    func setupConstraints() {
        contentView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.trailing.equalTo(view).inset(15)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
        }
        
        textBar.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(view).multipliedBy(0.05)
        }
        
        buttonContinue.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(textBar.snp.bottom).offset(20)
            make.width.equalTo(textBar.snp.width)
            make.height.equalTo(textBar.snp.height)
        }
    }
}
