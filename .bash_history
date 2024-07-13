git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202407_Recu/script_Precondicion.sh
source ~/.bashrc
ls
cd RTA_Examen_20240711/
ls
cd ..
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo fdisk -l
sudo fdisk /dev/sdc
sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
free -h
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc2
sudo vgcreate vg_temp /dev/sdc2
sudo lvcreate -L +2G vg_temp -n lv_swap
sudo lvs
sudo vgs
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mkswapon /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
lsblk -f
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo fdisk -l
sudo pvcreate /dev/sdd1 /dev/sde1 /dev/sde5
sudo vgcreate vg_datos /dev/sdd1 /dev/sde1 /dev/sde5
sudo vgs
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_multimedia
sudo vgs
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mkdir /Multimedia
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo usermod -a -G docker laranda
sudo systemctl restart docker
sudo fdisk /dev/sde
sudo pvcreate /dev/sde6
sudo vgextend vg_datos /dev/sde6
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
history
history |awk 'NR>=19 && NR<=55' >> RTA_Examen_20240711/Punto_A.sh
ls
cat RTA_Examen_20240711/Punto_A.sh
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ls
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
ls
cd UTN-FRA_SO_Ansible/
ls
cd ..
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu/
ls
cd ansible/
ls
cd ..
ssh localhost
ls -ls .ssh/
ssh-keygen
ll .ssh/
cat .ssh/id_rsa.pub >> .ssh/authorized_keys
cat .ssh/authorized_keys 
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu/
cd ansible
ls
cd roles
ls
ansible-galaxy role init instala-tools_Aranda
ls
cd ..
vim playbook.yml
cd roles
ls
cd 2PRecuperatorio/
ls
vim tasks/main.yml
cd ..
ls
cd instala-tools_Aranda/
ls
vim tasks/main.yml
cd ..
ansible-playbook -i inventory/hosts playbook.yml
sudo ansible-playbook -i inventory/hosts playbook.yml
htop --version
tmux -V
tree --version
cd ..
cat /temp/alumno/datos.txt
cd /temp
ls
cat /tmp/alumno/datos.txt
history
history |awk 'NR>=76 && NR<=113' >> RTA_Examen_20240711/Punto_D.sh
cat RTA_Examen_20240711/Punto_D.sh 
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu/
ls
cd docker/
ls
less /proc/cpuinfo
vim dockerfile
docker login
ls
cd web
ls
vim index.tml
docker build -t lucasard/web2Aranda .
docker build -t lucasard/web2aranda .
cd ..
docker image ls
docker build -t lucasard/web2aranda .
ls
vim dockerfile
docker image ls
docker build -t lucasard/web2aranda .
docker image ls
docker push lucasard/web2aranda:latest
docker run -d -p 8081:80 lucasard/web2aranda:latest 
curl localhost:8081
docker image ls
cat lucasard/web2aranda
cd ..
cd docker
ls
vim dockerfile 
docker image rm lucasard/web2aranda
docker image rm -f lucasard/web2aranda
docker image ls
docker build -t lucasard/web2-aranda
docker build -t lucasard/web2-aranda .
docker image
docker image ls
docker build -t lucasard/web2-aranda .
vim dockerfile 
docker build -t lucasard/web2-aranda .
docker images ls
docker image ls
docker push lucasard/web2-aranda:latest
docker run -d -p 8081:80 lucasard/web2-aranda:latest
docker run -d -p 8080:80 lucasard/web2-aranda:latest
curl localhost:8080
docker id
docker stop
docker stop --help
docker stop lucasard/web2aranda
docker ps
docker stop c8df324f4246
ls
cd web
ls
vim index.html
docker stop 7cb26217cdfe
docker image ls
docker push lucasard/web2-aranda:latest
docker run -d -p 8081:80 lucasard/web2-aranda
curl localhost:8081
docker ps
docker stop e8c3e20ecd6b
docker build -t lucasard/web2--aranda .
cd ..
docker build -t lucasard/web2--aranda .
docker image ls
docker push lucasard/web2--aranda:latest
docker push lucasard/web2--aranda
docker push lucasard/web2--aranda:latest
sudo docker push lucasard/web2--aranda:latest
docker image ls
docker ps
docker image ls
docker push lucasard/web2--aranda:latest
docker login
docker push lucasard/web2--aranda:latest
image rm lucasard/web2--aranda
docker image rm lucasard/web2--aranda
image ls
docker image ls
docker image rm f1af5e6919fd
docker build -t lucasard/web2-aranda .
docker push lucasard/web2-aranda .
docker push lucasard/web2-aranda:latest .
image ls
docker image ls
docker image rm lucasard/web2-aranda
docker image ls
docker image rm lucasard/web2-aranda
docker image rm lucasard/web2-aranda:none
docker image rm lucasard/web2-aranda:
docker build -t lucasard/webs2-aranda .
docker push lucasard/webs2-aranda:latest
docker run -d -p 8081:80 lucasard/webs2-aranda:latest
curl localhost:8081
cd ..
cd docker
> docker-compose.yml
ls
vim web/file/info.txt
vim docker-compose.yml 
docker compose up -d
vim docker-compose.yml 
docker compose up -d
vim docker-compose.yml 
docker compose up -d
vim docker-compose.yml 
docker compose up -d
curl localhost:8080
curl localhost:8081
docker compose up -d
curl localhost:8080
docker exec -it docker-web-1 cat /info.txt
vim docker-compose.yml 
docker compose up -d
curl localhost:8080
history
cd ../../..
history
| awk 'NR>=202 && NR<=236' >> RTA_Examen_20240711/Punto_C.sh
|awk 'NR>=202 && NR<=236' >> RTA_Examen_20240711/Punto_C.sh
history |awk 'NR>=202 && NR<=236' >> RTA_Examen_20240711/Punto_C.sh
cat RTA_Examen_20240711/Punto_C.sh
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu/
ls
cd bash_script/
ls
sudo mv check_URL.sh /usr/local/bin/Aranda
cd ..
cd bash_script/
ls
cd ..
cd /usr/local/bin/
ls
cd Aranda
cat Aranda
mv Aranda Aranda_check_URL.sh
sudo mv Aranda Aranda_check_URL.sh
ls
cd ..
cd home
cd laranda
vim/usr/local/bin/Aranda_check_URL.sh
cd ..
vim/usr/local/bin/Aranda_check_URL.sh
cd home
cd laranda
vim /usr/local/bin/Aranda_check_URL.sh
Aranda_check_URL.sh 
Aranda_check_URL.sh UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt
sudo Aranda_check_URL.sh UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt
history
history | awk 'NR>=249 && NR<=274' >> RTA_Examen_20240711/Punto_B.sh
cd UTN-FRA_SO_Examenes/202407_Recu/
./_checks/check_A.sh 
./_checks/check_B.sh 
./_checks/check_C.sh 
cat docker/docker-compose.yml 
cd docker/
ls
ls -l
cat info.txt
cd info.txt
ls
cd ..
cd ansible/
cd ..
cd ansible/
ls
ansible-playbook -i inventory/hosts playbook.yml
sudo ansible-playbook -i inventory/hosts playbook.yml
cat playbook.yml 
cat roles/2PRecuperatorio/
cat roles/2PRecuperatorio/main.yml
cd roles/
ls
cd 2PRecuperatorio/
ls
cat tasks/main.yml 
cd ..
ls
cat instala-tools_Aranda/tasks/main.yml 
cd ..
cat /tmp/alumno/datos.txt
cd ..
cat .ssh/authorized_keys
cat .ssh/id_rsa.pub
cd UTN-FRA_SO_Examenes/202407_Recu/
cd ..
git remote add https://github.com/LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git remote add origin https://github.com/LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git init
git add UTN-FRA_SO_Examenes/202407_Recu/
git commit -m "Examen_Recu"
git config --global user.email "luqasaranda@outlook.com"
git config --global user.name "Lucas"
git commit -m "Examen_Recu"
cd U
cd UTN-FRA_SO_Examenes/202407_Recu/
git add .
git commit -m "Examen_Recu"
git push
git remote add https://github.com/LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git remote add origin https://github.com/LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git remote add origin master https://github.com/LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git remote add origin https://github.com/LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git push
ls
git status
git push origin master
git remote add git@github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git remote add origin git@github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
echo "# UTNFRA_SO_Recu_2do_Parcial_Aranda" >> README.md
git init
git remote add origin git@github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git push -u origin main
git status
git add .
git status
git push
git push git@github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git remote add git@github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git remote add origin git@github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git remote -v
git remote rm
git push origin master
git push -f origin main
git push -f origin master
git remote -v
git status
cd UTN-FRA_SO_Examenes/202407_Recu/
ls
git add .
git status
git commit -m
git commit -m "Carpeta Recu"
git remote -v
git push -f origin main
git push -f
git push -f origin master
cd ..
ls
cd ..
ls
cd RTA_Examen_20240711/
ls
git add .
git commit -m "Rta_Examen"
git push -f origin master
git push -f
git push -f origin main
git push -f "github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git"
git push -f
git add remote origin "github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git"
git remote add origin "github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git"
git status
git add .
git commit -m "Rta_examen"
git add .
git status
cd ..
git add RTA_Examen_20240711/
git commit -m "rta_examen"
git push -f 
git push -f origin master
git add RTA_Examen_20240711/
git push -f origin master
git status
ls
git add RTA_Examen_20240711/
git commit -m "m"
cd RTA_Examen_20240711/
git add .
git status
git reset
git status
git add
git add .
ls
git status
git reset
ls
git status
git clean -f -d
git status
git reset HEAD
git status
git reset --hard
git status
git push
git push origin master
cat .ssh/id_rsa.pub
ssh -T git@github.com
git push -f
git push -f origin master
git remote set-url origin git@github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
git push 
git push -f origin
git push -f origin master
git status
git add UTN-FRA_SO_Examenes/202407_Recu/
git commit -m "Examenes"
git add UTN-FRA_SO_Examenes/202407_Recu/ .
git rm --cached UTN-FRA_SO_Ansible/
git rm -f --cached UTN-FRA_SO_Ansible/
git commit -m "Examenes"
git push
git push origin master
git push -f origin master
git status
git rm .ssh/id_rsa:1
git status
git push origin master
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu/
ls
git add .
git status
git add .
git commit -m "exzamens"
git add bash_script/ ansible/ docker/ script_Precondicion.sh 
git status
git add bash_script/ ansible/ docker/ script_Precondicion.sh 
git push -f origin master
git clone git@github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
ls
rm UTNFRA_SO_Recu_2do_Parcial_Aranda/
rm -r UTNFRA_SO_Recu_2do_Parcial_Aranda/
ls
cd ..
git clone git@github.com:LucasArd/UTNFRA_SO_Recu_2do_Parcial_Aranda.git
ls
cd UTNFRA_SO_Recu_2do_Parcial_Aranda/
ls
cp -r RTA_Examen_20240711
cp -r RTA_Examen_20240711 .
cp -r ../RTA_Examen_20240711 .
ls
history -a
ls
cp \$HOME/.bash_history .
