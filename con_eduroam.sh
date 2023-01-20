nmcli con add \
  type wifi \
  con-name "eduroam"\
  ifname "wlp4s0" \
  ssid "eduroam"\
  wifi-sec.key-mgmt "wpa-eap"\
  802-1x.identity "[静大ID]@shizuoka.ac.jp" \
  802-1x.password "[静大IDのパスワード]"\
  802-1x.system-ca-certs "yes"\
  802-1x.domain-suffix-match "shizuoka.ac.jp"\
  802-1x.eap "peap"\
  802-1x.phase2-auth "mschapv2"

nmcli connection up eduroam
