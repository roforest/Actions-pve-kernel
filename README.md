# Actions-pve-kernel

Linux Kernel for Proxmox projects

Build Proxmox VE Kernel for J3455 with IOMMU using GitHub Actions

根据koolshare/smzdm 上 emile239/Emile-A239 提出解决Proxmox VE下J3455主板直通iommu分组问题的方法编译Proxmox Kernel。

每天自动检查 git://git.proxmox.com/git/pve-kernel.git 特定分支中的内核版本是否有更新，发现新版本内核时自动拉取分支代码，并自动修改patch文件，让内核使用特制的ACS_override补丁。

# 注意事项
If auto update is needed, replaced "${{ secrets.REPO_TOKEN }}" with your repository_secrets setting in "auto update.yml", "${{ secrets.GITHUB_TOKEN}}" won't work.

# Thanks 

Fork and adapt from **dominicx/Actions-pve-kernel**: https://github.com/dominicx/Actions-pve-kernel
