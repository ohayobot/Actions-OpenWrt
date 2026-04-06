# 修改默认 IP 为 192.168.10.10
sed -i 's/192.168.1.1/192.168.10.10/g' package/base-files/files/bin/config_generate

# 修改默认主机名为 ImmortalWrt
sed -i 's/OpenWrt/ImmortalWrt/g' package/base-files/files/bin/config_generate
