import UIKit

var link = "https://app.codesignal.com/tournaments/Zva9fWv7yewDmzpot/H/solutions/BnPBqzrLcfrQRvwZn"

func isSuspiciousRespondent(ans1: Bool, ans2: Bool, ans3: Bool) -> Bool {
    return ans1 == ans2 && ans1 == ans3
}

isSuspiciousRespondent(ans1: true, ans2: true, ans3: false)
