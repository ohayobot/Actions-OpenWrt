# 1. 修改默认 IP 为 192.168.10.10
sed -i 's/192.168.1.1/192.168.10.10/g' package/base-files/files/bin/config_generate

# 2. 强行把插件包直接克隆进 package 文件夹 (跳过 Feeds 系统)
# 我们只拉取最核心的两个仓库，深度设为 1 速度最快
git clone --depth 1 https://github.com/kenzok8/openwrt-packages package/openwrt-packages
git clone --depth 1 https://github.com/kenzok8/small-package package/small-package

# 3. (可选) 如果你以后想换主题，可以把下面这行也加上
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
