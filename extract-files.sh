#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=codina
COMMON=u8500-common
MANUFACTURER=samsung

#MSO - 20121105 - Clean the used folders to be sure nothing wrong is there
rm -rf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
rm -rf ../../../vendor/$MANUFACTURER/$COMMON/proprietary

#recreate the needed folders
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/etc
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/wifi
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging

#codina
adb pull /system/lib/libActionShot.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libActionShot.so
adb pull /system/lib/libarccamera.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libarccamera.so
adb pull /system/lib/libcamera_client.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcamera_client.so
adb pull /system/lib/libcameraservice.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcameraservice.so
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcamera.so
adb pull /system/lib/libcaps.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcaps.so
adb pull /system/lib/libEGL.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libEGL.so
adb pull /system/lib/libexif.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libexif.so
adb pull /system/lib/libGLESv1_CM.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libGLESv1_CM.so
adb pull /system/lib/libGLESv2.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libGLESv2.so
adb pull /system/lib/libMali.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libMali.so
adb pull /system/lib/libOpenSLES.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libOpenSLES.so
adb pull /system/lib/libPanoraMax3.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libPanoraMax3.so
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libril.so
adb pull /system/lib/libsecjpegarcsoft.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsecjpegarcsoft.so
adb pull /system/lib/libsecjpeginterface.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsecjpeginterface.so
adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsecril-client.so
adb pull /system/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsec-ril.so
adb pull /system/bin/BCM4330B1_002.001.003.0693.0743.hcd ../../../vendor/$MANUFACTURER/$COMMON/proprietary/BCM4330B1_002.001.003.0693.0743.hcd
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$COMMON/proprietary/rild
adb pull /system/lib/egl/libEGL_mali.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl/libEGL_mali.so
adb pull /system/lib/egl/libGLES_android.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl/libGLES_android.so
adb pull /system/lib/egl/libGLESv1_CM_mali.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl/libGLESv1_CM_mali.so
adb pull /system/lib/egl/libGLESv2_mali.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl/libGLESv2_mali.so
adb pull /system/lib/hw/copybit.samsung.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/copybit.ux500.so
adb pull /system/lib/hw/gps.ux500.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/gps.ux500.so
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/gralloc.default.so
adb pull /system/lib/hw/gralloc.samsung.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/gralloc.ux500.so
adb pull /system/usr/keychars/codina-kp.kcm.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars/codina-kp.kcm.bin
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars/qwerty2.kcm.bin
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars/qwerty.kcm.bin
adb pull /system/etc/wifi/bcm4330_aps.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/wifi/bcm4330_aps.bin
adb pull /system/etc/wifi/bcm4330_mfg.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/wifi/bcm4330_mfg.bin
adb pull /system/etc/wifi/bcm4330_sta.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/wifi/bcm4330_sta.bin
adb pull /system/bin/charging_mode ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/charging_mode
adb pull /system/bin/playlpm ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/playlpm
adb pull /system/lib/libQmageDecoder.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/libQmageDecoder.so
adb pull /system/media/battery_batteryerror.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_batteryerror.qmg
adb pull /system/media/battery_charging_5.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_5.qmg
adb pull /system/media/battery_charging_10.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_10.qmg
adb pull /system/media/battery_charging_15.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_15.qmg
adb pull /system/media/battery_charging_20.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_20.qmg
adb pull /system/media/battery_charging_25.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_25.qmg
adb pull /system/media/battery_charging_30.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_30.qmg
adb pull /system/media/battery_charging_35.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_35.qmg
adb pull /system/media/battery_charging_40.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_40.qmg
adb pull /system/media/battery_charging_45.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_45.qmg
adb pull /system/media/battery_charging_50.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_50.qmg
adb pull /system/media/battery_charging_55.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_55.qmg
adb pull /system/media/battery_charging_60.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_60.qmg
adb pull /system/media/battery_charging_65.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_65.qmg
adb pull /system/media/battery_charging_70.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_70.qmg
adb pull /system/media/battery_charging_75.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_75.qmg
adb pull /system/media/battery_charging_80.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_80.qmg
adb pull /system/media/battery_charging_85.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_85.qmg
adb pull /system/media/battery_charging_90.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_90.qmg
adb pull /system/media/battery_charging_95.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_95.qmg
adb pull /system/media/battery_charging_100.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_100.qmg
adb pull /system/media/battery_error.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_error.qmg
adb pull /system/media/chargingwarning.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/chargingwarning.qmg
adb pull /system/media/Disconnected.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/Disconnected.qmg

#Sound/media part.
adb pull /system/lib/libasound.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libasound.so
adb pull /system/lib/libaudio.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libaudio.so #codina is being very particular about libaudio.so and libmedia.so... let's give it to her...
adb pull /system/lib/libmedia.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libmedia.so # ^ up
adb pull /system/lib/libmedia_jni.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libmedia_jni.so
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libaudiopolicy.so
adb pull /system/lib/libhalaudioprocessing.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libhalaudioprocessing.so
adb pull /system/lib/libsamsungAcousticeq.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libsamsungAcousticeq.so
adb pull /system/lib/libsamsungRecord.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libsamsungRecord.so
adb pull /system/lib/lib_Samsung_Acoustic_Module_Llite.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/lib_Samsung_Acoustic_Module_Llite.so
adb pull /system/lib/lib_Samsung_Resampler.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/lib_Samsung_Resampler.so
adb pull /system/lib/libsamsungSoundbooster.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libsamsungSoundbooster.so
adb pull /system/lib/lib_Samsung_Sound_Booster.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/lib_Samsung_Sound_Booster.so
adb pull /system/lib/libsoundalive.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libsoundalive.so
adb pull /system/lib/libsoundpool.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libsoundpool.so
adb pull /system/lib/libSR_AudioIn.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libSR_AudioIn.so


#specific to all samsung ux500 boards.
adb pull /system/bin/drexe ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/drexe
adb pull /system/bin/drmserver ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/drmserver
adb pull /system/bin/geomagneticd6x ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/geomagneticd6x
adb pull /system/bin/orientationd6x ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/orientationd6x
adb pull /system/bin/ta_loader ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/ta_loader
adb pull /system/bin/immvibed ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/immvibed
adb pull /system/bin/modem-supervisor ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/modem-supervisor
adb pull /system/bin/copsdaemon ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/copsdaemon
adb pull /system/bin/chargemode ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/chargemode
adb pull /system/bin/admsrv ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/admsrv
adb pull /system/bin/mediaserver ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/mediaserver
adb pull /system/bin/modem_log_relay ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/modem_log_relay
adb pull /system/bin/drmserver ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/drmserver
adb pull /system/bin/geomagneticd6x ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/geomagneticd6x
adb pull /system/bin/orientationd6x ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/orientationd6x
adb pull /system/bin/ta_loader ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/ta_loader
adb pull /system/bin/immvibed ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/immvibed
adb pull /system/bin/at_core ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/at_core
adb pull /system/bin/at_distributor ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/at_distributor
adb pull /system/etc/adm.sqlite ../../../vendor/$MANUFACTURER/$COMMON/proprietary/etc/adm.sqlite
adb pull /system/lib/libproduct.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libproduct.so
adb pull /system/lib/libtee.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtee.so
adb pull /system/lib/libste_ens_audio_samplerateconv.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libste_ens_audio_samplerateconv.so
adb pull /system/lib/libatparser.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libatparser.so
adb pull /system/bin/cspsa-server ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/cspsa-server
adb pull /system/bin/factoryreset ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/factoryreset
adb pull /system/lib/libcn.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcn.so
adb pull /system/lib/libcspsa.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcspsa.so
adb pull /system/etc/cspsa.conf ../../../vendor/$MANUFACTURER/$COMMON/proprietary/etc/cspsa.conf
adb pull /system/lib/libomission_avoidance.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libomission_avoidance.so
adb pull /system/lib/libstecom.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libstecom.so
adb pull /system/lib/libmpl.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libmpl.so
adb pull /system/lib/libpscc.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libpscc.so
adb pull /system/lib/libsterc.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsterc.so
adb pull /system/lib/libsms_server.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsms_server.so
adb pull /system/lib/libcops.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcops.so
adb pull /system/lib/libmalrf.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libmalrf.so
adb pull /system/lib/libphonet.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libphonet.so
adb pull /system/lib/libisimessage.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libisimessage.so
adb pull /system/lib/liblos.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/liblos.so

#Libs for amdsrv and mediaserver
adb pull /system/lib/libste_adm_server.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libste_adm_server.so
adb pull /system/lib/liblvmaservice.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/liblvmaservice.so
adb pull /system/lib/libste_audio_hwctrl.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libste_audio_hwctrl.so
adb pull /system/lib/libhalaudioprocessing.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libhalaudioprocessing.so
adb pull /system/lib/libomxil-bellagio.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libomxil-bellagio.so
adb pull /system/lib/libste_ensloader.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libste_ensloader.so
adb pull /system/lib/libnmfee.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libnmfee.so
adb pull /system/lib/libnmf.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libnmf.so
adb pull /system/lib/liblos.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/liblos.so
adb pull /system/lib/libtrace.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtrace.so
adb pull /system/lib/libsomxaacd.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxaacd.so
adb pull /system/lib/libsomxaace.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxaace.so
adb pull /system/lib/libsomxamrd.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxamrd.so
adb pull /system/lib/libsomxamre.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxamre.so
adb pull /system/lib/libsomxcmn.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxcmn.so
adb pull /system/lib/libsomxcore.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxcore.so
adb pull /system/lib/libsomxflacd.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxflacd.so
adb pull /system/lib/libsomxmp3d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxmp3d.so
adb pull /system/lib/libsomxmp43d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxmp43d.so
adb pull /system/lib/libsomxsr263d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxsr263d.so
adb pull /system/lib/libsomxwmad.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxwmad.so
adb pull /system/lib/libsomxwmv7d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxwmv7d.so
adb pull /system/lib/libsomxwmv8d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxwmv8d.so
adb pull /system/lib/libblt_hw.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libblt_hw.so

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\

# All the blobs necessary for galaxys2 devices
PRODUCT_COPY_FILES += \\

EOF

./setup-makefiles.sh

php create-vendor-blobs.php
