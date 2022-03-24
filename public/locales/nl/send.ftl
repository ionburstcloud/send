title = Send
importingFile = Importeren…
encryptingFile = Versleutelen…
decryptingFile = Ontsleutelen…
downloadCount =
    { $num ->
        [one] 1 download
       *[other] { $num } downloads
    }
timespanHours =
    { $num ->
        [one] 1 uur
       *[other] { $num } uur
    }
copiedUrl = Gekopieerd!
unlockInputPlaceholder = Wachtwoord
unlockButtonLabel = Ontgrendelen
downloadButtonLabel = Downloaden
downloadFinish = Downloaden voltooid
fileSizeProgress = ({ $partialSize } van { $totalSize })
sendYourFilesLink = Send proberen
errorPageHeader = Er is iets misgegaan!
fileTooBig = Dat bestand is te groot om te worden geüpload. Het moet kleiner zijn dan { $size }.
linkExpiredAlt = Koppeling verlopen
notSupportedHeader = Uw browser wordt niet ondersteund.
notSupportedLink = Waarom wordt mijn browser niet ondersteund?
notSupportedOutdatedDetail = Helaas ondersteunt deze versie van Firefox de webtechnologie die Send gebruikt niet. U dient uw browser bij te werken.
updateFirefox = Firefox bijwerken
deletePopupCancel = Annuleren
deleteButtonHover = Verwijderen
footerText = Niet gelieerd aan Mozilla of Firefox.
footerLinkDonate = Doneren
footerLinkCli = CLI
footerLinkDmca = DMCA
footerLinkSource = Broncode
passwordTryAgain = Onjuist wachtwoord. Probeer het opnieuw.
javascriptRequired = Send vereist JavaScript
whyJavascript = Waarom vereist Send JavaScript?
enableJavascript = Schakel JavaScript in en probeer het opnieuw.
# A short representation of a countdown timer containing the number of hours and minutes remaining as digits, example "13h 47m"
expiresHoursMinutes = { $hours }u { $minutes }m
# A short representation of a countdown timer containing the number of minutes remaining as digits, example "56m"
expiresMinutes = { $minutes }m
# A short status message shown when the user enters a long password
maxPasswordLength = Maximale wachtwoordlengte: { $length }
# A short status message shown when there was an error setting the password
passwordSetError = Dit wachtwoord kon niet worden ingesteld

## Send version 2 strings

-send-brand = Ionburst Cloud Send
-send-short-brand = IBC Send
-firefox = Firefox
-mozilla = Mozilla
introTitle = Bestanden delen, eenvoudig en privé 
introDescription = Met { -send-brand } kunt u bestanden delen met end-to-endversleuteling en een koppeling die automatisch verloopt. Hierdoor kunt u privé houden wat u wilt delen en er zeker van zijn dat uw zaken niet voor altijd online blijven.
notifyUploadEncryptDone = Uw bestand is versleuteld en klaar voor verzending
# downloadCount is from the downloadCount string and timespan is a timespanMinutes string. ex. 'Expires after 2 downloads or 25 minutes'
archiveExpiryInfo = Verloopt na { $downloadCount } of { $timespan }
timespanMinutes =
    { $num ->
        [one] 1 minuut
       *[other] { $num } minuten
    }
timespanDays =
    { $num ->
        [one] 1 dag
       *[other] { $num } dagen
    }
timespanWeeks =
    { $num ->
        [one] 1 week
       *[other] { $num } weken
    }
fileCount =
    { $num ->
        [one] 1 bestand
       *[other] { $num } bestanden
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
fileSize = { $num } { $units }
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
totalSize = Totale grootte: { $size }
# the next line after the colon contains a file name
copyLinkDescription = Kopieer de koppeling om uw bestand te delen:
copyLinkButton = Koppeling kopiëren
downloadTitle = Bestanden downloaden
downloadDescription = Dit bestand is gedeeld via { -send-brand } met end-to-endversleuteling en een koppeling die automatisch verloopt.
trySendDescription = Probeer { -send-brand } voor eenvoudig, veilig bestanden delen.
# count will always be > 10
tooManyFiles =
    { $count ->
        [one] Er kan slechts één bestand tegelijk worden geüpload.
       *[other] Er kunnen slechts { $count } bestanden tegelijk worden geüpload.
    }
# count will always be > 10
tooManyArchives =
    { $count ->
        [one] Slechts één archief is toegestaan.
       *[other] Slechts { $count } archieven zijn toegestaan.
    }
expiredTitle = Deze koppeling is verlopen.
notSupportedDescription = { -send-brand } werkt niet met deze browser. { -send-short-brand } werkt het beste met de nieuwste versie van { -firefox }, en werkt met de huidige versie van de meeste browsers.
downloadFirefox = { -firefox } downloaden
legalTitle = Privacybeleid van { -send-short-brand }
legalDateStamp = Versie 1.0 d.d. 12 maart 2019
# A short representation of a countdown timer containing the number of days, hours, and minutes remaining as digits, example "2d 11h 56m"
expiresDaysHoursMinutes = { $days }d { $hours }u { $minutes }m
addFilesButton = Selecteer te uploaden bestanden
uploadButton = Uploaden
# the first part of the string 'Drag and drop files or click to send up to 1GB'
dragAndDropFiles = Versleep bestanden
# the second part of the string 'Drag and drop files or click to send up to 1GB'
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
orClickWithSize = of klik om tot { $size } te versturen
addPassword = Beveiligen met wachtwoord
emailPlaceholder = Voer uw e-mailadres in
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
signInSizeBump = Meld u aan om tot { $size } te versturen
signInOnlyButton = Aanmelden
accountBenefitTitle = Maak een { -firefox }-account of meld u aan
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
accountBenefitLargeFiles = Bestanden tot { $size } delen
accountBenefitDownloadCount = Bestanden met meerdere personen delen
accountBenefitTimeLimit =
    { $count ->
        [one] Koppelingen tot één dag actief houden
       *[other] Koppelingen tot { $count } dagen actief houden
    }
accountBenefitSync = Gedeelde bestanden vanaf andere apparaten beheren
accountBenefitMoz = Info over andere services van { -mozilla }
signOut = Afmelden
okButton = OK
downloadingTitle = Downloaden
noStreamsWarning = Deze browser kan een bestand van deze omvang mogelijk niet ontcijferen.
noStreamsOptionCopy = Koppeling kopiëren om in een andere browser te openen
noStreamsOptionFirefox = Onze favoriete browser proberen
noStreamsOptionDownload = Doorgaan met deze browser
downloadFirefoxPromo = { -send-short-brand } wordt u aangeboden door het volledig vernieuwde { -firefox }.
# the next line after the colon contains a file name
shareLinkDescription = Deel de koppeling naar uw bestand:
shareLinkButton = Koppeling delen
# $name is the name of the file
shareMessage = Download ‘{ $name }’ met { -send-brand }: eenvoudig, veilig bestanden delen
trailheadPromo = Er is een manier om uw privacy te beschermen. Doe mee met Firefox.
learnMore = Meer info.
