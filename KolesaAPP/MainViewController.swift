//
//  ViewController.swift
//  KolesaAPP
//
//  Created by Seidaly Rustem on 19.02.2023.
//

import UIKit
import SnapKit

final class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: FavoritesViewController())
        let vc3 = UINavigationController(rootViewController: SubmitController())
        let vc4 = UINavigationController(rootViewController: MessagesViewController())
        let vc5 = UINavigationController(rootViewController: ProfileViewController())

        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.black)
        vc2.tabBarItem.image = UIImage(systemName: "heart")
        vc2.tabBarItem.selectedImage = UIImage(systemName: "heart.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.black)
        vc3.tabBarItem.image = UIImage(systemName: "plus.app.fill")
        vc3.tabBarItem.selectedImage = UIImage(systemName: "plus.app.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.systemBlue)
        vc4.tabBarItem.image = UIImage(systemName: "envelope")
        vc4.tabBarItem.selectedImage = UIImage(systemName: "envelope.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.black)
        vc5.tabBarItem.image = UIImage(systemName: "person.circle")
        vc5.tabBarItem.selectedImage = UIImage(systemName: "person.circle.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.black)
        
        vc1.title = "Kolesa.kz"
        vc2.title = "Favorites"
        vc3.title = "Submit"
        vc4.title = "Messege"
        vc5.title = "My account"
        
        
        
        setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: true)
    }
}
