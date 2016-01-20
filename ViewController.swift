// ThoughtElevators MP4/MP3 player, hacked together by Esa Ruoho&Tomi Boehm
// Video and Audio content bought from http://www.thoughtelevators.com/

    import UIKit
    import AVKit
    import AVFoundation


    class ViewController: UIViewController {

        enum MediaType: String {
            case mp4
            case mp3
            case wav
            var description: String { return rawValue }
        }
        struct Media {
            let title: String
            let type: MediaType }
        var medias = [
            Media(title: "Thought_Elevators_Video_Accelerated_Learning",  type: .mp4), // 0
            Media(title: "Thought_Elevators_Audio_Accelerated_Learning",  type: .mp3), // 1
            Media(title: "Thought_Elevators_Video_Anxiety_and_Stress_Relief", type: .mp4), // 2
            Media(title: "Thought_Elevators_Audio_Anxiety_and_Stress_Relief", type: .mp3), // 3
            Media(title: "Thought_Elevators_Video_Business_Success", type: .mp4), // 4
            Media(title: "Thought_Elevators_Audio_Business_Success", type: .mp3), // 5
            Media(title: "Thought_Elevators_Video_Energy",  type: .mp4), // 6
            Media(title: "Thought_Elevators_Audio_Energy",  type: .mp3), // 7
            Media(title: "Thought_Elevators_Video_Ideal_Partner", type: .mp4), // 8
            Media(title: "Thought_Elevators_Audio_Ideal_Partner", type: .mp3), // 9
            Media(title: "Thought_Elevators_Video_Ideal_Weight", type: .mp4), // 10
            Media(title: "Thought_Elevators_Audio_Ideal_Weight", type: .mp3), // 11
            Media(title: "Thought_Elevators_Video_Perfect_Health_and_Healing",  type: .mp4), // 12
            Media(title: "Thought_Elevators_Audio_Perfect_Health_and_Healing",  type: .mp3), // 13
            Media(title: "Thought_Elevators_Video_Relationships", type: .mp4), // 14
            Media(title: "Thought_Elevators_Audio_Relationships", type: .mp3), // 15
            Media(title: "Thought_Elevators_Video_Wealth_and_Money", type: .mp4), // 16
            Media(title: "Thought_Elevators_Audio_Wealth_and_Money", type: .mp3), // 17
            Media(title: "Thought_Elevators_Audio_Sleep", type: .mp3), // 18
            Media(title: "Thought_Elevators_Jingle", type: .wav) // 19
        ]
        
        var playerLayer = AVPlayerLayer()
        
        override func viewDidLoad() {
            super.viewDidLoad()
         NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDidFinishPlaying:", name: AVPlayerItemDidPlayToEndTimeNotification, object: nil)
        
        
        }

        func playMe(media: Media) {
            let path = NSBundle.mainBundle().pathForResource(media.title, ofType:media.type.rawValue)!
            let videoURL = NSURL(fileURLWithPath: path)
            let playerItem = AVPlayerItem(URL: videoURL)
            let player = AVPlayer(playerItem: playerItem)
            playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = self.view.bounds
            self.view.layer.addSublayer(playerLayer)
            player.play()
        
        
        }

       func itemDidFinishPlaying(notification: NSNotification) {
            playerLayer.removeFromSuperlayer()}

//////////////////////////////////////////////////////////////////////////
    // Accelerated Learning
    // Accelerated Learning Video
    @IBOutlet weak var learningButton: UIButton!
    @IBAction func learningVideoDidPress(sender: AnyObject) {self.playMe(medias[0])}
    // Accelerated Learning Audio
    @IBOutlet weak var learningAudioButton: UIButton!
    @IBAction func learningAudioDidPress(sender: AnyObject) {self.playMe(medias[1])}
    // Anxiety and Stress Relief
    // Anxiety Video
    @IBOutlet weak var anxietybutton: UIButton!
    @IBAction func anxietyButtonDidPress(sender: AnyObject) {self.playMe(medias[2])}
    // Anxiety Audio
    @IBOutlet weak var anxietyAudio: UIButton!
    @IBAction func anxietyAudioDidPress(sender: AnyObject) {self.playMe(medias[3])}
    // Business Success
    // Business Success Video
    @IBOutlet weak var BusinessButton: UIButton!
    @IBAction func BusinessVideoDidPress(sender: AnyObject) {self.playMe(medias[4])}
    // Business Success Audio
    @IBOutlet weak var BusinessAudioButton: UIButton!
    @IBAction func BusinessAudioDidPress(sender: AnyObject) {self.playMe(medias[5])}
    // Energy
    // Energy Video
    @IBOutlet weak var energyButton: UIButton!
    @IBAction func energyVideoDidPress(sender: AnyObject) {self.playMe(medias[6])}
    // Energy Audio
    @IBOutlet weak var EnergyAudioButton: UIButton!
    @IBAction func energyAudioDidPress(sender: AnyObject) {self.playMe(medias[7])}
    // Ideal Partner
    // Ideal Partner Video
    @IBOutlet weak var PartnerVideoButton: UIButton!
    @IBAction func PartnerVideoDidPress(sender: AnyObject) {self.playMe(medias[8])}
    // Ideal Partner Audio
    @IBOutlet weak var PartnerAudioButton: UIButton!
    @IBAction func PartnerAudioDidPress(sender: AnyObject) {self.playMe(medias[9])}
    // Ideal Weight
    // Ideal Weight Video
    @IBOutlet weak var WeightVideoButton: UIButton!
    @IBAction func WeightVideoDidPress(sender: AnyObject) {self.playMe(medias[10])}
    // Ideal Weight Audio
    @IBOutlet weak var WeightAudioButton: UIButton!
    @IBAction func WeightAudioDidPress(sender: AnyObject) {self.playMe(medias[11])}
    // Perfect Health and Healing
    // Perfect Health and Healing Video
    @IBOutlet weak var PerfectVideoButton: UIButton!
    @IBAction func PerfectVideoDidPress(sender: AnyObject) {self.playMe(medias[12])}
    // Perfect Health and Healing Audio
    @IBOutlet weak var PerfectAudioButton: UIButton!
    @IBAction func PerfectAudioDidPress(sender: AnyObject) {self.playMe(medias[13])}
    // Relationships
    // Relationships Video
    @IBOutlet weak var RelationshipsButton: UIButton!
    @IBAction func RelationshipsVideoDidPress(sender: AnyObject) {self.playMe(medias[14])}
    // Relationships Audio
    @IBOutlet weak var RelationshipsAudioButton: UIButton!
    @IBAction func RelationshipsAudioDidPress(sender: AnyObject) {self.playMe(medias[15])}
    // Wealth and Money
    // Wealth and Money Video
    @IBOutlet weak var WealthVideoButton: UIButton!
    @IBAction func WealthVideoDidPress(sender: AnyObject) {self.playMe(medias[16])}
    // Wealth and Money Audio
    @IBOutlet weak var WealthAudioButton: UIButton!
    @IBAction func WealthAudioDidPress(sender: AnyObject) {self.playMe(medias[17])}
    // Remainders
    // Sleep Audio
    @IBOutlet weak var SleepAudioButton: UIButton!
    @IBAction func SleepAudioDidPress(sender: AnyObject) {self.playMe(medias[18])}
    // Thought Elevators Jingle
    @IBOutlet weak var JingleAudioButton: UIButton!
    @IBAction func JingleAudioDidPress(sender: AnyObject) {self.playMe(medias[19])}
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()}
}