// Xcode6 version
import UIKit


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

// subTotal = total / (taxPct + 1) // subtotal has no conflict
// replaced by the subTotal property above

    }

        func calcTipWithTipPct(tipPct:Double) -> Double {
        return subTotal * tipPct
    }


    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]

        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
        let intPct = Int(possibleTip * 100)

        retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }

}


let tipCalc = TipCalculator (total: 33.25, taxPct: 0.0875)
tipCalc.returnPossibleTips()




