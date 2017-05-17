//
//  FirstViewController.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 06/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {
    
    @IBOutlet var message: UILabel!
    
    var homePresenter: HomePresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.message.text = "waiting"
        
        homePresenter?.attachView(self)
        homePresenter?.getHomeContent()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        homePresenter?.detachView()
    }

}

extension FirstViewController : HomeMvpView {
    
    func hasContent(content: String) {
        self.message.text = content
    }
    
}

