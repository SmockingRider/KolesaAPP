//
//  FavoritesViewController.swift
//  KolesaAPP
//
//  Created by Seidaly Rustem on 19.02.2023.
//

import UIKit

final class FavoritesViewController: UIViewController {

    private lazy var contentView = UIView()

    private lazy var segmentControl: UISegmentedControl = {
        let segmentControl = UISegmentedControl(items: ["Adverts", "Searches", "Sellers"])
        segmentControl.selectedSegmentIndex = 0
        segmentControl.addTarget(self, action: #selector(segmentControlValueChanged(_:)), for: .valueChanged)
        return segmentControl
    }()

    private lazy var currentView: UIView = {
        let view = UIView()
        view.backgroundColor = self.view.backgroundColor
        return view
    }()
    
//MARK: - Segment controler
    
    @objc private func segmentControlValueChanged(_ sender: UISegmentedControl) {
        currentView.removeFromSuperview()

        switch sender.selectedSegmentIndex {
        case 0:
            let view = UIView()
            view.backgroundColor = .white
            let imageView = UIImageView(image: UIImage(named: "adverts"))
            imageView.contentMode = .scaleAspectFit
            imageView.transform = CGAffineTransform(scaleX: 0.38, y: 0.38)
            view.addSubview(imageView)
            imageView.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview().offset(-170)
            }
            
            let titleLabel = UILabel()
            titleLabel.text = "Add adverts to favorites"
            titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            view.addSubview(titleLabel)
            titleLabel.snp.makeConstraints { make in
                make.top.equalTo(imageView.snp.bottom).offset(-110)
                make.centerX.equalToSuperview()
            }
            
            let smallLabel = UILabel()
            smallLabel.text = "and watch for changes"
            smallLabel.font = UIFont.systemFont(ofSize: 14)
            view.addSubview(smallLabel)
            smallLabel.snp.makeConstraints { make in
                make.top.equalTo(titleLabel.snp.bottom).inset(-5)
                make.centerX.equalToSuperview()
            }

            let button = UIButton(type: .system)
            button.backgroundColor = UIColor.init(red: 45/255, green: 130/255, blue: 221/255, alpha: 1)
            button.layer.cornerRadius = 4
            button.setTitleColor(.white, for: .normal)
            button.setTitle("Go to main", for: .normal)
            button.addTarget(self, action: #selector(goToMain), for: .touchUpInside)
            view.addSubview(button)
            button.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-290)
                make.width.equalTo(260)
                make.height.equalTo(40)
            }
            
            currentView = view
        case 1:
            let view = UIView()
            view.backgroundColor = .white
            let imageView = UIImageView(image: UIImage(named: "searches"))
            imageView.contentMode = .scaleAspectFit
            imageView.transform = CGAffineTransform(scaleX: 0.38, y: 0.38)
            view.addSubview(imageView)
            imageView.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview().offset(-170)
            }
            
            let titleLabel = UILabel()
            titleLabel.text = "Subscribe to search"
            titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            view.addSubview(titleLabel)
            titleLabel.snp.makeConstraints { make in
                make.top.equalTo(imageView.snp.bottom).offset(-125)
                make.centerX.equalToSuperview()
            }
            
            let smallLabel = UILabel()
            smallLabel.text = "and be aware of new adverts immediately"
            smallLabel.font = UIFont.systemFont(ofSize: 14)
            view.addSubview(smallLabel)
            smallLabel.snp.makeConstraints { make in
                make.top.equalTo(titleLabel.snp.bottom).inset(-5)
                make.centerX.equalToSuperview()
            }
           
            let button = UIButton(type: .system)
            button.backgroundColor = UIColor.init(red: 45/255, green: 130/255, blue: 221/255, alpha: 1)
            button.layer.cornerRadius = 4
            button.setTitleColor(.white, for: .normal)
            button.setTitle("Go to main", for: .normal)
            button.addTarget(self, action: #selector(goToMain), for: .touchUpInside)
            view.addSubview(button)
            button.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-290)
                make.width.equalTo(260)
                make.height.equalTo(40)
            }
            
            currentView = view
        case 2:
            let view = UIView()
            view.backgroundColor = .white
            let imageView = UIImageView(image: UIImage(named: "sellers"))
            imageView.contentMode = .scaleAspectFit
            imageView.transform = CGAffineTransform(scaleX: 0.38, y: 0.38)
            view.addSubview(imageView)
            imageView.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview().offset(-170)
            }
            
            let titleLabel = UILabel()
            titleLabel.text = "Add sellers to favorites"
            titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            view.addSubview(titleLabel)
            titleLabel.snp.makeConstraints { make in
                make.top.equalTo(imageView.snp.bottom).offset(-115)
                make.centerX.equalToSuperview()
            }
            
            let smallLabel = UILabel()
            smallLabel.text = "Not to lose good sellers"
            smallLabel.font = UIFont.systemFont(ofSize: 14)
            view.addSubview(smallLabel)
            smallLabel.snp.makeConstraints { make in
                make.top.equalTo(titleLabel.snp.bottom).inset(-5)
                make.centerX.equalToSuperview()
            }
            
            let button = UIButton(type: .system)
            button.backgroundColor = UIColor.init(red: 45/255, green: 130/255, blue: 221/255, alpha: 1)
            button.layer.cornerRadius = 4
            button.setTitleColor(.white, for: .normal)
            button.setTitle("Go to main", for: .normal)
            button.addTarget(self, action: #selector(goToMain), for: .touchUpInside)
            view.addSubview(button)
            button.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-290)
                make.width.equalTo(260)
                make.height.equalTo(40)
            }
            
            currentView = view
        default:
            break
        }

        contentView.addSubview(currentView)
        currentView.snp.makeConstraints { make in
            make.top.equalTo(segmentControl.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }

    @objc private func goToMain() {
        if let homeVC = self.navigationController?.viewControllers.first(where: { $0 is HomeViewController }) {
            self.navigationController?.popToViewController(homeVC, animated: true)
        } else {
            let homeVC = HomeViewController()
            self.navigationController?.pushViewController(homeVC, animated: true)
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        configureNavBar()

        setupViews()
        setupConstraints()
    }

    private func configureNavBar() {
        let leftLabel = UILabel()
        leftLabel.text = "Favorites"
        leftLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        leftLabel.sizeToFit()
        let leftBarItem = UIBarButtonItem(customView: leftLabel)
        navigationItem.leftBarButtonItem = leftBarItem
    }
//MARK: - Setup views and constraints methods
    private func setupViews() {
        view.addSubview(contentView)
        contentView.addSubview(segmentControl)
        contentView.addSubview(currentView)
    }

    private func setupConstraints() {
        contentView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        segmentControl.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
        }
        currentView.snp.makeConstraints { make in
            make.top.equalTo(segmentControl.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
}
