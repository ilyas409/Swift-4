// Using the Prototype design pattern to have objects
// that reflect different states of a basketball game as the game progresses

class BasketballGame : CustomStringConvertible{
    var description: String {
        return """
        \(homeTeam) against \(awayTeam)
        Quarter: \(currentQuarter)
        Score: \(currentHomeScore) - \(currentAwayScore)
        """
    }
    let homeTeam: String
    let awayTeam: String
    var currentQuarter = 1
    var currentHomeScore = 0
    var currentAwayScore = 0
    
    init(homeTeam: String, awayTeam: String) {
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
    }
    
    init(homeTeam: String, awayTeam: String,
         quarter: Int, homeScore: Int, awayScore: Int){
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        currentQuarter = quarter
        currentHomeScore = homeScore
        currentAwayScore = awayScore
    }
    
    func increnementQuarter(){
        if currentQuarter < 4{
            currentQuarter += 1
        }
    }
    func increnementHomeScore(points: Int){
        guard (points > 0) else {return}
        
        currentHomeScore += points
    }
    
    func increnementAwayScore(points: Int){
        guard (points > 0) else {return}
        
        currentAwayScore += points
    }
    
    func clone() -> BasketballGame {
        return BasketballGame(homeTeam: homeTeam, awayTeam: awayTeam,
                              quarter: currentQuarter,
                              homeScore: currentHomeScore,
                              awayScore: currentAwayScore)
    }
    
}

let game = BasketballGame(homeTeam: "Warriors", awayTeam: "Lakers")
game.increnementHomeScore(points: 22)
game.increnementAwayScore(points: 21)
game.increnementQuarter()
let firstQuarterResults = game.clone()

game.increnementHomeScore(points: 18)
game.increnementAwayScore(points: 25)
game.increnementQuarter()
let secondQuarterResults = game.clone()

game.increnementHomeScore(points: 26)
game.increnementAwayScore(points: 15)
game.increnementQuarter()
let thirdQuarterResults = game.clone()

print(firstQuarterResults)
print(secondQuarterResults)
print(thirdQuarterResults)

/*
Warriors against Lakers
Quarter: 2
Score: 22 - 21
Warriors against Lakers
Quarter: 3
Score: 40 - 46
Warriors against Lakers
Quarter: 4
Score: 66 - 61

*/