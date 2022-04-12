//
//  Alamofire.swift
//  Job-app
//
//  Created by MAC on 12/04/22.
//

import Foundation
import Alamofire

final class Network {
    
    static var isConnectedToInternet: Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
    
    class func getRequest(_ strURL:String, params: [String : Any]? = nil, headers: [String : String]?, success:@escaping (Any?) -> Void, failure:@escaping (Error?) -> Void) {
        
        if !self.isConnectedToInternet {
            success(nil)
            failure(nil)
            Alert.show(nil, "No Internet Connection")
            return
        }
        
        let req = Alamofire.request(strURL, method: .get, parameters: params, headers: headers).responseJSON { (responseObject) -> Void in
            
            if let responseCode = responseObject.response?.statusCode {
                if responseCode == 200 {
                    success(responseObject.result.value)
                } else {
                    failure(responseObject.result.error)
                }
            } else {
                failure(responseObject.result.error)
            }
        }
        debugPrint(req)
    }
    
    class func postRequest(_ strURL:String, params: [String : Any]? = nil, headers: [String : String]?, success:@escaping (Any?) -> Void, failure:@escaping (Error?) -> Void) {
        
        if !self.isConnectedToInternet {
            success(nil)
            failure(nil)
            Alert.show(nil, "No Internet Connection")
            return
        }
        
        let req = Alamofire.request(strURL, method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
            
            if let responseCode = responseObject.response?.statusCode {
                if responseCode == 200 || responseCode == 201 {
                    success(responseObject.result.value)
                } else {
                    failure(responseObject.result.error)
                }
            } else {
                failure(responseObject.result.error)
            }
        }
        debugPrint(req)
    }
}

final class Alert {
    static func show(_ title:String?, _ message:String, _ actionName:String = "Ok") {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: actionName, style: .cancel, handler: nil))
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}
