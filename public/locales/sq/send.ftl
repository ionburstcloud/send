title = Send
importingFile = Po importohet…
encryptingFile = Po fshehtëzohet…
decryptingFile = Po shfshehtëzohet…
downloadCount =
    { $num ->
        [one] 1 shkarkimi
       *[other] { $num } shkarkimesh
    }
timespanHours =
    { $num ->
        [one] 1 ore
       *[other] { $num } orësh
    }
copiedUrl = U kopjua!
unlockInputPlaceholder = Fjalëkalim
unlockButtonLabel = Zhbllokoje
downloadButtonLabel = Shkarkoje
downloadFinish = Shkarkim i Plotësuar
fileSizeProgress = ({ $partialSize } nga { $totalSize }) gjithsej
sendYourFilesLink = Provoni Send
errorPageHeader = Diç shkoi ters!
fileTooBig = Kjo kartelë është shumë e madhe për ngarkim. Do të duhej të ishte më pak se { $size }.
linkExpiredAlt = Lidhja skadoi
notSupportedHeader = Shfletuesi juaj nuk mbulohet.
notSupportedLink = Pse nuk mbulohet ky shfletues?
notSupportedOutdatedDetail = Mjerisht, ky version i Firefox-it nuk e mbulon teknologjinë web mbi të cilën bazohet Send. Do t’ju duhet të përditësoni shfletuesin tuaj.
updateFirefox = Përditësojeni Firefox-in
deletePopupCancel = Anuloje
deleteButtonHover = Fshije
passwordTryAgain = Fjalëkalim i pasaktë. Riprovoni.
javascriptRequired = Send lyp JavaScript
whyJavascript = Ç’i duhet Send-it JavaScript-i?
enableJavascript = Ju lutemi, aktivizoni JavaScript-in dhe riprovoni.
# A short representation of a countdown timer containing the number of hours and minutes remaining as digits, example "13h 47m"
expiresHoursMinutes = { $hours }h { $minutes }m
# A short representation of a countdown timer containing the number of minutes remaining as digits, example "56m"
expiresMinutes = { $minutes }m
# A short status message shown when the user enters a long password
maxPasswordLength = Gjatësi maksimum fjalëkalimi: { $length }
# A short status message shown when there was an error setting the password
passwordSetError = Ky fjalëkalim s’u caktua dot

## Send version 2 strings

-send-brand = Ionburst Cloud Send
-send-short-brand = IBC Send
-firefox = Firefox
-mozilla = Mozilla
introTitle = Ndarje e thjeshtë, private, kartelash me të tjerët
introDescription = { -send-brand } ju lejon të ndani kartela me të tjerët, me fshehtëzim skaj-më-skaj dhe me një lidhje që skadon automatikisht. Kështu mund ta mbani private atë që ndani me të tjerë dhe të garantoni që gjërat tuaja s’do të qëndrojnë në linjë përgjithmonë.
notifyUploadEncryptDone = Kartela juaj është fshehtëzuar dhe gati për dërgim
# downloadCount is from the downloadCount string and timespan is a timespanMinutes string. ex. 'Expires after 2 downloads or 25 minutes'
archiveExpiryInfo = Skadon pas { $downloadCount } ose { $timespan }
timespanMinutes =
    { $num ->
        [one] 1 minutë
       *[other] { $num } minuta
    }
timespanDays =
    { $num ->
        [one] 1 ditë
       *[other] { $num } ditë
    }
timespanWeeks =
    { $num ->
        [one] 1 javë
       *[other] { $num } javë
    }
fileCount =
    { $num ->
        [one] 1 kartelë
       *[other] { $num } kartela
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
totalSize = Madhësia gjithsej: { $size }
# the next line after the colon contains a file name
copyLinkDescription = Kopjoni lidhjen për dhënien e kartelës tuaj:
copyLinkButton = Kopjoje lidhjen
downloadTitle = Shkarkoni kartela
downloadDescription = Kjo kartelë u nda me të tjerët përmes { -send-brand }, me fshehtëzim skaj-më-skaj dhe një lidhje që skadon automatikisht.
trySendDescription = Provoni { -send-brand }, për ndarje të thjeshtë, të parrezik, kartelash me të tjerët.
# count will always be > 10
tooManyFiles =
    { $count ->
        [one] Mund të ngarkohet vetëm 1 kartelë në herë.
       *[other] Mund të ngarkohen vetëm { $count } kartela në herë.
    }
# count will always be > 10
tooManyArchives =
    { $count ->
        [one] Lejohet vetëm 1 arkiv.
       *[other] Lejohen vetëm { $count } arkiva.
    }
expiredTitle = Kjo lidhje ka skaduar.
notSupportedDescription = { -send-brand } s’do të funksionojë me këtë shfletues. { -send-short-brand } funksionin më mirë me versionin më të ri të { -firefox }, dhe do të funksionojë me versionin e tanishëm të shumicës së shfletuesve.
downloadFirefox = Shkarkoni { -firefox }
legalTitle = Njoftim Privatësie Për { -send-short-brand }
legalDateStamp = Version 1.0, daton 12 mars, 2019
# A short representation of a countdown timer containing the number of days, hours, and minutes remaining as digits, example "2d 11h 56m"
expiresDaysHoursMinutes = { $days }d { $hours }h { $minutes }m
addFilesButton = Përzgjidhni kartela për ngarkim
uploadButton = Ngarkoje
# the first part of the string 'Drag and drop files or click to send up to 1GB'
dragAndDropFiles = Tërhiqni dhe lini kartela
# the second part of the string 'Drag and drop files or click to send up to 1GB'
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
orClickWithSize = ose klikoni që të dërgohen deri në { $size }
addPassword = Mbrojini me fjalëkalim
emailPlaceholder = Jepni email-in tuaj
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
signInSizeBump = Bëni hyrjen që të dërgoni deri më { $size }
signInOnlyButton = Hyni
accountBenefitTitle = Krijoni një Llogari { -firefox } ose bëni hyrjen në një të tillë
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
accountBenefitLargeFiles = Ndani me të tjerët kartela deri { $size }
accountBenefitDownloadCount = Ndani kartela me më tepër persona
accountBenefitTimeLimit =
    { $count ->
        [one] Mbaji aktive lidhjet për deri 1 ditë
       *[other] Mbaji aktive lidhjet për deri { $count } ditë
    }
accountBenefitSync = Administroni nga çfarëdo pajisje kartela të përbashkëta
accountBenefitMoz = Mësoni më tepër rreth shërbimesh { -mozilla }
signOut = Dilni
okButton = OK
downloadingTitle = Shkarkim
noStreamsWarning = Ky shfletues mund të mos jetë në gjendje të shfshehtëzojë një kartelë kaq të madhe.
noStreamsOptionCopy = Kopjoje lidhjen për ta hapur në një tjetër shfletues
noStreamsOptionFirefox = Provoni shfletuesin tonë të parapëlqyer
noStreamsOptionDownload = Vazhdo me këtë shfletues
downloadFirefoxPromo = { -send-short-brand } ju vjen nga { -firefox }-i i ri fringo.
# the next line after the colon contains a file name
shareLinkDescription = Ndani me të tjerët lidhjen për te kartela juaj:
shareLinkButton = Ndani me të tjerët lidhjen
# $name is the name of the file
shareMessage = Shkarkojeni “{ $name }” me { -send-brand }: shkëmbim kartelash dhe thjesht dhe pa rrezik
trailheadPromo = Ka një rrugë për të mbrojtur privatësinë tuaj. Bëhuni pjesë e Firefox-it.
learnMore = Mësoni më tepër.
