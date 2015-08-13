for i in *.crt; do if tail -1 Serasa_Certificadora_Digital_v2.crt | egrep -v -q '^-----END CERTIFICATE-----$'; then echo Serasa_Certificadora_Digital_v2.crt; fi; done
sed '/$/\n/; N' -i *.crt
for i in *.crt; do if [ -z "`sed '$p' -n "$i"`" ]; then sed '$d' -i "$i"; fi; done
