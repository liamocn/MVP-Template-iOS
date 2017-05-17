//
//  ContentRepository.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 06/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import Foundation
import RxSwift

struct ContentRepository{
    
    private let contentRemoteDataSource : ContentRemoteDataSource
    
    init(contentRemoteDataSource : ContentRemoteDataSource){
        self.contentRemoteDataSource = contentRemoteDataSource
    }
    
    func getHomeContent() -> Observable<String>{
        return contentRemoteDataSource.getHomeContent()
    }
    
    func getNavigationContent() -> Observable<String>{
        return contentRemoteDataSource.getNavigationContent()
    }
    
}
