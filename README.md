# LXC Monitoring Lab

Proyek ini membuat lingkungan monitoring server menggunakan LXC.

## Struktur
- monitor (Netdata server)
- node1
- node2
- node3

## Cara Menjalankan
```bash
sudo apt install lxd -y
lxd init
chmod +x deploy.sh
./deploy.sh
