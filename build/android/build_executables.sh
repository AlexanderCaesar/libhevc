#!/bin/sh
cd mk
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk NDK_APPLICATION_MK=Aplication_arm.mk  LIBHEVC_EXECUTABLES=true
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk NDK_APPLICATION_MK=Aplication_arm64.mk LIBHEVC_EXECUTABLES=true
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk NDK_APPLICATION_MK=Aplication_x86.mk LIBHEVC_EXECUTABLES=true
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk NDK_APPLICATION_MK=Aplication_x86_64.mk LIBHEVC_EXECUTABLES=true


cd ..
rm -rf lib/
mkdir lib
mkdir lib/armeabi-v7a
mkdir lib/arm64-v8a
mkdir lib/x86
mkdir lib/x86_64

cp mk/obj/local/armeabi-v7a/*.a  lib/armeabi-v7a
cp mk/obj/local/arm64-v8a/*.a    lib/arm64-v8a
cp mk/obj/local/x86/*.a          lib/x86
cp mk/obj/local/x86_64/*.a       lib/x86_64