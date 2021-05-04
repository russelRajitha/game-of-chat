//
//  ViewController.swift
//  GameOfChats
//
//  Created by Admin on 2021-04-24.
//

import UIKit
import SwiftUI
import Firebase

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var ref: DatabaseReference!

//        ref = Database.database().reference(withPath: "https://example-162803.firebaseio.com")
//        ref.updateChildValues(["someValue":123123])
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
    }
    
    @objc func handleLogout()  {
        let vc = LoginController()
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true,completion: nil)
    }
}


struct MainPreview:PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) -> some UIViewController {
            return UINavigationController(rootViewController: ViewController())
        }
        
        func updateUIViewController(_ uiViewController: MainPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) {
            
        }
    }
}
