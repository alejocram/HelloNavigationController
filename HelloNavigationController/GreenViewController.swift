//
//  GreenViewController.swift
//  HelloNavigationController
//
//  Created by Alejocram on 5/10/22.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Green View"
        view.backgroundColor = .systemGreen
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("Go to Purple View ", for: .normal)
        button.backgroundColor = .systemBlue
        button.tintColor = .white
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func didTapButton() {
        let viewController = PurpleViewController()
        self.navigationController?.show(viewController, sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
