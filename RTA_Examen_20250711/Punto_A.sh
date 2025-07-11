#!/bin/bash
# TP2 - Punto A
echo "==> Creando volúmenes físicos..."
sudo pvcreate /dev/loop0 /dev/loop1

echo "==> Creando grupo de volúmenes 'vg_datos'..."
sudo vgcreate vg_datos /dev/loop0 /dev/loop1

echo "==> Creando volúmenes lógicos..."
sudo lvcreate -L 10M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_multimedia vg_datos
sudo lvcreate -L 512M -n lv_swap vg_datos

echo "==> Formateando volúmenes..."
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_multimedia
sudo mkswap /dev/vg_datos/lv_swap

echo "==> Creando puntos de montaje..."
sudo mkdir -p /var/lib/docker
sudo mkdir -p /Multimedia

echo "==> Montando volúmenes..."
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_multimedia /Multimedia
sudo swapon /dev/vg_datos/lv_swap

echo "==> Configurando persistencia en /etc/fstab..."
echo '/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2' | sudo tee -a /etc/fstab
echo '/dev/vg_datos/lv_multimedia /Multimedia ext4 defaults 0 2' | sudo tee -a /etc/fstab
echo '/dev/vg_datos/lv_swap none swap sw 0 0' | sudo tee -a /etc/fstab

echo "==> Estado final:"
df -hT | grep -E 'docker|Multimedia'
swapon --show
sudo vgdisplay | grep "VG Name"
sudo lvdisplay | grep "LV Name"

echo "==> Punto A finalizado correctamente."
