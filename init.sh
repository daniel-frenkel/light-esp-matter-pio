sudo apt-get install git gcc g++ pkg-config libssl-dev libdbus-1-dev \
     libglib2.0-dev libavahi-client-dev ninja-build python3-venv python3-dev \
     python3-pip unzip libgirepository1.0-dev libcairo2-dev libreadline-dev
git submodule update --init
git -C ./lib/esp-matter submodule update --init
./lib/esp-matter/connectedhomeip/connectedhomeip/scripts/checkout_submodules.py --platform esp32 --shallow
source ./lib/esp-matter/connectedhomeip/connectedhomeip/scripts/bootstrap.sh