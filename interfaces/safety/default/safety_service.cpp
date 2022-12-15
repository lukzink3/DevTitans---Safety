#include "safety_service.h"

namespace aidl::devtitans::safety {
    ndk::ScopedAStatus SafetyService::connect(int32_t* _aidl_return) {
        *_aidl_return = this->safety.connect();
        LOG(INFO) << "connect(): " << *_aidl_return;
        return ndk::ScopedAStatus::ok();
    }

    ndk::ScopedAStatus SafetyService::getPresence(int32_t* _aidl_return) {
        *_aidl_return = this->safety.getPresence();
        LOG(INFO) << "getPresence(): " << *_aidl_return;
        return ndk::ScopedAStatus::ok();
    }

}