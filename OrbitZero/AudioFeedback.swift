import AVFoundation
import UIKit

final class AudioFeedback {
    static let shared = AudioFeedback()
    enum Sound: String { case start, success, perfect, failure, boss }
    enum Haptic { case light, success, failure }
    private var players: [Sound: AVAudioPlayer] = [:]

    private init() {
        try? AVAudioSession.sharedInstance().setCategory(.ambient, options: [.mixWithOthers])
        for sound in [Sound.start, .success, .perfect, .failure, .boss] {
            guard let file = Bundle.main.url(forResource: sound.rawValue, withExtension: "wav"),
                  let player = try? AVAudioPlayer(contentsOf: file) else { continue }
            player.prepareToPlay()
            players[sound] = player
        }
    }

    func play(_ sound: Sound, enabled: Bool) {
        guard enabled, let player = players[sound] else { return }
        player.currentTime = 0
        player.play()
    }

    func haptic(_ type: Haptic, enabled: Bool) {
        guard enabled else { return }
        switch type {
        case .light: UIImpactFeedbackGenerator(style: .light).impactOccurred()
        case .success: UINotificationFeedbackGenerator().notificationOccurred(.success)
        case .failure: UINotificationFeedbackGenerator().notificationOccurred(.error)
        }
    }
}
