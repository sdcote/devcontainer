#!/bin/bash -uex

if [ -f ~/.curlrc ]; then
    rm ~/.curlrc
fi

rm 
_arch="$(uname -m)"
case ${_arch} in
    x86_64)
        export _platform="ubuntu_64bit"
        ;;
    aarch64)
        export _platform="ubuntu_arm64"
        ;;
    *)
        echo "Machine ${_arch} not supported by the installer.\n"
        exit 1
        ;;
esac

echo "======================"
_tmpdir=$(mktemp -d)
echo "$_tempdir"
echo "======================"

curl -sf "https://awscli.amazonaws.com/awscli-exe-linux-${_arch}.zip" -o "${_tmpdir}/awscliv2.zip"
curl -sf "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/${_platform}/session-manager-plugin.deb" -o "${_tmpdir}/session-manager-plugin.deb"

pushd "${_tmpdir}"
    pwd
    unzip awscliv2.zip
    ./aws/install
    dpkg -i session-manager-plugin.deb
popd
rm -rf "${_tmpdir}"
