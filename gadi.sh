ggID='17n7KE3pqZA4pEeaLBT8bG4t-woUONRxV'
ggURL='https://drive.google.com/uc?export=download'
filename="$(curl -sc /tmp/gcokie "${ggURL}&id=${ggID}" | grep -o '="uc-name.</span>' | sed 's/.">//;s/<.a> .*//')"
filename=aa.iso
getcode="$(awk '/warning/ {print $NF}' /tmp/gcokie)"
curl -Lb /tmp/gcokie "${ggURL}&confirm=${getcode}&id=${ggID}" -o "${filename}"
