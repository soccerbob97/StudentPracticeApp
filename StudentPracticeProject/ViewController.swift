//
//  ViewController.swift
//  StudentPracticeProject
//
//  Created by Harsha Karanth on 9/29/21.
//

import UIKit


class ViewController: UIViewController {
    
    lazy var ghostButton: CustomButton = {
        let button = CustomButton(title: "👻", fontSize: 50, color: .purple);
        button.addTarget(self, action: #selector(ghostButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var crabButton: CustomButton = {
        let button = CustomButton(title: "🦀", fontSize: 50, color: .red);
        button.addTarget(self, action: #selector(crabButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var smileButton: CustomButton = {
        let button = CustomButton(title: "😀", fontSize: 50, color: .purple);
        button.addTarget(self, action: #selector(smileButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var robotButton: CustomButton = {
        let button = CustomButton(title: "🤖", fontSize: 50, color: .red);
        button.addTarget(self, action: #selector(robotButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        //createNormalViews()
        createStackView()
    }
    
    func createNormalViews() {
        view.addSubview(ghostButton)
        ghostButton.translatesAutoresizingMaskIntoConstraints = false
        ghostButton.topAnchor.constraint(equalTo: view.topAnchor,constant: 70.0).isActive = true
        ghostButton.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        ghostButton.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
        
        view.addSubview(crabButton)
        crabButton.translatesAutoresizingMaskIntoConstraints = false
        crabButton.topAnchor.constraint(equalTo: ghostButton.bottomAnchor,constant: 20.0).isActive = true
        crabButton.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        crabButton.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
        
        view.addSubview(smileButton)
        smileButton.translatesAutoresizingMaskIntoConstraints = false
        smileButton.topAnchor.constraint(equalTo: crabButton.bottomAnchor,constant: 20.0).isActive = true
        smileButton.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        smileButton.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
        
        view.addSubview(robotButton)
        robotButton.translatesAutoresizingMaskIntoConstraints = false
        robotButton.topAnchor.constraint(equalTo: smileButton.bottomAnchor,constant: 20.0).isActive = true
        robotButton.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        robotButton.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
    }
    
    func createStackView() {
        let buttonArray:[CustomButton] = [ghostButton,crabButton,smileButton,robotButton]
        let stackView = UIStackView(arrangedSubviews: buttonArray)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 20
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.topAnchor,constant: 100.0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -100.0).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
    }
    
    @objc fileprivate func ghostButtonTapped() {
        let alertController = UIAlertController(title: "Im a ghost,boo!", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
        present(alertController,animated: true,completion: nil)
    }
    
    @objc fileprivate func crabButtonTapped() {
        let alertController = UIAlertController(title: "Crab noises! Im a crab!", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
        present(alertController,animated: true,completion: nil)
    }
    
    @objc fileprivate func smileButtonTapped() {
        let alertController = UIAlertController(title: "I can only smile, send help!", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
        present(alertController,animated: true,completion: nil)
    }
    
    @objc fileprivate func robotButtonTapped() {
        /*
        let alertController = UIAlertController(title: "Im gonna replace u!", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
        present(alertController,animated: true,completion: nil)
         */
        print("robot button tapped")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RobotView") as! RobotViewController
        self.navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true, completion: nil)
        
    }
    


}

