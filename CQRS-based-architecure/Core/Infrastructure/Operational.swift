
import Foundation
import RxSwift

protocol Operational {
    associatedtype TOut
    func execute() -> TOut
}