
import Foundation
import RxSwift

extension ObservableType {
    func map<T: Convertible where T.TIn == E>(converter: T) -> Observable<T.TOut> {
        return self.map { value -> T.TOut in
            return converter.convert(value)
        }
    }
}