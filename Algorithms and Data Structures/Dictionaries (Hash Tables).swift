// empty dict:
var emptyDict: [Int: Int] = [:]

// initialize dict with values:
var dict: [Int: Int] = [10:20, 20:30]

// check if key present:
let key = 1
// optional already unrapped via if let
if let val = dict(key){
    //present
}

// optional not unwrapped
if dict[key] != nil{

}

// insert elements:
dict[1] = 2
dict[2] = 3
dict[3] = 4

// iterate through the dictionary getting keys and values separately:
for (k, v) in dict{
    print(k, v)
}

// iterate through the dictionary getting keys and values as a pair:
for pair in dict{
    print(pair)
}
