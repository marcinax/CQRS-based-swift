
import Foundation

protocol Providing {
    func execute<TOut, O: Operational where O.TOut == TOut>(operation: O) -> TOut
}