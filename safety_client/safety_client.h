#pragma once                      // Inclui esse cabeçalho apenas uma vez

#include <iostream>               // std::cout (char-out) e std::endl (end-line)
#include <string.h>               // Função strcmp
#include <stdlib.h>               // Função atoi

#include "safety_lib.h"        // Classe Smartlamp

namespace devtitans::safety {  // Pacote que a classe abaixo pertence

class SafetyClient {           // Classe

    public:
        void start(int argc, char **argv);

};

} // namespace