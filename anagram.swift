func anagram(_ a: String, _ b: String){
    var arr1 = Array.init(repeating: 0, count: 26) ; var arr2 = Array.init(repeating: 0, count: 26)
    let ascii = "a".unicodeScalars.first?.value
    var count = 0
    
    for c in a{
        let t = Int((c.unicodeScalars.first?.value)! - ascii!)
        arr1[t] += 1
    }
    for c in b{
        let t = Int((c.unicodeScalars.first?.value)! - ascii!)
        arr2[t] += 1
    }
    
    for i in 0...25{
        count += abs(arr1[i] - arr2[i])
    }
    
    print(count)
}
