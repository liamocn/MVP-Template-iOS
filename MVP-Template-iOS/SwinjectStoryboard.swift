//
//  SwinjectStoryboard.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 06/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import SwinjectStoryboard

extension SwinjectStoryboard {
    class func setup() {
        
        defaultContainer.storyboardInitCompleted(LoginViewController.self) { r, c in
            c.loginPresenter = r.resolve(LoginPresenter.self)
        }
        
        defaultContainer.storyboardInitCompleted(FirstViewController.self) { r, c in
            c.homePresenter = r.resolve(HomePresenter.self)
        }
        
        defaultContainer.storyboardInitCompleted(SecondViewController.self) { r, c in
            c.homePresenter = r.resolve(HomePresenter.self)
        }
        
        defaultContainer.register(HomePresenter.self) { r in
            HomePresenter(contentRepository: r.resolve(ContentRepository.self)!)
        }
        
        defaultContainer.register(LoginPresenter.self) { r in
            LoginPresenter(userRepository: r.resolve(UserRepository.self)!)
        }
        
        defaultContainer.register(ContentRepository.self) { r in
            ContentRepository(contentRemoteDataSource: r.resolve(ContentRemoteDataSource.self)!)
        }
        
        defaultContainer.register(ContentRemoteDataSource.self, factory: { _ in ContentRemoteDataHandler()} )
        
        defaultContainer.register(UserRepository.self) { r in
            UserRepository(userRemoteDataSource: r.resolve(UserRemoteDataSource.self)!)
        }
        
        defaultContainer.register(UserRemoteDataSource.self, factory: { _ in UserRemoteDataHandler()} )
        
    }
}
