@echo off
title Samsung Debloater & Tweaker by dehfoucw
color 0A

echo ===========================================
echo       DEBLOATED & TWEAKED FOR SAMSUNG
echo            by dehfoucw @ GitHub
echo ===========================================
echo.

REM Check if adb is available
where adb >nul 2>&1
if errorlevel 1 (
    echo ERROR: adb.exe not found in PATH. Please make sure ADB is installed and added to system PATH.
    pause
    exit /b
)

REM Check for device connection
:check_device
adb devices
for /f "tokens=1,2" %%a in ('adb devices') do (
    if "%%b"=="unauthorized" (
        echo Device is unauthorized. Please check your phone for the authorization prompt.
        timeout /t 5 >nul
        goto check_device
    )
    if "%%b"=="device" (
        echo Device is connected and authorized.
    )
)




@echo off
echo --------------------------------------
echo removing bloatware...
adb devices
adb shell pm uninstall --user 0 com.android.emergency
adb shell pm uninstall --user 0 com.google.android.gms.location.history
adb shell pm uninstall --user 0 com.samsung.android.mdx.kit
adb shell pm uninstall --user 0 com.samsung.android.mdx.quickboard
adb shell pm uninstall --user 0 com.samsung.android.samsungpositioning
adb shell pm uninstall --user 0 com.sec.android.emergencymode.service
adb shell pm uninstall --user 0 android.autoinstalls.config.samsung
adb shell pm uninstall --user 0 com.android.bips
adb shell pm uninstall --user 0 com.android.bookmarkprovider
adb shell pm uninstall --user 0 com.android.cts.ctsshim
adb shell pm uninstall --user 0 com.android.cts.priv.ctsshim
adb shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle
adb shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle
adb shell pm uninstall --user 0 com.android.htmlviewer
adb shell pm uninstall --user 0 com.android.managedprovisioning
adb shell pm uninstall --user 0 com.android.printspooler
adb shell pm uninstall --user 0 com.android.providers.partnerbookmarks
adb shell pm uninstall --user 0 com.android.stk
adb shell pm uninstall --user 0 com.android.stk2
adb shell pm uninstall --user 0 com.android.traceur
adb shell pm uninstall --user 0 com.aura.oobe.samsung
adb shell pm uninstall --user 0 com.google.android.apps.carrier.carrierwifi
adb shell pm uninstall --user 0 com.google.android.apps.messaging
adb shell pm uninstall --user 0 com.google.android.apps.restore
adb shell pm uninstall --user 0 com.google.android.apps.setupwizard.searchselector
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.google.android.apps.turbo
adb shell pm uninstall --user 0 com.google.android.as
adb shell pm uninstall --user 0 com.google.android.as.oss
adb shell pm uninstall --user 0 com.google.android.cellbroadcastreceiver
adb shell pm uninstall --user 0 com.google.android.feedback
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall --user 0 com.google.android.healthconnect.controller
adb shell pm uninstall --user 0 com.google.android.nearby.halfsheet
adb shell pm uninstall --user 0 com.google.android.partnersetup
adb shell pm uninstall --user 0 com.google.android.printservice.recommendation
adb shell pm uninstall --user 0 com.google.android.projection.gearhead
adb shell pm uninstall --user 0 com.google.android.setupwizard
adb shell pm uninstall --user 0 com.google.android.tts
adb shell pm uninstall --user 0 com.google.android.youtube
adb shell pm uninstall --user 0 com.google.ar.core
adb shell pm uninstall --user 0 com.google.audio.hearing.visualization.accessibility.scribe
adb shell pm uninstall --user 0 com.hiya.star
adb shell pm uninstall --user 0 com.knox.vpn.proxyhandler
adb shell pm uninstall --user 0 com.microsoft.appmanager
adb shell pm uninstall --user 0 com.microsoft.skydrive
adb shell pm uninstall --user 0 com.mygalaxy
adb shell pm uninstall --user 0 com.netflix.mediaclient
adb shell pm uninstall --user 0 com.netflix.partner.activation
adb shell pm uninstall --user 0 com.opera.max.oem
adb shell pm uninstall --user 0 com.osp.app.signin
adb shell pm uninstall --user 0 com.samsung.android.accessibility.talkback
adb shell pm uninstall --user 0 com.samsung.android.alive.service
adb shell pm uninstall --user 0 com.samsung.android.allshare.service.fileshare
adb shell pm uninstall --user 0 com.samsung.android.allshare.service.mediashare
adb shell pm uninstall --user 0 com.samsung.android.app.appsedge
adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
adb shell pm uninstall --user 0 com.samsung.android.app.clipboardedge
adb shell pm uninstall --user 0 com.samsung.android.app.cocktailbarservice
adb shell pm uninstall --user 0 com.samsung.android.app.galaxyfinder
adb shell pm uninstall --user 0 com.samsung.android.app.notes.addons
adb shell pm uninstall --user 0 com.samsung.android.app.omcagent
adb shell pm uninstall --user 0 com.samsung.android.app.parentalcare
adb shell pm uninstall --user 0 com.samsung.android.app.reminder
adb shell pm uninstall --user 0 com.samsung.android.app.routines
adb shell pm uninstall --user 0 com.samsung.android.app.sharelive
adb shell pm uninstall --user 0 com.samsung.android.app.taskedge
adb shell pm uninstall --user 0 com.samsung.android.app.updatecenter
adb shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub
adb shell pm uninstall --user 0 com.samsung.android.appseparation                           
adb shell pm uninstall --user 0 com.samsung.android.ardrawing
adb shell pm uninstall --user 0 com.samsung.android.aremoji
adb shell pm uninstall --user 0 com.samsung.android.aremojieditor
adb shell pm uninstall --user 0 com.samsung.android.arzone
adb shell pm uninstall --user 0 com.samsung.android.aware.service
adb shell pm uninstall --user 0 com.samsung.android.beaconmanager
adb shell pm uninstall --user 0 com.samsung.android.bixbyvision.framework
adb shell pm uninstall --user 0 com.samsung.android.da.daagent
adb shell pm uninstall --user 0 com.samsung.android.dynamiclock
adb shell pm uninstall --user 0 com.samsung.android.easysetup
adb shell pm uninstall --user 0 com.samsung.android.fmm
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
adb shell pm uninstall --user 0 com.samsung.android.game.gametools
adb shell pm uninstall --user 0 com.samsung.android.homemode
adb shell pm uninstall --user 0 com.samsung.android.intellivoiceservice
adb shell pm uninstall --user 0 com.samsung.android.ipsgeofence
adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller
adb shell pm uninstall --user 0 com.samsung.android.knox.analytics.uploader
adb shell pm uninstall --user 0 com.samsung.android.knox.containercore
adb shell pm uninstall --user 0 com.samsung.android.knox.kpecore
adb shell pm uninstall --user 0 com.samsung.android.livestickers
adb shell pm uninstall --user 0 com.samsung.android.location
adb shell pm uninstall --user 0 com.samsung.android.mapsagent
adb shell pm uninstall --user 0 com.samsung.android.mcfds
adb shell pm uninstall --user 0 com.samsung.android.mdm
adb shell pm uninstall --user 0 com.samsung.android.mdx
adb shell pm uninstall --user 0 com.samsung.android.mfi
adb shell pm uninstall --user 0 com.samsung.android.mobileservice
adb shell pm uninstall --user 0 com.samsung.android.privateshare
adb shell pm uninstall --user 0 com.samsung.android.rubin.app
adb shell pm uninstall --user 0 com.samsung.android.samsungpass
adb shell pm uninstall --user 0 com.samsung.android.samsungpassautofill
adb shell pm uninstall --user 0 com.samsung.android.scloud
adb shell pm uninstall --user 0 com.samsung.android.scs
adb shell pm uninstall --user 0 com.samsung.android.sdk.handwriting
adb shell pm uninstall --user 0 com.samsung.android.service.peoplestripe
adb shell pm uninstall --user 0 com.samsung.android.service.stplatform
adb shell pm uninstall --user 0 com.samsung.android.setting.multisound
adb shell pm uninstall --user 0 com.samsung.android.setupindiaservicestnc
adb shell pm uninstall --user 0 com.samsung.android.shortcutbackupservice
adb shell pm uninstall --user 0 com.samsung.android.singletake.service
adb shell pm uninstall --user 0 com.samsung.android.sm.devicesecurity
adb shell pm uninstall --user 0 com.samsung.android.smartcallprovider
adb shell pm uninstall --user 0 com.samsung.android.smartface
adb shell pm uninstall --user 0 com.samsung.android.smartswitchassistant
adb shell pm uninstall --user 0 com.samsung.android.spayfw
adb shell pm uninstall --user 0 com.samsung.android.spaymini
adb shell pm uninstall --user 0 com.samsung.android.stickercenter
adb shell pm uninstall --user 0 com.samsung.android.themecenter
adb shell pm uninstall --user 0 com.samsung.android.themestore
adb shell pm uninstall --user 0 com.samsung.android.uds
adb shell pm uninstall --user 0 com.samsung.android.visionintelligence
adb shell pm uninstall --user 0 com.samsung.android.visualars
adb shell pm uninstall --user 0 com.samsung.clipboardsaveservice
adb shell pm uninstall --user 0 com.samsung.discover
adb shell pm uninstall --user 0 com.samsung.ecomm.global.in
adb shell pm uninstall --user 0 com.samsung.gpuwatchapp
adb shell pm uninstall --user 0 com.samsung.klmsagent
adb shell pm uninstall --user 0 com.samsung.memorysaver
adb shell pm uninstall --user 0 com.samsung.sec.android.application.csc
adb shell pm uninstall --user 0 com.samsung.SMT
adb shell pm uninstall --user 0 com.samsung.SMT.lang_de_de_f00
adb shell pm uninstall --user 0 com.samsung.SMT.lang_en_gb_f00
adb shell pm uninstall --user 0 com.samsung.SMT.lang_en_us_l03
adb shell pm uninstall --user 0 com.samsung.SMT.lang_es_es_f00
adb shell pm uninstall --user 0 com.samsung.SMT.lang_fr_fr_f00
adb shell pm uninstall --user 0 com.samsung.SMT.lang_it_it_f00
adb shell pm uninstall --user 0 com.samsung.SMT.lang_ru_ru_f00
adb shell pm uninstall --user 0 com.samsung.storyservice
adb shell pm uninstall --user 0 com.sec.android.app.billing
adb shell pm uninstall --user 0 com.sec.android.app.chromecustomizations
adb shell pm uninstall --user 0 com.sec.android.app.DataCreate
adb shell pm uninstall --user 0 com.sec.android.app.fm
adb shell pm uninstall --user 0 com.sec.android.app.kidshome
adb shell pm uninstall --user 0 com.sec.android.app.magnifier
adb shell pm uninstall --user 0 com.sec.android.app.quicktool
adb shell pm uninstall --user 0 com.sec.android.app.samsungapps
adb shell pm uninstall --user 0 com.sec.android.app.soundalive
adb shell pm uninstall --user 0 com.sec.android.app.wlantest
adb shell pm uninstall --user 0 com.sec.android.autodoodle.service
adb shell pm uninstall --user 0 com.sec.android.daemonapp
adb shell pm uninstall --user 0 com.sec.android.easyMover
adb shell pm uninstall --user 0 com.sec.android.easyMover.Agent
adb shell pm uninstall --user 0 com.sec.android.easyonehand
adb shell pm uninstall --user 0 com.sec.android.mimage.avatarstickers
adb shell pm uninstall --user 0 com.sec.android.smartfpsadjuster
adb shell pm uninstall --user 0 com.sec.android.widgetapp.webmanual
adb shell pm uninstall --user 0 com.sec.automation
adb shell pm uninstall --user 0 com.sec.enterprise.knox.cloudmdm.smdms
adb shell pm uninstall --user 0 com.sec.hearingadjust
adb shell pm uninstall --user 0 com.sec.location.nsflp2
adb shell pm uninstall --user 0 com.sec.mhs.smarttethering
adb shell pm uninstall --user 0 com.sec.spp.push
adb shell pm uninstall --user 0 com.snap.camerakit.plugin.v1
  adb shell pm uninstall --user 0 com.sec.android.app.chromecustomizations 
      adb shell pm uninstall --user 0 com.android.sharedstoragebackup 
      adb shell pm uninstall --user 0 com.android.wallpapercropper 
      adb shell pm uninstall --user 0 com.sec.factory 
      adb shell pm uninstall --user 0 com.sec.epdgtestapp 
      adb shell pm uninstall --user 0 com.facebook.system 
      adb shell pm uninstall --user 0 com.facebook.appmanager 
      adb shell pm uninstall --user 0 com.sec.android.widgetapp.easymodecontactswidget 
      adb shell pm uninstall --user 0 com.samsung.android.app.galaxyfinder 
      adb shell pm uninstall --user 0 com.sec.android.app.samsungapps 
      adb shell pm uninstall --user 0 com.android.wallpaper.livepicker 
      adb shell pm uninstall --user 0 com.sec.android.app.magnifier 
      adb shell pm uninstall --user 0 com.android.mms.service 
      adb shell pm uninstall --user 0 com.samsung.android.allshare.service.mediashare 
      adb shell pm uninstall --user 0 com.sec.android.mimage.photoretouching 
      adb shell pm uninstall --user 0 com.android.dreams.phototable 
      adb shell pm uninstall --user 0 com.samsung.safetyinformation 
      adb shell pm uninstall --user 0 com.sec.android.app.billing 
      adb shell pm uninstall --user 0 com.sec.android.app.SecSetupWizard 
      adb shell pm uninstall --user 0 com.sec.hearingadjust 
      adb shell pm uninstall --user 0 com.samsung.android.service.air adb shell pm uninstall --user 0 command 
      adb shell pm uninstall --user 0 com.google.android.projection.gearhead 
      adb shell pm uninstall --user 0 com.android.egg 
      adb shell pm uninstall --user 0 com.google.android.as 
      adb shell pm uninstall --user 0 com.samsung.android.appsedge 
      adb shell pm uninstall --user 0 com.samsung.android.ardrawing 
      adb shell pm uninstall --user 0 com.samsung.android.aremoji 
      adb shell pm uninstall --user 0 com.samsung.android.aremojieditor 
      adb shell pm uninstall --user 0 com.sec.android.mimage.avatarstickers 
      adb shell pm uninstall --user 0 com.samsung.android.arzone 
      adb shell pm uninstall --user 0 com.sec.provides.assisteddialing 
      adb shell pm uninstall --user 0 com.sec.mhs.smarttethering 
      adb shell pm uninstall --user 0 com.sec.android.autodoodle.service 
      adb shell pm uninstall --user 0 com.samsung.android.samsungpassautofill 
      adb shell pm uninstall --user 0 com.sec.android.app.DataCreate 
      adb shell pm uninstall --user 0 com.android.dreams.basic 
      adb shell pm uninstall --user 0 com.android.bookmarksprovider 
      adb shell pm uninstall --user 0 com.android.providers.calendar 
      adb shell pm uninstall --user 0 com.samsung.android.mdeservice 
      adb shell pm uninstall --user 0 com.samsung.android.app.clipboardedge 
      adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload 
      adb shell pm uninstall --user 0 com.samsung.android.livestickers 
      adb shell pm uninstall --user 0 com.sec.factoryapp 
      adb shell pm uninstall --user 0 com.sec.android.app.dexonpc 
      adb shell pm uninstall --user 0 com.diotek.sec.lookup.dictionary 
      adb shell pm uninstall --user 0 com.samsung.android.da.daagent 
      adb shell pm uninstall --user 0 com.samsung.android.bluelightfilter 
      adb shell pm uninstall --user 0 com.facebook.services 
      adb shell pm uninstall --user 0 com.samsung.faceservice 
      adb shell pm uninstall --user 0 com.samsung.storyservice 
      adb shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle 
      adb shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle 
      adb shell pm uninstall --user 0 com.samsung.android.mobileservice 
      adb shell pm uninstall --user 0 com.samsung.android.sdk.hardwriting 
      adb shell pm uninstall --user 0 com.samsung.android.service.health 
      adb shell pm uninstall --user 0 com.hiya.star 
      adb shell pm uninstall --user 0 com.samsung.android.knox.pushmananger 
      adb shell pm uninstall --user 0 com.samsung.android.knox.kpecore 
      adb shell pm uninstall --user 0 com.samsung.android.app.simplesharing 
      adb shell pm uninstall --user 0 com.samsung.android.mdx.quickboard 
      adb shell pm uninstall --user 0 com.samsung.android.service.peoplestripe 
      adb shell pm uninstall --user 0 com.samsung.android.app.dofviewer 
      adb shell pm uninstall --user 0 com.samsung.android.privateshare 
      adb shell pm uninstall --user 0 com.samsung.android.aware.service 
      adb shell pm uninstall --user 0 com.samsung.android.app.sharelive 
      adb shell pm uninstall --user 0 com.samsung.android.app.omcagent 
      adb shell pm uninstall --user 0 com.samsung.android.app.reminder 
      adb shell pm uninstall --user 0 com.samsung.android.coldwalletservice 
      adb shell pm uninstall --user 0 com.sec.android.app.ve.vebgm 
      adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller 
      adb shell pm uninstall --user 0 com.sec.location.nsflp2 
      adb shell pm uninstall --user 0 com.samsung.android.samsunpass 
      adb shell pm uninstall --user 0 com.samsung.android.dkey 
      adb shell pm uninstall --user 0 com.samsung.android.carkey 
      adb shell pm uninstall --user 0 com.samsung.android.ipsgeofence 
      adb shell pm uninstall --user 0 com.samsung.android.svoiceime 
      adb shell pm uninstall --user 0 com.samsung.android.service.tagservice 
      adb shell pm uninstall --user 0 com.android.apps.tag 
      adb shell pm uninstall --user 0 com.samsung.android.accessibility.talkback 
      adb shell pm uninstall --user 0 com.samsung.android.app.taskedge 
      adb shell pm uninstall --user 0 com.sec.android.app.quicktool 
      adb shell pm uninstall --user 0 com.samsung.android.service.airviewdictionary 
      adb shell pm uninstall --user 0 com.samsung.android.vtcamerasettings 
      adb shell pm uninstall --user 0 com.samsung.android.net.wifi.wifiguider 
      adb shell pm uninstall --user 0 com.samsung.android.knox.containeragent 
      adb shell pm uninstall --user 0 com.android.managedprovisioning 
      adb shell pm uninstall --user 0 com.microsoft.appmanager 
      adb shell pm uninstall --user 0 com.samsung.android.dialer 
      adb shell pm uninstall --user 0 com.samsung.android.galaxycontinuity 
      adb shell pm uninstall --user 0 com.samsung.android.app.contacts 
      adb shell pm uninstall --user 0 com.sec.android.app.myfiles 
      adb shell pm uninstall --user 0 com.samsung.android.forest 
      adb shell pm uninstall --user 0 com.samsung.android.app.spage 
      adb shell pm uninstall --user 0 com.samsung.android.app.settings.bixby 
      adb shell pm uninstall --user 0 com.samsung.android.bixby.agent 
      adb shell pm uninstall --user 0 com.samsung.android.bixbyvision.framework 
      adb shell pm uninstall --user 0 com.samsung.android.bixby.wakeup 
      adb shell pm uninstall --user 0 com.samsung.android.bixby.service 
      adb shell pm uninstall --user 0 com.samsung.android.bixby.agent.dummy 
      adb shell pm uninstall --user 0 com.samsung.systemui.bixby2 
      adb shell pm uninstall --user 0 com.samsung.android.bixby.plmsync 
      adb shell pm uninstall --user 0 com.samsung.android.app.routines 
      adb shell pm uninstall --user 0 com.samsung.android.visionintelligence 
      adb shell pm uninstall --user 0 com.samsung.visionprovider 
      adb shell pm uninstall --user 0 com.samsung.android.game.gamehome 
      adb shell pm uninstall --user 0 com.enhance.gameservice 
      adb shell pm uninstall --user 0 com.samsung.android.game.gametools 
      adb shell pm uninstall --user 0 com.samsung.android.game.gos 
      adb shell pm uninstall --user 0 com.osp.app.signin 
      adb shell pm uninstall --user 0 com.samsung.android.voc 
      adb shell pm uninstall --user 0 com.samsung.android.scloud 
      adb shell pm uninstall --user 0 com.sec.spp.push 
      adb shell pm uninstall --user 0 com.samsung.android.fmm 
      adb shell pm uninstall --user 0 com.samsung.android.rubin.app 
      adb shell pm uninstall --user 0 com.samsung.android.mdecservice 
      adb shell pm uninstall --user 0 com.sec.android.daemonapp 
      adb shell pm uninstall --user 0 com.samsung.android.wellbeing 
      adb shell pm uninstall --user 0 com.samsung.android.service.livedrawing 
      adb shell pm uninstall --user 0 com.sec.android.app.sbrowser 
      adb shell pm uninstall --user 0 com.samsung.SMT 
      adb shell pm uninstall --user 0 com.samsung.android.beaconmanager 
      adb shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub 
      adb shell pm uninstall --user 0 com.sec.android.easyMover 
      adb shell pm uninstall --user 0 com.sec.android.easyMover.Agent 
      adb shell pm uninstall --user 0 com.samsung.android.smartswitchassistant 
      adb shell pm uninstall --user 0 com.samsung.crane 
      adb shell pm uninstall --user 0 com.android.providers.partnerbookmarks 
      adb shell pm uninstall --user 0 com.samsung.android.calendar 
      adb shell pm uninstall --user 0 com.samsung.android.messaging 
      adb shell pm uninstall --user 0 com.samsung.android.securitylogagent 
      adb shell pm uninstall --user 0 com.samsung.android.location 
      adb shell pm uninstall --user 0 com.knox.vpn.proxyhandler 
      adb shell pm uninstall --user 0 com.samsung.android.knox.containercore 
      adb shell pm uninstall --user 0 com.samsung.knox.keychain 
      adb shell pm uninstall --user 0 com.sec.enterprise.knox.cloudmdm.smdms 
      adb shell pm uninstall --user 0 com.samsung.android.knox.analytics.uploader 
      adb shell pm uninstall --user 0 com.samsung.klmsagent 
      adb shell pm uninstall --user 0 com.samsung.android.knox.attestation 
      adb shell pm uninstall --user 0 com.sec.android.diagmonagent 
      adb shell pm uninstall --user 0 com.samsung.sec.android.application.csc 
      adb shell pm uninstall --user 0 com.samsung.android.dqagent 
      adb shell pm uninstall --user 0 com.samsung.aasaservice 
      adb shell pm uninstall --user 0 com.samsung.android.bbc.bbcagent 
      adb shell pm uninstall --user 0 com.samsung.cmh 
      adb shell pm uninstall --user 0 com.samsung.android.fast 
      adb shell pm uninstall --user 0 com.samsung.android.sm.devicesecurity 
      adb shell pm uninstall --user 0 com.sec.phone 
      adb shell pm uninstall --user 0 com.sec.bcservice 
      adb shell pm uninstall --user 0 com.microsoft.skydrive 
      adb shell pm uninstall --user 0 com.microsoft.office.outlook 
      adb shell pm uninstall --user 0 com.microsoft.office.officehubrow 
      adb shell pm uninstall --user 0 com.microsoft.office.excel 
      adb shell pm uninstall --user 0 com.microsoft.office.word 
      adb shell pm uninstall --user 0 com.microsoft.office.powerpoint 
      adb shell pm uninstall --user 0 com.netflix.partner.activation 
      adb shell pm uninstall --user 0 com.netflix.mediaclient 
      adb shell pm uninstall --user 0 com.spotify.music 
      adb shell pm uninstall --user 0 com.google.android.syncadapters.calendar 
      adb shell pm uninstall --user 0 com.google.android.syncadapters.contacts 
      adb shell pm uninstall --user 0 com.google.android.apps.restore 
      adb shell pm uninstall --user 0 com.google.android.setupwizard 
      adb shell pm uninstall --user 0 com.google.android.partnersetup 
      adb shell pm uninstall --user 0 com.google.android.onetimeinitializer 
      adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox 
      adb shell pm uninstall --user 0 com.google.android.tts 
      adb shell pm uninstall --user 0 com.android.printspooler 
      adb shell pm uninstall --user 0 com.google.android.printservice.re adb shell pm uninstall --user 0 commendation 
      adb shell pm uninstall --user 0 com.google.android.feedback 
      adb shell pm uninstall --user 0 com.google.android.gm 
      adb shell pm uninstall --user 0 com.google.android.gms.location.history 
      adb shell pm uninstall --user 0 com.google.android.apps.tachyon 
      adb shell pm uninstall --user 0 com.google.android.apps.turbo 
      adb shell pm uninstall --user 0 com.android.chrome 
      adb shell pm uninstall --user 0 com.google.mainline.telemetry 
      adb shell pm uninstall --user 0 com.google.android.apps.photos 
      adb shell pm uninstall --user 0 com.google.android.youtube 
      adb shell pm uninstall --user 0 com.google.android.apps.youtube.music 
      adb shell pm uninstall --user 0 com.google.android.videos 
      adb shell pm uninstall --user 0 com.android.vending 
      adb shell pm uninstall --user 0 com.google.android.apps.maps 


echo DONE!--------------------------------------------------
timeout /t 2 >nul

echo Applying battery and performance tweaks...

adb shell settings put global adaptive_battery_management_enabled 0
adb shell settings put global cached_apps_freezer enabled
adb shell settings put global protect_battery 1
adb shell settings put secure send_action_app_error 0
adb shell settings put global assisted_gps_enabled 1
adb shell settings put global wifi_scan_always_enabled 1
adb shell settings put global animator_duration_scale 0.35
adb shell settings put global transition_animation_scale 0.35
adb shell settings put global window_animation_scale 0.35
adb shell settings put global ram_expand_size 0
adb shell settings put global zram_enabled 0
adb shell settings put global online_manual_url 0
adb shell settings put global bug_report 0
adb shell settings put global debug_app 0
adb shell settings put secure game_auto_temperature_control 0
:: Define package operations function using ADB
setlocal EnableDelayedExpansion

:: Handling safetodisable_packages
if "%safetodisable%"=="1" (
    echo Removing safetodisable_packages
    call :manage_package disable safetodisable_packages
) else if "%safetodisable%"=="2" (
    echo Reverting safetodisable_packages
    call :manage_package enable safetodisable_packages
)

:: Handling categories
if "%bixby%"=="1" (
    echo Removing bixby
    call :manage_package disable bixby_packages
) else if "%bixby%"=="2" (
    echo Reverting bixby
    call :manage_package enable bixby_packages
)

if "%game%"=="1" (
    echo Removing game
    call :manage_package disable game_packages
) else if "%game%"=="2" (
    echo Reverting game
    call :manage_package enable game_packages
)

if "%accounts%"=="1" (
    echo Removing accounts
    call :manage_package disable accounts_packages
) else if "%accounts%"=="2" (
    echo Reverting accounts
    call :manage_package enable accounts_packages
)

:: Function to manage package operations
:manage_package
set "action=%1"
set "packageList=%2"

for %%P in (%packageList%) do (
    adb shell pm %action% --user 0 %%P
)



echo DONE!--------------------------------------------------
timeout /t 2 >nul

echo.
echo Disabling Game Optimizing Service...
adb shell pm disable-user --user 0 com.samsung.android.game.gos
adb shell pm clear --user 0 com.samsung.android.game.gos

echo DONE!--------------------------------------------------
timeout /t 2 >nul


echo apply change...
adb reboot



echo ==============================================
echo              Complete
echo ==============================================

echo. 
echo reboot your Samsung device!

echo. 
echo All done. Enjoy your clean and optimized Samsung device!
pause
