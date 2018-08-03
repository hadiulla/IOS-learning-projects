import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    var targetValue = 0
    var level = 0
    var totalScore = 0
    @IBOutlet weak var slider : UISlider!
    @IBOutlet weak var targetScore: UILabel!
    @IBOutlet weak var totalScoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeLevel(currentScore: 0)
    }
    
    func changeLevel(currentScore: Int){
        targetValue = 1 + Int(arc4random_uniform(100))
        targetScore.text = "\(targetValue)"
        totalScore += currentScore
        totalScoreLabel.text = "\(totalScore)"
        roundLabel.text = "\(level)"
        level += 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert(){
        var currentScore = 0
        currentValue = lroundf(slider.value)
        if (Double(currentValue) > Double(targetValue)){
            currentScore = lround(((Double(targetValue)/Double(currentValue))*100))
        }else{
            currentScore = lround(((Double(currentValue)/Double(targetValue))*100))
        }
        let alert = UIAlertController(title: "Silder value", message: "Expected Value = \(targetValue)\nCurrent value = \(currentValue)\nYou got \(currentScore) points", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        changeLevel(currentScore: currentScore)
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        //print("The value of slider is \(Int(slider.value))")
        currentValue = lroundf(slider.value)
    }

}

