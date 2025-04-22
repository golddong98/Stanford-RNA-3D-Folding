

echo "===== Step 1: 환경 확인 ====="
cat <<'EOF' > check_env.sh
#!/bin/bash
#check the server before configuring the Docekr environment

#OS 
echo "===== OS Info ====="
cat /etc/os-release


#GPU
echo "===== GPU Info ====="
nvidia-smi || echo "NVIDIA GPU not available"

#Docker
docker --version || echo "Docker not installed"
docker run hello-world || echo "Docker run failed"

#Ansible
echo "===== Ansible Info ====="
ansible --version || echo "Ansible not installed"

#Python
python3 --version
pip3 list 2>/dev/null | grep jupyter || echo "pip3 or jupyter not found"

#Kubernetes Pod
echo "===== Kubernetes Pod Check ====="
cat /proc/1/cgroup | grep kube || echo "Not in K8s Pod?"

#Jupyter Tools
echo "===== Jupyter Tools ====="
jupyter --version || echo "Jupyter not installed"
jupyter nbconvert --version || echo "nbconvert not installed"
EOF

chmod +x check_env.sh
./check_env.sh

echo -e "\n===== Step2: Ansible 설치 (필요 시) ====="
if ! command -v ansible &> /dev/null
then 
    echo "Ansible not found. Installing..."
    sudo apt update && sudo apt install -y ansible
else
    echo "Ansible already installed."
fi

echo -e "\n===== Step 3: Ansible 플레이북 생성 ====="
cat <<'EOF' > setup_env.yml
---
- name: Setup environment for .ipynb automation # 설명용 이름
  hosts: localhost # 어디에 적용할 건지 (여기선 현재 서버) other: localhost, all 등
  become: yes # sudo 권한으로 실행할지 여부
  tasks: # 할 작업 목록 시작
    - name: Update apt cache
      apt: # apt install
        update_cache: yes

    # sudo apt update
    # sudo apt install -y python3-pip
    - name: Install pip3
      apt:
        name: python3-pip
        state: present

    - name: Install Ansible (via pip)
      pip:
        name: ansible

    # pip3 install jupyter nbconvert
    - name: Install Jupyter
      pip:
        name:
          - jupyter
          - nbconvert
EOF

echo -e "\n===== Step 4: 플레이북 실행 ====="
ansible-playbook setup_env.yml