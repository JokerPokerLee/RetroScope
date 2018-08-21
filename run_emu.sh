export LD_LIBRARY_PATH=$HOME/Desktop/RetroScope/out/host/linux-x86/lib
# ./out/host/linux-x86/bin/emulator64-arm \
./emulator-MAGIC \
        -sysdir out/target/product/generic \
	-system out/target/product/generic/system.img \
	-ramdisk out/target/product/generic/ramdisk.img \
	-data out/target/product/generic/userdata.img \
	-kernel prebuilts/qemu-kernel/arm/kernel-qemu-armv7 \
        -datadir out/target/product/generic \
	-skindir development/tools/emulator/skins \
	-skin WVGA800 -gpu on \
	-memory 2048 -partition-size 2048
