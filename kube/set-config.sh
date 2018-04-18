ishome=$(iwgetid)
unlink $(dirname $0)/config
if [[ $ishome = *"$1"* ]]; then
    ln -s $(dirname $0)/config-local $(dirname $0)/config
else
    ln -s $(dirname $0)/config-global $(dirname $0)/config
fi
