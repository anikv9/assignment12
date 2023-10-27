//
//  ViewController.swift
//  მართლა.საბოლოო.დავალება
//
//  Created by ani kvitsiani on 27.10.23.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView1 = UIStackView()

    
    
    
    let userPic: UIView = {
        let user = UIView()
        user.frame = CGRect(x: 116.5, y: 60, width: 160, height: 160)
        
        let imageLayer = CALayer()
        imageLayer.contents = UIImage(named: "Image")?.cgImage
        imageLayer.frame = user.bounds
        user.layer.addSublayer(imageLayer)

        return user
    }()
    
    let SignInText : UILabel = {
        let text = UILabel()
        text.text = "Sign In"
        text.textColor = .black
        text.frame = CGRect(x: 150, y: 235, width: 93, height: 34)
        text.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        text.textAlignment = .center
        
        return text
    }()
    
    let EmailField : UITextField = {
        let email = UITextField()
        email.frame = CGRect(x: 52, y: 292, width: 289, height: 53)
        email.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        email.layer.cornerRadius = 16
        email.layer.borderWidth = 1
        email.layer.borderColor = UIColor(red: 0.698, green: 0.698, blue: 0.698, alpha: 0.25).cgColor
        email.text = "Email"
        email.font = UIFont.systemFont(ofSize: 14)
        email.textAlignment = .center
        
        return email
    }()
    
    let PasswordField : UITextField = {
        let password = UITextField()
        password.frame = CGRect(x: 52, y: 360, width: 289, height: 53)
        password.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        password.layer.cornerRadius = 16
        password.layer.borderWidth = 1
        password.layer.borderColor = UIColor(red: 0.698, green: 0.698, blue: 0.698, alpha: 0.25).cgColor
        password.text = ("Password")
        password.font = UIFont.systemFont(ofSize: 14)
        password.textAlignment = .center
        
        return password
    }()
    
    
    let ForgotPassword : UILabel = {
        let forgot = UILabel()
        
        forgot.frame = CGRect(x: 52, y: 428, width: 289, height: 17)
        forgot.textColor = UIColor(red: 0.373, green: 0.373, blue: 0.373, alpha: 1)
        forgot.font = UIFont.systemFont(ofSize: 14)
        forgot.textAlignment = .right
        forgot.text = "Forgot Your Password?"
        
        return forgot
    }()
            
    let SignInButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.133, green: 0.341, blue: 0.478, alpha: 1)
        button.setTitle("Sign In", for: .normal)
        button.frame = CGRect(x: 50.5, y: 477, width: 292, height: 45)
        button.layer.cornerRadius = 18
        
        return button
        
    }()
    
    let Line1 :UIView = {
        let line = UIView()
        line.backgroundColor = .black
        line.frame = CGRect(x: 60, y: 560, width: 120, height: 1)
        
        return line
    }()
    
    let Line2 :UIView = {
        let line = UIView()
        line.backgroundColor = .black
        line.frame = CGRect(x: 210, y: 560, width: 120, height: 1)
        
        
        return line
    }()
    
    let Or : UILabel = {
        let or = UILabel()
        
        or.frame = CGRect(x: 185, y: 552, width: 20, height: 17)
        or.textColor = .black
        or.textAlignment = .center
        or.text = "Or"
        
        return or
    }()
    
    let googleIcon: UIView = {
        let google = UIView()
        google.frame = CGRect(x: 116.5, y: 60, width: 160, height: 160)
        
        let imageLayer = CALayer()
        imageLayer.contents = UIImage(named: "google")?.cgImage
        imageLayer.frame = google.bounds
        google.layer.addSublayer(imageLayer)

        return google
    }()
    
    let facebookIcon: UIView = {
        let facebook = UIView()
        facebook.frame = CGRect(x: 116.5, y: 60, width: 160, height: 160)
        
        let imageLayer = CALayer()
        imageLayer.contents = UIImage(named: "facebook")?.cgImage
        imageLayer.frame = facebook.bounds
        facebook.layer.addSublayer(imageLayer)

        return facebook
    }()
    
    let linkedinIcon: UIView = {
        let linkedin = UIView()
        linkedin.frame = CGRect(x: 116.5, y: 60, width: 160, height: 160)
        
        let imageLayer = CALayer()
        imageLayer.contents = UIImage(named: "linkedin")?.cgImage
        imageLayer.frame = linkedin.bounds
        linkedin.layer.addSublayer(imageLayer)

        return linkedin
    }()
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        stackView1.axis = .vertical
        stackView1.alignment = .center
        stackView1.distribution = .fill
        stackView1.spacing = 11

        stackView1.addArrangedSubview(googleIcon)
        stackView1.addArrangedSubview(facebookIcon)
        stackView1.addArrangedSubview(linkedinIcon)
        
        view.addSubview(userPic)
        view.addSubview(SignInText)
        view.addSubview(EmailField)
        view.addSubview(PasswordField)
        view.addSubview(ForgotPassword)
        view.addSubview(SignInButton)
        view.addSubview(Line1)
        view.addSubview(Line2)
        view.addSubview(Or)
        view.addSubview(stackView1)

        
        
        
        


       


        
        SignInButton.addAction(UIAction(handler: {  [weak self] action in
            self?.navigateToHomePage()
            print("present button clicked")
        }), for: .touchUpInside)
    }
      

        
        func navigateToHomePage() {
            let homepage = HomePageVC()
            present(homepage, animated: true)
        }
        
        
        
    }
    
    //დიდი პატივისცემის მიუხედავად, ამ დავალებას აქ ვასრულებ. იქამდე swiftui ავაწყვე და ორი დღეა აამას ვუზივარ, ფიზიკურად აღარ მაქვს მეტი დრო. მოგვიანებით ვეცდები დავასრულო


