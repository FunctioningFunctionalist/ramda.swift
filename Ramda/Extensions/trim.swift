//
// Created by Justin Guedes on 2016/09/23.
//

import Foundation

extension R {

    /**

        Removes (strips) whitespace from both ends of the string.

        - parameter string: String to trim.

        - returns: Trimmed string.

    */

    public class func trim(_ string: String) -> String {
        let characterSet = CharacterSet.whitespacesAndNewlines
        return string.trimmingCharacters(in: characterSet)
    }

}
