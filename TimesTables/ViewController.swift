
import UIKit

class ViewController: UIViewController {

    
    var theSliderValue = 0
    var myResults = [0,0,0,0,0,0,0,0,0,0]
    var myStringResults = ["","","","","","","","","",""]
    var myNumbers = [1,2,3,4,5,6,7,8,9,10]

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var theTable: UITableView!
    
    @IBAction func updateSlider(sender: AnyObject) {
        
        reCalculate()
        self.theTable.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myNumbers.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        reCalculate()
        cell.textLabel?.text = myStringResults[indexPath.row]
        
        return cell
    }
    
    func reCalculate() {

        for (var i = 0; i < 10; i++) {
            theSliderValue = Int(slider.value)
            myResults[i] = myNumbers[i] * theSliderValue
            myStringResults[i] = "\(i) x \(theSliderValue) = \(myResults[i])"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

