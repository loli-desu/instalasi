#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYu��  ���Dp}���>nގ����       @[�
�E4#M2    �    U<����4 � � @U?D�4� �44 �4���d���I	��&S�d��hz��OF�)��C�![9!���s�gbN<qF�tJS��!]�  �-�f��ĀR$��r[U���Zwa9��DvHA2".�Is.c����bS�?Q��	5GQ	������]����	�ˋToΊ��*�3:�{%�h2!QUYJe�P�sa~���;4�� ���'���t��RΈlQC�ʭ�-�|N�#z��q��E���#e���$�B"dP�]�Q�uF��)��t��n�m�;�C"+�۵����o��#�*}�!c �1�X�o��(�6k��H��M��=�f�;�����ː��\�o-��^EV����]��Hd�%�D&L��EN�����Ma��=��M+��+�:��[��w�f�ӂr����[����ôYLu�
�"�4�ҶE�A!UE)�Tq0�NZ�?;=�t�I.&�_��Œc2���!�r
K��Z�30O�=�6Gi�00y�Q������·6
��<�t	�"�)4����E��1��(����(R��J�U�Y0WH]�J���;w��ՓX�|���$���KȇĄ���rE8P�u��