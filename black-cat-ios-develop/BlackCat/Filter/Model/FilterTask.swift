//
//  Task.swift
//  BlackCat
//
//  Created by Hamlit Jason on 2022/10/16.
//

import Foundation
import RealmSwift

// NOTE: - GOTO SDK π₯
public class FilterTask: Object {
    
    public enum TaskType: String, CaseIterable {
        case μν
        case λμ
    }
    
    @Persisted(primaryKey: true) private var typeString: String
    
     // public private(set) var type: TaskType private(set)μ΄ νμ€νΈμ½λ λλ¬Έμ μ΄μ΄μΌ ν  μλ μμ.
    public private(set) var type: TaskType {
        get { return TaskType(rawValue: typeString) ?? .μν }
        set { typeString = newValue.rawValue }
    }
    @Persisted public var isSubscribe: Bool
    
    convenience init(type: TaskType, isSubscribe: Bool = false) {
        self.init()
        
        self.type = type
        self.isSubscribe = isSubscribe // νμ€νΈμ½λ μμ±νλ€κ° μ΄κ±° λΉ μ§κ±° λ°κ²¬ν¨ γ γ 
    }
}
