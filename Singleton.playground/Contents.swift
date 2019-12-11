import UIKit

final public class Singleton {
    
    public static let shared = Singleton(); // static properties are thread safe
    
    private var settings:[String: Any] = ["Style" : "Dark", "MaxConcurrentOperation" : 2];
    private init() {} //hide the initializer
    
    public func string(forKey key:String) -> String? {
        return settings[key] as? String;
    }
    
    public func int(forKey key:String) -> Int? {
        return settings[key] as? Int
    }
    
    public func dictionary(forKey key:String) -> [String: Any]? {
        return settings[key] as? [String:Any]
    }
    
    public func set(value:Any, forKey key:String) {
        settings[key] = value;
    }
    
}

print(Singleton.shared.int(forKey: "MaxConcurrentOperation"));
