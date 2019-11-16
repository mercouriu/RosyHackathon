GDPC                                                                                <   res://.import/MA1.jpg-ae09e4cac2cb7dbc6397d8d85f4241df.stex �+      �
      �!##?�YZ�k�F��@   res://.import/MA1.jpg.png-2841817d87016889b9afc9e2631f3480.stex 09      q      �n��U�4�Ro�G�@   res://.import/MA2.jpg.png-50e2915cddc564271072b7c6b6b4a128.stex P?      �      ��=����+��ǹ�<   res://.import/MA3.png-88f54c2ccebf521db2537422c506ca80.stex �E      p      ��<z�?|u3=�]�]<   res://.import/MA4.png-436b80fb46600c413b1eeb85e1774c91.stex �K      �      0u���w(4�U5&���pD   res://.import/ManSprite.png-6112988179902d4b98899e93832c512e.stex   �Q      9      u�	ط#w�T���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      �p��<f��r�g��.�@   res://.import/slime1.png-386fc41cafe0db49bddfdc831f5a514f.stex  �\      �      )�Kzx�?M�0�z?�@   res://.import/slime2.png-766aa239258d3d264b7e8c0ccc02029d.stex  �`      �      }N�Z�2M뭛�(@   res://.import/slime3.png-06b67fd9f3e2efc5516e800bf504b63a.stex   e      �      GO��oq�o��~Ƶbz   res://Enemy1.tscn   @	      �      �˞#~%�<;�������   res://TestLocation.tscn        �      �
�MN˯\��?H�%   res://TestLocation222.tscn  �      �      ����>a�+gs6)��_   res://default_env.tres  0      �       um�`�N��<*ỳ�8   res://icon.png  �i      i      ����󈘥Ey��
�   res://icon.png.import   �$      �      �����%��(#AB�   res://player.gd.remap   Pi      !       �ؿk�5s0n��;P   res://player.gdc '      ,      �+L,���(��u��   res://project.binaryw      l      }�Ί���Gt�Kľ   res://slime.gd.remap�i              �����D`,��(   res://slime.gdc 0+      �       ��')��L�8�]�F�$   res://sprite/Player/MA1.jpg.import  �6      �      ��-'���3T�==:(   res://sprite/Player/MA1.jpg.png.import  �<      �      l����O�
@~caȃ(   res://sprite/Player/MA2.jpg.png.import  �B      �      1�*ٟ]_�v�|mUtK$   res://sprite/Player/MA3.png.import  �H      �      ��
��S>2���#�@�$   res://sprite/Player/MA4.png.import  O      �      �2��\�98&�%�@�D(   res://sprite/Player/ManSprite.png.import�Y      �      }�t� ɢ|�!�B$   res://sprite/enemy/slime1.png.import ^      �      ��[�\��r|��C��t$   res://sprite/enemy/slime2.png.import`b      �      ��J_b���MB�l��$   res://sprite/enemy/slime3.png.import�f      �      �뼁��"{�>ko     [gd_scene load_steps=6 format=2]

[ext_resource path="res://slime.gd" type="Script" id=1]
[ext_resource path="res://sprite/enemy/slime1.png" type="Texture" id=2]
[ext_resource path="res://sprite/enemy/slime2.png" type="Texture" id=3]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 2 ), ExtResource( 3 ), ExtResource( 2 ), ExtResource( 3 ) ],
"loop": true,
"name": "def",
"speed": 3.0
} ]

[sub_resource type="CircleShape2D" id=2]
radius = 19.2569

[node name="Enemy1" type="Node2D"]
position = Vector2( 11.4433, 50.1744 )

[node name="slime" type="KinematicBody2D" parent="."]
script = ExtResource( 1 )

[node name="spriteslime" type="AnimatedSprite" parent="slime"]
position = Vector2( 19.1455, -22.8866 )
scale = Vector2( 2.02696, 2.02696 )
frames = SubResource( 1 )
animation = "def"

[node name="CollisionShape2D" type="CollisionShape2D" parent="slime"]
position = Vector2( 26.8232, -24.6471 )
shape = SubResource( 2 )
 [gd_scene load_steps=8 format=2]

[ext_resource path="res://player.gd" type="Script" id=1]
[ext_resource path="res://sprite/Player/MA1.jpg.png" type="Texture" id=2]
[ext_resource path="res://sprite/Player/MA2.jpg.png" type="Texture" id=3]
[ext_resource path="res://sprite/Player/MA3.png" type="Texture" id=4]
[ext_resource path="res://sprite/Player/MA4.png" type="Texture" id=5]

[sub_resource type="SpriteFrames" id=3]
animations = [ {
"frames": [ ExtResource( 2 ), ExtResource( 3 ), ExtResource( 4 ), ExtResource( 5 ) ],
"loop": true,
"name": "idle",
"speed": 5.0
}, {
"frames": [ ExtResource( 2 ), ExtResource( 3 ), ExtResource( 4 ), ExtResource( 5 ) ],
"loop": true,
"name": "run",
"speed": 5.0
} ]

[sub_resource type="CircleShape2D" id=2]
radius = 18.2656

[node name="Node2D" type="Node2D"]

[node name="player" type="KinematicBody2D" parent="."]
position = Vector2( 28.3014, 21.6423 )
script = ExtResource( 1 )

[node name="Sprite" type="AnimatedSprite" parent="player"]
frames = SubResource( 3 )
animation = "run"

[node name="CollisionShape2D" type="CollisionShape2D" parent="player"]
position = Vector2( 1.18913, -7.84829 )
shape = SubResource( 2 )
        [gd_scene load_steps=4 format=2]

[ext_resource path="res://TestLocation.tscn" type="PackedScene" id=1]
[ext_resource path="res://Enemy1.tscn" type="PackedScene" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 27.7992, 223.211 )

[node name="Node2D" type="Node2D"]

[node name="Node2D" parent="." instance=ExtResource( 1 )]
position = Vector2( 126.416, 157.804 )

[node name="StaticBody2D" type="StaticBody2D" parent="."]
editor/display_folded = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( 344.665, 218.631 )
shape = SubResource( 1 )

[node name="CollisionShape2D3" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( -8.57373, 206.627 )
shape = SubResource( 1 )

[node name="CollisionShape2D2" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( 160.329, 415.827 )
rotation = 1.5708
shape = SubResource( 1 )

[node name="CollisionShape2D4" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( 177.477, 11.1459 )
rotation = 1.5708
shape = SubResource( 1 )

[node name="Enemy1" parent="." instance=ExtResource( 2 )]
position = Vector2( 483.065, 236.342 )
     [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSC      
      �      ������������τ�   �������϶���   ����򶶶   ���������������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ζ��   ϶��   �������������Ӷ�   ������Ӷ   ���۶���   �����Ӷ�   �����޶�   ��������ض��   ���϶���   
         ui_cont_left      ui_right   	   ui_contup         ui_contdown              idle      run                           	                              %      .   	   4   
   =      C      L      R      U      [      a      h      l      r      w      �      �      �      �      �      �      �      3Y;�  �  PQY:�  YY0�  P�  QV�  &�  T�  P�  QV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  (V�  �  T�  �  �  �  T�  �  �  �  �	  P�  Q�  �
  PQY0�
  PQV�  ;�  �  �  &�  T�  �  �  T�  �  V�  �  �  �  &�  T�  �  �  T�  �  V�  W�  T�  �  �  (V�  W�  T�  �	  �  &W�  T�  �  V�  W�  T�  P�  Q`    GDSC                  ������������τ�   �����϶�   ����������Ӷ   ���϶���      def                    	      3YY0�  PQV�  W�  T�  PQ`  GDSTI   L            �
  PNG �PNG

   IHDR   I   L   ��8  
qIDATx��[�vK��6���'��9��L�8����J�p����N���� �l��]�-����m�̙Z����U��I*U�M"�����m~aܒ7}\D���ژ��"�B�)q����noclY�������Q/��V����F`�C�[T�/E�[�2�TѨ����ۦz��S��u-f�_H���le���M�vf[��zr���!]��]Y�����U׭�o����M���\mo���R4�_�Zn�[g*�|�<}$��K�.���o����ˮN/9���Q�'��)�[�Hl����/�I�65���O�[�g;l��i����RV�At�~/$���3g8��"���{kC.���w9�>�`^�S�um�"7֑Dd�1s�c�U�9d�u/2�J�.`�qez�Kì��?~��2�����.M�.3���J�M�f�ua��x2�puu�M��
��~30p,�'�+��Q�ODEx���wN��UvbS����x�T���*"���g|�O��0�L/�+�."J���&7�U�d21GE�@�P%(N8�"ϔ�ʎ�'���,0���j
�i2����j;;;:�^
��[��uօ�~Kv9�N�3e3~Z-0���t�Ak~��e�J���DD��2�5SU��2��quue#��h϶H2�]YcD��ha&�4=z��_FS �l]�(����^}D���SG�Vv>5��W�?~�ڏ�cW��h:��,]�K�ּ��Yl$��s��C_�	�Evww�\l�C;[����W����w�����~zz�d�b�Z��K�6�w��o�g���o�S׵z#�+�]__[�x<N�Hu ;;; l�
$�{,��H�e}��j^6����[m4� %�f��4+�V�қ�7F�!�������ϟ-,ߜ_ ���m�`�,��_
�6B��w?f3��Q2�J;<<�ℙ�yr^=b���Ag���뇷o�p�'g��7O3�YB��h2��NL\���h�x<Vx��N����j�O�u0���ۜ"b��ҩχ��/'�o��=K�ŷYva�+l�R`�+Bfu� ���vttd�p*��X���GGG��4W'��p��FMD��P@�������S�H�l�ֶ3$`�|����uǴI>On�V'At3_0I�K�V<C���K�U����&��,f_\I6J�i[a�Y��L���U�m6'��ῼ�L�Yf����&��c�`�u�X�)���٘�>��,`з�|�XD�����S�ʼ/� 0�f��Y,�@�n���n�p�Ov��� $�@`Un3%p)���f�������Y��1v3�Jj}4X�%8J%ق+U8_+�.�{��?����8a 4IOp3_ѝ{�8�L$� a���L:88@ 0��@X�Y[3�9@��C""�0t��>��婷"�2M�:�,f�ٗ7^�xppp9�03B� ��A������@�f5��z�g�*��NGo���D��h	(���[K3R��lND���Y,
¨�<�/"� "^ٮ�0XV$A�1y{\�ξ�xKE�r��d��j@Tl��F%"��c�*��B�̋��,q�ƚ����v��S���i���Ǣ)�o4�!V�c^�|�V"�f��S/ �h�4��J�w䜚>]�LU�(jMM�7|&�T�>$%j(BAW�"L5 �z�3ܩ^#��7����h�{l��m�ao�����urHDw<<:�9?�@�w����������v	��KuE�����[��N�:�D�s��ͧ�~�P)�&rX0�V�`�x%�w�?��htqv�����jF�@���-T�>s�����$Eg�i��6�ÿ޿e�P�47B ��x8�����UR]��Ԡ�d�>3�u��T�"SO��M快~O��%A%j t����ѡ�*_@WUUK S@#M�2�����>���4ϡ�N��	>�'"(4�hiFD� ]�u��ɂ���!h�R��*F6�b,���;���o���������-��B|V O�SC����[�.�����M��a������E ����B�~k��Fד��<�lo��g�JI+`kxK��r����ù��������**A+�&��کD�������t�*E}�P-��4��^ӎR�	���N��;�,K]�E�Z�Y�R`�ѥ�&���,�O��]�E�R�������R!~:�a�~M�9� �+[
�I�Y�Y�{�m��".�ZD�ǉ�=����ߪPy`�I�W���R���Yz0]xR���[
��'�d��o>�"�"S`��^�s��͞�?�ϋ�,�D�`���?>>��=�|h�>-�}�y�����-Ih�"���ٗ��c��^Z����������Y��z:d����$�"2��[������������~����˕��3��k��"�������j%ץ��S�_�TW/���h"E��w
�1�N%��ȬX����y!]��S����*������2�+qgU��M,����Ķ��h�l��?bQ\��ˎ/x�������s�H��۷b��}��]r���P�pK '''p5�'\�>=�m�o������������V��4_�z��<�&�-Zi��Q��㷄�m���#ۼ;m���m?��_��m�w��k���_������    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/MA1.jpg-ae09e4cac2cb7dbc6397d8d85f4241df.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite/Player/MA1.jpg"
dest_files=[ "res://.import/MA1.jpg-ae09e4cac2cb7dbc6397d8d85f4241df.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
   GDSTD   d            U  PNG �PNG

   IHDR   D   d   ?���  IDATx��=r�@F�-"2N�N��(��W��9r�N�'!SD��J�f���z[߫r�`�����"�B!�B!�B������tR��l6�L�1����R\��1P!9e�����(\'���V�RuvS$���2���+"�\����2����]�u(�����#�GTUte���xs��#�RNB�P�mG��%		�K�Y{�B,���35Od�$�ZUU��L�? �=�z��*C��%er��}8�r���J�n��=��*%�]_.M#/ooQAC"�|>�~��a�<Z��\�F.M�h�'�%Q���rL��W��Ǉ*�6/Ր�4�5%�Ы���=��N.ri��Ao�F)�"vY���UC(����#�~�
I���\U��*�;Ԗ��C\!��8W{]�C&���W~h_�o!C�h�����*An�0�T5�U����5Յ���h;�ySx�;��$B��zk�e�-u�sCK�~������p����X5Y���l"� �#JH�Ŗ�I�5��]%����jTR��J������{���B,�M�/�y&��>B��H�7��BDҥ<��`�)�H���&��vH[�Tѫ���"��j��� j�v��3-�F��~��~}��I���k��b���C�䬱hZ!],�%$B[!�9d��jC�8�������;���<��X19��r�s��Rf�	o%��Ѵ�A+�����D��C
q@�2pL.JD�I��c���ˮ�yML8ϲ1���8��J=��WW�.�Y������B!�B!�B���(02;��<    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/MA1.jpg.png-2841817d87016889b9afc9e2631f3480.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite/Player/MA1.jpg.png"
dest_files=[ "res://.import/MA1.jpg.png-2841817d87016889b9afc9e2631f3480.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDSTE   d            g  PNG �PNG

   IHDR   E   d   �}��  *IDATx��=n�@�+*:N�m�˸�*W�ܥZ	_�4Y�I�\!��^�̌=��l��IQ�����c�            ���W���"nc��)d2��1,�H��1�B��O!-�b�R�3�a�'��������/)�2Rm���2[HQ��u]��3#j|b>ɪ�������h��y��DM!�q$� [J/!f�XR,�"��V�Mn�ڕ�~ժ���1�����h#����	��΄�-��t��f��H��p<�����CnMC�^_��>*B��k�Z���haI�5ݚF#�@��"��(�-1c!��E�I��[��9I�����[��\��4�!d�y��(��%���Ԥh�>9�4�W
�JZ��EU
���d[��"�J�^����1>�D�V@h�2>�B�ᜒ�y�m�cբ�ya>�J�U����k�+�x��v$�F��?4ƫL���[�%�-�qC���x����>��w|��,Ѫ��&P�#[J�����9�,]-j�'ڬ�֛E�p�$��V�)XR,�CHn�lß�S�ߓz;탻"��g�lt.b�l>J�-�;Z�U�[ܟB��#���vw2��;fvϛq��}ط��&����2x�Zɺ�>����"�z������i��J!"�������QB�����yO#%�yOZY�J��V�-h����	G��#K�s�XJ)�Ҍѡ-�Tn/'�Zl-)�R;��o6�ܴ��@J ��S&��F-��D[F�����Kr�yN[&�/�7W��'���g��=$�k����B8             � ��<0�T�    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/MA2.jpg.png-50e2915cddc564271072b7c6b6b4a128.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite/Player/MA2.jpg.png"
dest_files=[ "res://.import/MA2.jpg.png-50e2915cddc564271072b7c6b6b4a128.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDST>   c            T  PNG �PNG

   IHDR   >   c   �ѳm  IDATx��;r�0��W�|{6Mr[��tu�vƺ��$c�ĝ*�h�UF�IOF;��I�H ~�)Zp�q�q�q�ql�X��nb��A!�8��5Ħ�N��pK�!Z	/)zDC<Y�@�8�UN"�G0bS�5^ ;�(�UU}�޶mʆI~�$��}�ڣB���0
2g��w���K�&^c��D�����BP�-��if�#͍%NT�\0Xj�ǈƎ��%әH��t�}n���=�e/��\`�ۥ�E����q�p���:xzy�^�mn��r�8P������>E�~{ۤ�H��D�R5������E�}�TGUU��߶m���V�5�-��l4�r,l�تs�=�Tui�)^�p�6R�� B᚝>\�X�W<���y=v�V�U�:5���4Wu����4�XޢHU]S����[�uh��alսSp�z��&�|�Mq��d�O���i�Q��l���z_����%�����n�`Ǒ�y�_�x%�89�����zx�N��?E����M2�q����zf
L��r[j,Y��+!���B���'�6ar�2�l�'g�؈О�M�V+�1XI���7"F����Á�h��������������CA|��AX��O\�)��_̩��p ���=�Y�ľJ �^����X�1!��-�&�B}]%|͂C�	(��T�����-5R�FL"�\�"�J��O�z1�$��p�P�αF�[��Չs4Q�Qb:K��Rc�s|�NeI��G���e�����>�q�q�q�q�qh��V0�z���    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/MA3.png-88f54c2ccebf521db2537422c506ca80.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite/Player/MA3.png"
dest_files=[ "res://.import/MA3.png-88f54c2ccebf521db2537422c506ca80.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
   GDSTL   d            m  PNG �PNG

   IHDR   L   d   ,h�p  0IDATx��=��0��'��Mf.�`�ɸ���l��a�ق��9��I�S��d��n���%ƴZϭVK6c!�B!�B!�B��U�F/�K���n�$5�"��O\0I�l4�LS�iѠ�et8'�W��k��8BDr�_d�2��`ABUU��w۶.���Pn/Z���������_w#�9�m��,@,TD��Ibm�[��b�L��j�f$�Dҏ�g�,�qD=!���&�*+��:��MӤ�/Rrd�<��z���(Y�^���::�0,�v�:���5�5c�L҇�e�����#[�[י[�e��a�����{~{`��PUU�������X۶�����&�[�ݍ1����?���_{-9b.�����D���`I��0���AT�(��ʡB؅�����-a(��2��|���N��A�(Km'�-�39�+ʴ'�=�[��6�O���l���E��2e�6;�Q6b����m�a��n�Z=|�%�K~c�8[�%,�z$f�b7Y-D��,w3N��RuX��]o6�����/�qt��H��N/M,������Q�6q�0.&��J�K���!X�(3F���/��	zEfD3FF8o�3��"zȨ�|%*���9��_=��3��3�h�N���~���@������}�pG!��l��hO4HF�O(t��s�~�G�L�|>�mB�/�C���3e�+\ɲ�.��,4�mJ�5BJ�Z�nL�">����r��W�zz��`�H��s���Q��_;ΑnW��e��x�Mq��p-ג��w1�$��Oն}%�,��1!�B!�B!��l� ƣ��N��    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/MA4.png-436b80fb46600c413b1eeb85e1774c91.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite/Player/MA4.png"
dest_files=[ "res://.import/MA4.png-436b80fb46600c413b1eeb85e1774c91.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
   GDST,  d              PNG �PNG

   IHDR  ,   d   <�  �IDATx���On�8�qf�Uv�HS�l�ˤ����x���L�� �E��*@fѨc3��?�|�����X�~�{�m)q                                ��+�	����c�6nnnfb� E�����(��1�2o�\r쭶�5,c�B�d����sm�7,�/=s�X�cB.娭ʆ���|���?�&S�ݻw�ǜS����?Rv?YȆ\dX���+��������b�0�bL����믚v���ڲ��aeb1�g����d�\b.����??��ml)�T����"�%9���<���yL����u$���bw������*����zZ9t~v��j��mk�K��t.B�}���7��w,vS�	Eك�<��m.)�6z�wxCE+�Y�`}1�~������۷]��b��k7-駄�*����0��u9�,�����[*�+hX-:��4P|gW��Ev�j~����ǒfe=��8�^�(K�]ª"���s?�t���w8���p8Ԏo)�IU.www_dd5�Ս�b\S�eO&�]-<��ڗ�'����{s}=�_څ��LO����Ç�Y�k�˔��6)8ZP�%E���zҺt'�a}���H_D
S$��t.�C�a�7�ImӲҰFl�}�X:�b/����o崆&�(�t:���Id[K�Y��sNv�Zc�����K�65r)Ф��'Ϡ�s�"�O�tajd��K��ߟ?g�|H;��u{�C�zʭ3�F_|�E����d�����L<*��p�M��x\��R.KJ��Zns�)%��yI�zJH��iU�{!��U��Ղ��j}-�+[/��,'/+�<�:���1YZ'Vs���[�s#՗HâH�*̭	O|�l������?��k/EZr'K�����_x*L�qG��F/ְ(�K������y�����e��˒�}H�-���no1;�#,�����$�z����N$^['�岤ջ�Ǔ&���"��s�Jnaj�SCb�u2r.Kh�^âH_���\a�������~S���Vr��{�o�;ݟN���Q�,�+�r	�4��L�2|�!#+W�W�2�f�ׯ_ݧO�^m#q>�˩���t���a����]{��3�����	�)V��ٲX.s�����\�kki=�n#g>=t;��"���yNO���?^�a-�oO����%�-|
W�4Ҁէ?�X�r��Ɇk�9's�eet���ߡ���|�E�.kkIV����]5�����=~L���\_����W��#�}��{2�8_��R�ai/��CY�,Lk9����f��FF�E��i�G���5�����x��:�D2qn�������Pp�"��tg����:O�u�2��4z͗�������K���n����οg���۷���汵B��2�˒��z5���s�Mk�E��МkS������$�|���oůa�L��EvZ��4�m�L/F�&�<�YA.��5���+-n[�Y9��Lw�%���r�j!�|���g�OA��f���I�ek�C.yvW[=/���b�^�����ŧ���Ŧk�\�ğ�/��X�b,/ƞyX�!D.�,Ԗ��E�s,�9-3%�9�G��6ٰ&,�K�߿��~�;�s\�9���d��Ӫ�M4�؂�`a�Z��B!r�g!����ø���Fz�z.NK+�Y���rf���G�����*�ra���&4�yV�H�M4W����m��n3��6[�n�]���;n��X�|�mI�ы�-�1,���b�jR�m�f\�9����;�W���R��q���Jm���⃏�s�䃏x�	8��,��8ハj���/ �E�0���~�gz��p6��;�5�0
|��'0i񢻏�L=���#���2���x���{�kF��b߯��|��K�5"����mm���~�6M���b-��<��M#I����%�H�i�쵄=/����u_��rf�a�%�c)`��Br�K>�M�d��x�e�V���"�s�K>j                                  0�?s��]tWB    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ManSprite.png-6112988179902d4b98899e93832c512e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite/Player/ManSprite.png"
dest_files=[ "res://.import/ManSprite.png-6112988179902d4b98899e93832c512e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
 GDST-   *            �  PNG �PNG

   IHDR   -   *   '�"  DIDATX�혻�0��h��������؀� ����(� R�4���(���@s��&r|�]���8��3���;����ϢZji�l�T�V�]y����T2�~{@�Ց";��b��A岵S����U�?�^�6�^m�X8�.��Sm�$>(Ј~�z?=bi���U!J�����XH׉ކ��4Ŵ�R�7"�Nӻ9��Lz��~F�����C
W��_�SD��(��@YΣMzBDuY�$!	=�,ڣ'��	�Og��kA��_ڬo�V�1V\|�6���FϋV��0��q�!ـ�/yD�q�qF�ae��a�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/slime1.png-386fc41cafe0db49bddfdc831f5a514f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite/enemy/slime1.png"
dest_files=[ "res://.import/slime1.png-386fc41cafe0db49bddfdc831f5a514f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
           GDST-   *              PNG �PNG

   IHDR   -   *   '�"  BIDATX�햱�0E/�"1 =P1 �3�0�H�"�M�Ĳ��?۩�IH9�w�"EQEIL���|]��<�5��RYh"��S8��9�GB�+d����Y�{>lB�aO��nv�%���o�k���횩8K��?��U]��ሲ.��b
[��^״�LOi�ʪ��!h��ޓmT\��T�RD�Fca=t!X�Fe��K�<�	�*�bq�9ڮa�ǃ[ �~�ID�;NF6I�a#N����8���X��E�>��A4����bA���Iy_�ߡ���		oU.�9Q��|���*��(JV~�_g��W�    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/slime2.png-766aa239258d3d264b7e8c0ccc02029d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite/enemy/slime2.png"
dest_files=[ "res://.import/slime2.png-766aa239258d3d264b7e8c0ccc02029d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
           GDST-   *            �  PNG �PNG

   IHDR   -   *   '�"  HIDATX�헱�@E�h��������؀� ����(�3@��iB�E��]��G�'!!�����a��Tڅ��Y������)�sdSH���!) �.%���g\�����G>"�&�v�^.V���R\^G��s4K�5��Hv������_+��Rc���}ِ��b=b�fg:���8D�
ŔJ�#��B#��Բ9��֎�7�P��98��4PDڡ�)*��vt�h�@�j�Ėt�"�>r2�HHB��t<qG� ���s�L��=Q�Ȩޜr�0!�Ǫ_�D�����y���V�/�0������Q�Yn��a�a�Cf�ѮX�    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/slime3.png-06b67fd9f3e2efc5516e800bf504b63a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprite/enemy/slime3.png"
dest_files=[ "res://.import/slime3.png-06b67fd9f3e2efc5516e800bf504b63a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
           [remap]

path="res://player.gdc"
               [remap]

path="res://slime.gdc"
�PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name      	   Rosy Mozy      application/run/main_scene          res://TestLocation.tscn    application/config/icon         res://icon.png     input/ui_right\              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script            input/ui_contup�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               deadzone      ?   input/ui_contdown�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               deadzone      ?   input/ui_cont_left�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               deadzone      ?   input/ui_cont_right�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               deadzone      ?)   rendering/environment/default_environment          res://default_env.tres      GDPC