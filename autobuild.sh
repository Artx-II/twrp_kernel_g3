#Build script
echo "Cleaning source"
make clean
read -p "Start Kernel Building? [N/Y]" ST
if [ $ST = N ]; then
exit 0;
else
echo "Building d850 Kernel"
make lineageos_d850_defconfig
make CONFIG_NO_ERROR_ON_MISMATCH=y -j8
cp arch/arm/boot/zImage ~/omni/device/lge/d850/
make clean
echo "Done"

echo "Building d851 Kernel"
make d851_defconfig
make CONFIG_NO_ERROR_ON_MISMATCH=y -j8
cp arch/arm/boot/zImage ~/omni/device/lge/d851/
make clean
echo "Done"

echo "Building d855 Kernel"
make lineageos_d855_defconfig
make CONFIG_NO_ERROR_ON_MISMATCH=y -j8
cp arch/arm/boot/zImage ~/omni/device/lge/d855/
make clean
echo "Done"

echo "Building d852 Kernel"
make lineageos_d852_defconfig
make CONFIG_NO_ERROR_ON_MISMATCH=y -j8
cp arch/arm/boot/zImage ~/omni/device/lge/d852/
make clean
echo "Done"

echo "Building d856 Kernel"
make lineageos_dualsim_defconfig
make CONFIG_NO_ERROR_ON_MISMATCH=y -j8
cp arch/arm/boot/zImage ~/omni/device/lge/d856/
make clean
echo "Done"

echo "Building f400 Kernel"
make lineageos_f400_defconfig
make CONFIG_NO_ERROR_ON_MISMATCH=y -j8
cp arch/arm/boot/zImage ~/omni/device/lge/f400/
make clean
echo "Done"

echo "Building vs985 Kernel"
make lineageos_vs985_defconfig
make CONFIG_NO_ERROR_ON_MISMATCH=y -j8
cp arch/arm/boot/zImage ~/omni/device/lge/vs985/
make clean
echo "Done"

echo "Building ls990 Kernel"
make lineageos_ls990_defconfig
make CONFIG_NO_ERROR_ON_MISMATCH=y -j8
cp arch/arm/boot/zImage ~/omni/device/lge/ls990/
make clean
echo "Done"

echo "Build and set Kernels finished"
fi
exit 0;




