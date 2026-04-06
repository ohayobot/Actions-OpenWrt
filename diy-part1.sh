# 移除可能冲突的源
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加核心插件源 (只保留这一个最全的，减少冲突)
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
