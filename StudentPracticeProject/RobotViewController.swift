import UIKit


class RobotViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    lazy var robotButton: CustomButton = {
        let button = CustomButton(title: "🤖", fontSize: 50, color: .red);
        button.addTarget(self, action: #selector(bigRobotButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var backButton: CustomButton = {
        let button = CustomButton(title: "Back", fontSize: 50, color: .blue);
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    func createNormalViews() {
        view.addSubview(robotButton)
        robotButton.translatesAutoresizingMaskIntoConstraints = false
        robotButton.topAnchor.constraint(equalTo: view.topAnchor,constant: 20.0).isActive = true
        robotButton.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        robotButton.heightAnchor.constraint(equalToConstant: 200.0).isActive = true
        
        let textView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: view.frame.size.width, height: 100.0))
        textView.contentInsetAdjustmentBehavior = .automatic
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.textColor = UIColor.blue
        textView.backgroundColor = UIColor.lightGray
        textView.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        
        view.addSubview(textView)
        textView.topAnchor.constraint(equalTo: robotButton.bottomAnchor, constant: 20.0).isActive = true
        
        view.addSubview(backButton)
        backButton.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 20.0).isActive = true
    }
    
    @objc fileprivate func backButtonTapped() {
        print("Back button tapped")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @objc fileprivate func bigRobotButtonTapped() {
        let alertController = UIAlertController(title: "Im gonna replace u!", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
        present(alertController,animated: true,completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
