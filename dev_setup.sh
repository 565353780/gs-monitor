cd ..
git clone https://github.com/RongLiu-Leo/Gaussian-Splatting-Monitor.git gsmonitor

sudo apt install -y libglew-dev libassimp-dev libboost-all-dev \
  libgtk-3-dev libopencv-dev libglfw3-dev libavdevice-dev \
  libavcodec-dev libeigen3-dev libxxf86vm-dev libembree-dev

pip install torch torchvision torchaudio \
  --index-url https://download.pytorch.org/whl/cu124

pip install plyfile tqdm matplotlib

cd gsmonitor/submodules/diff-gaussian-rasterization
python setup.py install

cd ../simple-knn
python setup.py install

cd ../../SIBR_viewers
cmake -Bbuild . -DCMAKE_BUILD_TYPE=Release -G Ninja
cmake --build build -j24 --target install
