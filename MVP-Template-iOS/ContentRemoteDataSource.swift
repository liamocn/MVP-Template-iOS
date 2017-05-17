//
//  ContentRemoteDataSource.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 06/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import Foundation
import RxSwift

protocol ContentRemoteDataSource{
    func getHomeContent() -> Observable<String>
    func getNavigationContent() -> Observable<String>
}

struct ContentRemoteDataHandler : ContentRemoteDataSource{
    func getHomeContent() -> Observable<String> {
        return Observable.just("Home")
    }
    
    func getNavigationContent() -> Observable<String> {
        return Observable.just("Navigation")
    }
}
