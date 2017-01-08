//
//  URLSessionProtol.swift
//  helloSwiftTDD
//
//  Created by Norman Sutorius on 08.01.17.
//  Copyright © 2017 Norman Sutorius. All rights reserved.
//
import Foundation

typealias DataTaskResult = (NSData?, URLResponse?, NSError?) ->Void

protocol URLSessionProtocol {
    
    func dataTaskWithURL(url: NSURL, complitionHandler: DataTaskResult) -> URLSessionDataTaskProtocol
}

extension URLSession: URLSessionProtocol {
    func dataTaskWithURL(url: NSURL, complitionHandler completionHandler: DataTaskResult) -> URLSessionDataTaskProtocol {
        return (dataTaskWithURL(url: url, complitionHandler: completionHandler) as! URLSessionDataTask) as URLSessionDataTaskProtocol
    }

}