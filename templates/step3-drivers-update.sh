# Get the driver files
apt-get install gcc make -y
mkdir ~/post-installs
cd ~/post-installs
curl "https://606cloudpublicassets-01.s3.amazonaws.com/NVIDIA-Linux-x86_64-550.54.15.run" -O
chmod +x NVIDIA-Linux-x86_64-550.54.15.run
~/post-installs/NVIDIA-Linux-x86_64-550.54.15.run

# THEN !! We Inst. the LLM pieces
# Needed for local connects - from the WebUI
export OLLAMA_HOST=0.0.0.0
curl -fsSL https://ollama.com/install.sh | sh
systemctl start ollama
ollama run llama2