// Xcode6 version
import UIKit
import Foundation

class TipCalculator {
    var total: Double
    var taxPct: Double
    var subTotal: Double { // this is now a computed property
        get {
            return total / (taxPct + 1)
        }
        set(newSubtotal){

        }
    }

   init(total:Double, taxPct:Double) {
    self.total = total // "self." added here for for uniquness
    self.taxPct = taxPct // and here as well.



    }

        func calcTipWithTipPct(tipPct:Double) -> Double {
        return subTotal * tipPct
    }


    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]

        var retval = [Int: Double]()
        /////////////////////////////////
        var keys = Array(possibleTip.keys)
        sort(&keys)
        for tipPct in Keys {
            let tipValue = possibleTip[tipPct]!
            let prettyTipValue = String (format:"%.2f",tipValue)
            results += "\(tipPct)%: \(prettyTipValue)\n"
        }
//        for possibleTip in possibleTipsInferred {
//        let intPct = Int(possibleTip * 100)
//
//        retval[intPct] = calcTipWithTipPct(possibleTip)
//        }
        return retval
    }

}


// let tipCalc = TipCalculator (total: 33.25, taxPct: 0.0875)
// tipCalc.returnPossibleTips()




