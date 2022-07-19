class Solution {
    func romanToInt(_ s: String) -> Int {
        var result: Int = 0
        let romanSymbols = Array(s)

        for i in 0...(romanSymbols.count - 1) {
            if romanSymbols[i] == "I" {
                if i <= romanSymbols.count - 2, (romanSymbols[i+1] == "V" || romanSymbols[i+1] == "X"){
                    result -= 1
                } else {
                    result += 1
                }
            } else if romanSymbols[i] == "V" {
                result += 5
            } else if romanSymbols[i] == "X" {

                if i <= romanSymbols.count - 2, (romanSymbols[i+1] == "L" || romanSymbols[i+1] == "C") {
                    result -= 10
                } else {
                    result += 10
                }

            } else if romanSymbols[i] == "L" {
                result += 50

            } else if romanSymbols[i] == "C" {
                if i <= romanSymbols.count - 2, (romanSymbols[i+1] == "D" || romanSymbols[i+1] == "M") {
                    result -= 100
                } else {
                    result += 100
                }
            } else if romanSymbols[i] == "D" {
                result += 500
            } else if romanSymbols[i] == "M" {
                result += 1000
            }
        }
        return result
    }
}
