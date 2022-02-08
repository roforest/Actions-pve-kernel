sed -i "s/106 @@/105 @@/g" patches/kernel/0003-pci-Enable-overrides-for-missing-ACS-capabilities-4..patch
sed -i "/pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ACS))/d" patches/kernel/0003-pci-Enable-overrides-for-missing-ACS-capabilities-4..patch
sed -i "s/(dev) ||/(dev))/g" patches/kernel/0003-pci-Enable-overrides-for-missing-ACS-capabilities-4..patch
