#include <android/binder_manager.h>
#include <aidl/devtitans/safety/ISafety.h>
#include <iostream>                             // std::cout e std::endl (end-line)

using namespace aidl::devtitans::safety;     // ISafety
using namespace std;                            // std::shared_ptr
using namespace ndk;                            // ndk::SpAIBinder

int main() {
    shared_ptr<ISafety> service;
    service = ISafety::fromBinder(SpAIBinder(AServiceManager_getService("devtitans.safety.ISafety/default")));
    
    if (!service) {
        cout << "Erro acessando o serviço!" << endl;
        return 1;
    }

    int32_t _aidl_return;
    ScopedAStatus status = service->getPresence(&_aidl_return);
    int presence = static_cast<int32_t>(_aidl_return);
    cout << "Presence: " << presence << endl;
    
    return 0;
}