folder="microtb"
mount='true'

while getopts 'u' flag; do
    case "${flag}" in
        u) mount='false' ;;
        *) error "expected option -u or none" ;;
    esac
done

if $mount -eq "true"; then
    echo "mounting: ${folder}"
    sudo mount --bind /media/$USER/PYBFLASH/${folder} ${folder}
else
    echo "unmounting: ${folder}"
    sudo umount ${folder}
fi
