@echo off
CLS
echo =================================
echo        DEBLOATED – TWEAK
echo                 FOR SAMSUNG
echo           by dehfoucw@github 
echo =================================
adb devices
adb shell

echo Boost Battery
adb shell settings put global adaptive_battery_management_enabled 0
adb shell settings put global cached_apps_freezer enabled
adb shell settings put global protect_battery 1
adb shell settings put secure send_action_app_error 0

echo Location
adb shell settings put global assisted_gps_enabled 1
adb shell settings put global wifi_scan_always_enabled 1

echo Boost Performance
adb shell settings put global animator_duration_scale 0.35
adb shell settings put global transition_animation_scale 0.35
adb shell settings put global window_animation_scale 0.35
adb shell settings put global ram_expand_size 0
adb shell settings put global zram_enabled 0
adb shell settings put global online_manual_url 0
adb shell settings put global bug_report 0
adb shell settings put global debug_app 0

echo Remove bloatware
adb shell settings put secure game_auto_temperature_control 0
adb shell pm disable-user --user 0 com.samsung.android.game.gos
adb shell pm clear --user 0 com.samsung.android.game.gos
pm list packages
adb shell

 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.assistantmenu
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.bbc.bbcagent
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.dlp.service
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.knox.analytics.uploader
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.knox.containeragent
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.knox.containercore
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.mdm
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.svoice
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.svoiceime
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.knox.securefolder
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.knox.securefolder.setuppage
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.svoice.sync
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.apex
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.widgetapp.easymodecontactswidget
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.enterprise.knox.attestation
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.enterprise.mdm.vpn
 adb shell pm uninstall --user 0  -k --user 0 com com.wssnps
 adb shell pm uninstall --user 0  -k --user 0 com com.google.ar.core
 adb shell pm uninstall --user 0  -k --user 0 com com.android.backupconfirm
 adb shell pm uninstall --user 0  -k --user 0 com com.android.managedprovisioning
 adb shell pm uninstall --user 0  -k --user 0 com com.android.providers.userdictionary
 adb shell pm uninstall --user 0  -k --user 0 com com.knox.vpn.proxyhandler
 adb shell pm uninstall --user 0  -k --user 0 com com.osp.app.signin
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.smartcapture
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.net.wifi.wifiguider
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.setting.multisound
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.safetyinformation
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.safetyassurance
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.ve.vebgm
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.wlantest
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.splitsound
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.enterprise.knox.cloudmdm.smdms
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.enterprise.mdm.services.simpin
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.hearingadjust
 adb shell pm uninstall --user 0  -k --user 0 com com.android.bookmarkprovider
 adb shell pm uninstall --user 0  -k --user 0 com com.android.sharedstoragebackup
 adb shell pm uninstall --user 0  -k --user 0 com com.google.android.backuptransport
 adb shell pm uninstall --user 0  -k --user 0 com com.google.android.marvin.talkback
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.aircommandmanager
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.omcagent
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.rubin.app
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.video
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.storyservice
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.soundalive
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.widgetapp.webmanual
 adb shell pm uninstall --user 0  -k --user 0 com com.android.bips
 adb shell pm uninstall --user 0  -k --user 0 com com.android.wallpaperbackup
 adb shell pm uninstall --user 0  -k --user 0 com com.monotype.android.font.foundation
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.airtel.stubapp
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.allshare.service.fileshare
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.allshare.service.mediashare
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.mobileservice
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.smartmirroring
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.billing
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.fm
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.spp.push
 adb shell pm uninstall --user 0  -k --user 0 com com.android.chrome
 adb shell pm uninstall --user 0  -k --user 0 com com.android.dreams.basic
 adb shell pm uninstall --user 0  -k --user 0 com com.android.dreams.phototable
 adb shell pm uninstall --user 0  -k --user 0 com com.android.egg
 adb shell pm uninstall --user 0  -k --user 0 com com.android.nfc
 adb shell pm uninstall --user 0  -k --user 0 com com.android.providers.partnerbookmarks
 adb shell pm uninstall --user 0  -k --user 0 com com.android.settings.intelligence
 adb shell pm uninstall --user 0  -k --user 0 com com.android.wallpaper.livepicker
 adb shell pm uninstall --user 0  -k --user 0 com com.android.wallpapercropper
 adb shell pm uninstall --user 0  -k --user 0 com com.dsi.ant.plugins.antplus
 adb shell pm uninstall --user 0  -k --user 0 com com.dsi.ant.sample.acquirechannels
 adb shell pm uninstall --user 0  -k --user 0 com com.dsi.ant.server
 adb shell pm uninstall --user 0  -k --user 0 com com.dsi.ant.service.socket
 adb shell pm uninstall --user 0  -k --user 0 com com.enhance.gameservice
 adb shell pm uninstall --user 0  -k --user 0 com com.facebook.appmanager
 adb shell pm uninstall --user 0  -k --user 0 com com.facebook.katana
 adb shell pm uninstall --user 0  -k --user 0 com com.facebook.services
 adb shell pm uninstall --user 0  -k --user 0 com com.facebook.system
 adb shell pm uninstall --user 0  -k --user 0 com com.google.android.apps.photos
 adb shell pm uninstall --user 0  -k --user 0 com com.google.android.feedback
 adb shell pm uninstall --user 0  -k --user 0 com com.google.android.googlequicksearchbox
 adb shell pm uninstall --user 0  -k --user 0 com com.google.android.music
 adb shell pm uninstall --user 0  -k --user 0 com com.google.android.videos
 adb shell pm uninstall --user 0  -k --user 0 com com.google.android.youtube
 adb shell pm uninstall --user 0  -k --user 0 com com.google.ar.core
 adb shell pm uninstall --user 0  -k --user 0 com com.google.vr.vrcore
 adb shell pm uninstall --user 0  -k --user 0 com com.microsoft.office.officehubrow
 adb shell pm uninstall --user 0  -k --user 0 com com.microsoft.skydrive
 adb shell pm uninstall --user 0  -k --user 0 com com.mygalaxy
 adb shell pm uninstall --user 0  -k --user 0 com com.netflix.mediaclient
 adb shell pm uninstall --user 0  -k --user 0 com com.netflix.partner.activation
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.camera.sticker.facearavatar.preload
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.dofviewer
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.galaxyfinder
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.ledbackcover
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.sbrowseredge
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.siofviewer
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.social
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.tips
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.vrsetupwizardstub
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.app.watchmanagerstub
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.authfw
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.beaconmanager
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.da.daagent
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.easysetup
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.email.provider
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.fast
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.game.gamehome
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.game.gametools
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.game.gos
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.gametuner.thin
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.hmt.vrshell
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.hmt.vrsvc
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.keyguardwallpaperupdator
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.kidsinstaller
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.mateagent
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.samsungpass
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.samsungpassautofill
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.scloud
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.service.peoplestripe
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.spay
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.spayfw
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.themecenter
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.themestore
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.android.wellbeing
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.desktopsystemui
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.SMT
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.sree
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.vvm
 adb shell pm uninstall --user 0  -k --user 0 com com.samsung.vvm.se
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.chromecustomizations
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.desktoplauncher
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.dexonpc
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.kidshome
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.samsungapps
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.sbrowser
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.app.sbrowser
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.cover.ledcover
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.daemonapp
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.desktopcommunity
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.desktopmode.uiservice
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.easyMover.Agent
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.easyonehand
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.wallpapercropper2
 adb shell pm uninstall --user 0  -k --user 0 com com.sec.android.widgetapp.samsungapps
 adb shell pm uninstall --user 0  -k --user 0 com com.wsomacp
 adb shell pm uninstall --user 0  -k --user 0 com flipboard.boxer.app

echo Killing adb server
adb kill-server
echo Press any key to exit terminal.
