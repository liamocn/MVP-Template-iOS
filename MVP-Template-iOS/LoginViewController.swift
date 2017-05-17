//
//  LoginViewController.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 17/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        loginPresenter?.logUserIn()
    }
    var loginPresenter: LoginPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginPresenter?.attachView(self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        loginPresenter?.detachView()
    }
    
}

extension LoginViewController : LoginMvpView {
    
    func userLoggedIn() {
        print("Segue here")
        performSegue(withIdentifier: "segueToHome", sender: nil)
    }
    
}
