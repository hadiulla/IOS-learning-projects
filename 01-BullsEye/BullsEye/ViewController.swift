import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    var targetValue = 0
    @IBOutlet weak var slider : UISlider!
    @IBOutlet weak var targetScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        //changeLevel()
    }
    
    func changeLevel(){
        targetValue = 1 + Int(arc4random_uniform(100))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert(){
        //let alert = UIAlertController(title: "Silder value", message: "The value of slider is \(currentValue)", preferredStyle: .alert)
        //let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //alert.addAction(action)
        //present(alert,animated: true,completion: nil)
        currentValue = lroundf(slider.value)
        targetScore.text = "\(currentValue)"
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        //print("The value of slider is \(Int(slider.value))")
        currentValue = lroundf(slider.value)
    }

}

