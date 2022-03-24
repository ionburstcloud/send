title = Send
importingFile = Hìaj a'nïn huan'ānj…
encryptingFile = Nagi'iaj hùij…
decryptingFile = Hìaj nâ'nïn…
downloadCount =
    { $num ->
        [one] 1 sa nadunin
       *[other] { $num } nej sa nadunin
    }
timespanHours =
    { $num ->
        [one] 1 ôra
       *[other] { $num } nej ôra
    }
copiedUrl = Ngà gisîj guxunj!
unlockInputPlaceholder = Da'nga' huìi
unlockButtonLabel = Na'nïn riñanj
downloadButtonLabel = Nadunïnj
downloadFinish = Ngà nahui nanïnj
fileSizeProgress = ({ $partialSize } guendâ { $totalSize })
sendYourFilesLink = Garahuè dàj 'iaj sun Send
errorPageHeader = Huā sa gahui a'nan'!
fileTooBig = Ûta yachìj hua archibô dan. Da'ui gā li doj ga da' { $size }
linkExpiredAlt = Nitāj si ni'ñānj lînk gà'
notSupportedHeader = Nitāj si huā hue'ê riña sa nana'uî't.
notSupportedLink = Nù huin saj nitāj si huā hue'ê riña sa nana'uí?
notSupportedOutdatedDetail = Nu unùkuaj Firefox nan gi'iaj sunj ngà sa 'iaj sun ngà Send. Da'uît nāgi'iaj nakàt riña sa nana'uî't han.
updateFirefox = Nagi'iaj nakà Firefox
deletePopupCancel = Duyichin'
deleteButtonHover = Dure'
passwordTryAgain = Sê da'nga' huì dan huin. Ginù huin ñû.
javascriptRequired = Ni'ñānj Send JavaScript
whyJavascript = Nù huin saj ni'ñānj Send JavaScript rà'aj?
enableJavascript = Gi'iaj sunūj u ga'nïn gi'iaj sun JavaScript nī yakāj da'nga' ñû.
# A short representation of a countdown timer containing the number of hours and minutes remaining as digits, example "13h 47m"
expiresHoursMinutes = { $hours }h { $minutes }m
# A short representation of a countdown timer containing the number of minutes remaining as digits, example "56m"
expiresMinutes = { $minutes }m
# A short status message shown when the user enters a long password
maxPasswordLength = Dānaj gā yachìj da'nga huìi: { $length }
# A short status message shown when there was an error setting the password
passwordSetError = Na'ue gārayinaj da'nga huìi

## Send version 2 strings

-send-brand = Ionburst Cloud Send
-send-short-brand = IBC Send
-firefox = Firefox
-mozilla = Mozilla
introTitle = Hìo nī huì ga’ue duyingâ’t archîbo
introDescription = { -send-brand } a’nïn duyingâ’t archîbo ngà ‘ngō da’nga’rán hia nī ngà ‘ngō lînk nare’ man‘an. Dànanj nī ‘ngō rïnt ni’in sa duyingâ’t nī si lînk si ginu yitïn riña lînia.
notifyUploadEncryptDone = Ngà huā ran si archibôt nī ngà huā yugui da’ ga’nïnjt gan’an
# downloadCount is from the downloadCount string and timespan is a timespanMinutes string. ex. 'Expires after 2 downloads or 25 minutes'
archiveExpiryInfo = Narè’ man ne’ rukù { $downloadCount } asi { $timespan }
timespanMinutes =
    { $num ->
        [one] 1 minûtu
       *[other] { $num } minûtu
    }
timespanDays =
    { $num ->
        [one] 1 gui
       *[other] { $num } gui
    }
timespanWeeks =
    { $num ->
        [one] 1 semâna
       *[other] { $num } semâna
    }
fileCount =
    { $num ->
        [one] 1 archîbo
       *[other] { $num } archîbo
    }
# byte abbreviation
bytes = B
# kibibyte abbreviation
kb = KB
# mebibyte abbreviation
mb = MB
# gibibyte abbreviation
gb = GB
# localized number and byte abbreviation. example "2.5MB"
fileSize = { $num }{ $units }
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
totalSize = Dàj nìko yàchi: { $size }
# the next line after the colon contains a file name
copyLinkDescription = Guxūn lînk da' ga'ue duyingâ't archibô:
copyLinkButton = Guxûn lînk
downloadTitle = Nadunïnj nej archîbo
downloadFirefox = Nadunïnj { -firefox }
legalTitle = Nuguan huì nikāj { -send-short-brand }
signOut = Narun' sesiôn
okButton = Ga'ue
shareLinkButton = Duguachîn enlâse
