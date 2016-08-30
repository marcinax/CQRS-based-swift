
import Foundation
import RealmSwift
import RxSwift

final class RealmGetTrainingTotalReps : ContextOperational {
    let trainingType: TrainingType
    
    init(trainingType: TrainingType){
        self.trainingType = trainingType
    }
    
    func execute(context: Realm) -> Int {
        let sum: Int = context.objects(TrainingStatisticRealm.self)
            .filter("trainingType == %@", trainingType.rawValue)
            .sum("totalReps")
        
        return sum
    }
}