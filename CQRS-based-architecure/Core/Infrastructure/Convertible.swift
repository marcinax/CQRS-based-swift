
import Foundation

protocol Convertible {
    associatedtype TIn
    associatedtype TOut
    func convert(value: TIn) -> TOut
}