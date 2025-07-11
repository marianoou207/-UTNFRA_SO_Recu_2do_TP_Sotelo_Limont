sudo adduser msotelo
sudo usermod -aG sudo msotelo
grep msotelo /etc/passwd
sudo apt update
sudo apt install git -y
sudo apt install tree -y
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker msotelo
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
ansible --version
ssh-keygen -t ed25519 -C "marianoou207@github"
cat ~/.ssh/id_ed25519.pub
git clone https://github.com/sofiasartori/UTN-FRA_SO_Examenes.git
cd UTN-FRA_SO_Examenes/202411
chmod +x script_Precondicion.sh
./script_Precondicion.sh
source ~/.bashrc
ls ~ | grep RTA_Examen_
nano ~/RTA_Examen_20250711/Punto_A.sh
~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
chmod +x ~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
/usr/local/bin/sotelo_clasif_animales.sh
sudo nano /usr/local/bin/sotelo_clasif_animales.sh
sudo chmod +x /usr/local/bin/sotelo_clasif_animales.sh
ls -l /usr/local/bin/sotelo_clasif_animales.sh
/usr/local/bin/sotelo_clasif_animales.sh ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/bash_script/Lista_Animales.txt
mkdir -p ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/bash_script
nano ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/bash_script/Lista_Animales.txt
/usr/local/bin/sotelo_clasif_animales.sh ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/bash_script/Lista_Animales.txt
sudo nano /usr/local/bin/sotelo_clasif_animales.sh
sudo chmod +x /usr/local/bin/sotelo_clasif_animales.sh
/usr/local/bin/sotelo_clasif_animales.sh ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/bash_script/Lista_Animales.txt
tree /tmp/animales
cat /tmp/animales.txt
rm -rf /tmp/animales
rm -f /tmp/animales.txt
sudo rm -rf /tmp/animales
sudo rm -f /tmp/animales.txt
/usr/local/bin/sotelo_clasif_animales.sh ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/bash_script/Lista_Animales.txt
tree /tmp/animales
cat /tmp/animales.txt
ls ~ | grep RTA_Examen
cp -r /tmp/animales ~/RTA_Examen_20250711/
cp /tmp/animales.txt ~/RTA_Examen_20250711/
cp /usr/local/bin/sotelo_clasif_animales.sh ~/RTA_Examen_20250711/
tree ~/RTA_Examen_20250711/animales
ls -l ~/RTA_Examen_20250711/*.txt
ls -l ~/RTA_Examen_20250711/sotelo_clasif_animales.sh
~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/docker/
mkdir -p ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/docker/web/file
cd ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/docker
nano index.html
nano Dockerfile
id -u
sudo apt install whois -y
mkpasswd -m sha512
openssl passwd -6
id -u
nano web/file/info.txt
nano index.html
nano docker-compose.yml
docker build -t web2-sotelo .
sudo usermod -aG docker $USER
exit
docker ps
cd ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/docker
docker build -t web2-sotelo .
docker tag web2-sotelo marianoou207/web2-sotelo:latest
docker login
docker push marianoou207/web2-sotelo:latest
docker compose up -d
docker-compose up -d
sudo apt update
sudo apt install docker-compose -y
docker-compose up -d
nano ~/RTA_Examen_20250711/Punto_C.sh
chmod +x ~/RTA_Examen_20250711/Punto_C.sh
cp -r ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/docker ~/RTA_Examen_20250711/
mkdir -p ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/ansible
cd ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/ansible
ansible-galaxy init 2PRecuperatorio
ansible-galaxy init Crea_Carpetas_sotelo
ansible-galaxy init Cambia_Propiedad_sotelo
ansible-galaxy init Sudoers_sotelo
nano 2PRecuperatorio/tasks/main.yml
nano Crea_Carpetas_sotelo/tasks/main.yml
nano Cambia_Propiedad_sotelo/tasks/main.yml
nano Sudoers_sotelo/tasks/main.yml
ansible-playbook playbook.yml
nano playbook.yml
ansible-playbook playbook.yml
nano Sudoers_sotelo/tasks/main.yml
ansible-playbook playbook.yml
nano ~/RTA_Examen_20250711/Punto_D.sh
chmod +x ~/RTA_Examen_20250711/Punto_D.sh
cp -r ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/ansible ~/RTA_Examen_20250711/
tree
history -a
cp ~/.bash_history ~/RTA_Examen_20250711/
cd ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont
tree -a -L 3
~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/
cp -r ~/RTA_Examen_20250711 ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/
