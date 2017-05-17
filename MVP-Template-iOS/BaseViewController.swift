//
//  BaseViewController.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 06/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import UIKit
import RxSwift

class BaseViewController : UIViewController {
    let disposeBag = DisposeBag()
    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
