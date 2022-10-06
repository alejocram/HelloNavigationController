//
//  PurpleViewController.swift
//  HelloNavigationController
//
//  Created by Alejocram on 6/10/22.
//

import UIKit

class PurpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Purple View"
        view.backgroundColor = .systemPurple
        
        setupNavItem()
    }
    
    private func setupNavItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(didTapButton))
    }
    
    @objc func didTapButton() {
        let viewController = GrayViewController()
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
