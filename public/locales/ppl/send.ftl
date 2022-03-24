title = Send
importingFile = Mukalaktia nemi…
encryptingFile = Tikichtakawiat tinemit…
decryptingFile = Tikichtakapuat tinemit…
downloadCount =
    { $num ->
        [one] temultijtuk
       *[other] { $num } temultijtuk
    }
timespanHours =
    { $num ->
        [one] oraj
       *[other] { $num } oraj
    }
copiedUrl = Muishkupintuk!
unlockInputPlaceholder = Ichtakatajkwilul
unlockButtonLabel = Shiktapua
downloadButtonLabel = Shiktemulti
downloadFinish = Senkiska mutemultij
fileSizeProgress = ({ $partialSize } ipal { $totalSize })
sendYourFilesLink = Shikejeku Send
errorPageHeader = IJtakawtuk!
fileTooBig = Ini tajkwilul sujsul etek pal tiktejkultia. Ma nemi san { $size }.
linkExpiredAlt = Ne ilpika pulijtuk
notSupportedHeader = Te tikishmatit ne mutachialuni.
notSupportedLink = Taika te ankishmatit nutachialuni?
notSupportedOutdatedDetail = Ini tamakalis ipal Firefox tesu kimati ne tzawaltekitilis ne kiyulitia Send. Nemi pal tikyankwilia ne mutachialuni.
updateFirefox = Shikyankwili Firefox
deletePopupCancel = Shikilwi tesu
deleteButtonHover = Shikpulu
passwordTryAgain = Ne ichtakatajkwilul tesu yek. Shikejeku uksenpa.
javascriptRequired = Send muneki JavaScript
whyJavascript = Taika Send muneki JavaScript?
enableJavascript = Shichiwa ma JavaScript tekiti wan shikejeku uksenpa.
# A short representation of a countdown timer containing the number of hours and minutes remaining as digits, example "13h 47m"
expiresHoursMinutes = { $hours }h { $minutes }m
# A short representation of a countdown timer containing the number of minutes remaining as digits, example "56m"
expiresMinutes = { $minutes }m
# A short status message shown when the user enters a long password
maxPasswordLength = Ne iweyaka ne ichtakatajkwilul muneki: { $length }
# A short status message shown when there was an error setting the password
passwordSetError = Te tiweliket tiktaliat ini ichtakataketzalis

## Send version 2 strings

-send-brand = Ionburst Cloud Send
-send-short-brand = Shiktitani
-firefox = Firefox
-mozilla = Mozilla
introTitle = Shikmajmaka se tajkwilul, te uij wan ichtaka
introDescription = { -send-brand } metzpalewia tikmajmaka se tajkwilul iwan taichtakawilis wan se ilpika puliwi nemanha. Yajika, tikpia muichtakayu pal tikmajmaka wan tesu naka senpa mutajtatka tik matapan.
notifyUploadEncryptDone = Ne archivoj nemi ichtakawijtuk wan weli tiktitania
# downloadCount is from the downloadCount string and timespan is a timespanMinutes string. ex. 'Expires after 2 downloads or 25 minutes'
archiveExpiryInfo = Puliwi kwak ajsi { $downloadCount } ush { $timespan }
timespanMinutes =
    { $num ->
        [one] { $num } minutoj
       *[other] { $num } minutoj
    }
timespanDays =
    { $num ->
        [one] { $num } tunal
       *[other] { $num } tunal
    }
timespanWeeks =
    { $num ->
        [one] { $num } semanaj
       *[other] { $num } semanaj
    }
fileCount =
    { $num ->
        [one] { $num } tajkwilul
       *[other] { $num } tajkwilul
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
totalSize = Itamachiwka: { $size }
# the next line after the colon contains a file name
copyLinkDescription = Shikishkupina ne ilpika pal tikmajmaka mutajkwilul:
copyLinkButton = Shikishkupina ne ilpika
downloadTitle = Shiktemulti tajkwilul
downloadDescription = Ini tajkwilul kiski itech { -send-brand } iwan taichtakawilis wan se ilpika ka puliwi nemanha.
trySendDescription = Shikejeku { -send-brand } wan shiktakuli ichtaka wan te uij.
# count will always be > 10
tooManyFiles =
    { $count ->
        [one] Semaya se tajkwilul weli pal tiktejkultia sansepa.
       *[other] Semaya { $count } tajkwilul weli pal tiktejkultia sansepa.
    }
# count will always be > 10
tooManyArchives =
    { $count ->
        [one] Semaya se amapial weli mutitania.
       *[other] Semaya { $count } amapial weli mutitania.
    }
expiredTitle = Ne ilpika puliwik.
notSupportedDescription = { -send-brand } tesu yawi tekiti iwan ini tachialuni. { -send-short-brand } tekiti sujsul yek iwan ne tipan tamakalis ipal { -firefox }, wan nusan iwan ne tipan tamakalis ipal miak tachialuni.
downloadFirefox = Shiktemulti { -firefox }
legalTitle = { -send-short-brand } Tanawatilis ipanpa teichtakayu
legalDateStamp = Tamakalis 1.0, tik marzoj 12, 2019
# A short representation of a countdown timer containing the number of days, hours, and minutes remaining as digits, example "2d 11h 56m"
expiresDaysHoursMinutes = { $days } t { $hours } h { $minutes } m
addFilesButton = Shikpejpena ne tajkwilul pal tiktejkultia
uploadButton = Shiktejkulti
# the first part of the string 'Drag and drop files or click to send up to 1GB'
dragAndDropFiles = Shiktilana wan shikmayawi ne tajkwilul
# the second part of the string 'Drag and drop files or click to send up to 1GB'
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
orClickWithSize = u shikpachu pal tiktitania { $size }
addPassword = Shiktajpia iwan ichtakatajkwilul
emailPlaceholder = Shiktali mutepusamaw
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
signInSizeBump = Shiktali mutukay pal tiktitania { $size }
signInOnlyButton = Shiktali mutukay
accountBenefitTitle = Shikchiwa se mutapujka tik { -firefox } ush shiktali mutukay
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
accountBenefitLargeFiles = Shiktakuli tajtajkwilul ka { $size }
accountBenefitDownloadCount = Shiktakuli tajtajkwilul iwan seuk
accountBenefitTimeLimit =
    { $count ->
        [one] Shikpia ne ilpika tapujtuk 1 tunal
       *[other] Shikpia ne ilpika tapujtuk { $count } tunal
    }
accountBenefitSync = Shiktajpia ne tajkwilul takulijtuk ka kanaj
accountBenefitMoz = Shikmati ipanpa ukse { -mozilla } tayekultilis
signOut = Shikisa
okButton = Yek
downloadingTitle = Kitemultia nemi
noStreamsWarning = Ini tachialuni anka te weli kichtakapua ini tajkwilul wey.
noStreamsOptionCopy = Shikishkupina ne ilpika pal tiktapua tik ukse tachialuni
noStreamsOptionFirefox = Shikejeku ne tachialuni tikishwelitat
noStreamsOptionDownload = Ma ninemi senpa iwan ini tachialuni
downloadFirefoxPromo = Ne yankwik { -firefox } metzwikilia { -send-short-brand }.
# the next line after the colon contains a file name
shareLinkDescription = Shiktakuli ne ilpika ipal mutajkwilul:
shareLinkButton = Shiktakuli ne ilpika
# $name is the name of the file
shareMessage = Shiktemulti “{ $name }” iwan { -send-brand }: ichtaka wan te uij
trailheadPromo = Nemi ken pal tiktajpia ne muichtakayu. Shimuishtuka iwan Firefox.
learnMore = Shimumachti ukchupi.
