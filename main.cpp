#include <iostream>
#include <thread>
#include <chrono>

int main() {
    std::cout << "Agent started..." << std::endl;

    while (true) {
        std::cout << "[INFO] Running..." << std::endl;
        std::this_thread::sleep_for(std::chrono::seconds(3));
    }

    return 0;
}
