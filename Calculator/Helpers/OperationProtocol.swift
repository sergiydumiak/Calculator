//
//  OperationProtocol.swift
//  Calculator
//
//  Created by Pavlo Dumyak on 24.08.2021.
//

import Foundation
// T - Generic - вхідні числа можуть бути різних типів, читайте про дженеріки
protocol OperationProtocol {
    func add<T: Numeric>(first: T, second: T) -> T
    func sub<T: Numeric>(first: T, second: T) -> T
    func mul<T: Numeric>(first: T, second: T) -> T
    func div<T: Numeric>(first: T, second: T) -> T
    func square<T: Numeric>(number: T) -> T
    
    // TODO: - Add another
}


