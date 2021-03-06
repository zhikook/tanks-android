# Copyright (C) 2009 The Android Open Source Project
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
#

#TODO learn how to build libk3d and libtanks seperately...

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := libtanks
LOCAL_CFLAGS    := -Wall -Ijni/libk3d/
LOCAL_SRC_FILES := main.cpp libk3d/mat4.cpp libk3d/model.cpp libk3d/vec3.cpp libk3d/vec2.cpp libk3d/gl.cpp libtanks/Level.cpp libtanks/Missile.cpp libtanks/Tank.cpp libtanks/TankGameModel.cpp libtanks/TankGameView.cpp libtanks/collide.cpp libtanks/TankGameController.cpp libtanks/TouchController.cpp
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2
LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
