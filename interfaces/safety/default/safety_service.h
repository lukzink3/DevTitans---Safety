#pragma once

#include <android-base/logging.h>
#include <android/binder_process.h>
#include <android/binder_manager.h>

#include <aidl/devtitans/safety/BnSafety.h>            // Criado pelo AIDL automaticamente

#include "safety_lib.h"                                   // Classe Smartlamp (biblioteca)

using namespace devtitans::safety;

namespace aidl::devtitans::safety {

class SafetyService : public BnSafety {
    public:
        ndk::ScopedAStatus connect(int32_t* _aidl_return) override;
        ndk::ScopedAStatus getPresence(int32_t* _aidl_return) override;

    private:
        Safety safety;                                // Biblioteca
};

}