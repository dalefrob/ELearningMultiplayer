GDPC                                                                            +   D   res://.import/dark ghost.png-1aa89c6e3db9716dd49543c6906f4ede.stex  ��     �       �ְ����\x�rhH   res://.import/english_puzzles.png-86c41110d476407fa7a9e33a2445d1f5.stex �      
]      �녏���	��
*�@   res://.import/favicon.png-0a5a152f53d253bbf3f0fa31a8d80122.stex �p      �      T�[~.��e��y��d�@   res://.import/heart.png-46ac0108226a8969f121b451c7b38c9b.stex   ��           5w.�ް��Mj����D   res://.import/heart_mini.png-e09714f14e0df6726f40fec2cd7127b7.stex  0�     T      tVӮF�
����x���@   res://.import/tileset.png-a39e944f25b35d62f55d4f98a36e2b5e.stex ��     �      ��$������v6e�Yԃ   res://CollectibleWord.tscn  �            ��%�f�O����2�(   res://Export/english_puzzles.png.import �m      �      ��{�F�j#f����    res://Export/favicon.png.import `�      �      }����Zi��5?#��   res://Ghost.tscn��      X      ����7���m�V�   res://HeartPickup.tscn  P�      �      DE�M����%� ���   res://Main.tscn P�      I9      ~��׏�Ņ�f�h�v   res://Retro Gaming.ttf  ��      0y      L��^{��)�:��   res://UI_Heart.tscn �I           X�U9My��=��L6�   res://answer.gd.remap   ��     !       :�9-��qz,��/�   res://answer.gdc�J     �      l��5��@x�ɛ:�   res://castle_tileset.tres   �L     �-      ��q3�[�WV���R@8$   res://character_controller.gd.remap ��     /       �wX+Ȯl�Ň�Gs�    res://character_controller.gdc  @z     }
      ee- ty����蝁    res://collectible_word.gd.remap  �     +       ���Z���#�+
1��&   res://collectible_word.gdc  ��     �      ZX_�r����?7�o��   res://dark ghost.png.import ��     �      ����BTâ���$<i�d   res://default_env.tres   �     �       um�`�N��<*ỳ�8   res://ghost.gd.remapP�             ���){r�6���   res://ghost.gdc Ў     �      'D0�c���ƞ��Lq�   res://globals.gd.remap  p�     "       ����O(��%,y���   res://globals.gdc   ��     �      ��/�O��Kŷ��   res://heart.png.import  ��     �      ��5�l5��]����   res://heart_mini.png.import ��     �      �C��	�to'X��U   res://heart_pickup.gd.remap ��     '       �8�s,�|3�pt7��   res://heart_pickup.gdc  0�     �      Ԋ:���wR��G�$   res://hearts_ui_controller.gd.remap ��     /       G�����}� ��s��ߌ    res://hearts_ui_controller.gdc  �     �      ���[� �,�L���q    res://item_spawn_point.gd.remap  �     +       ����H�y�wclhG�   res://item_spawn_point.gdc   �     q      ڊ�	�u/�;H���   res://main_screen.gd.remap  0�     &       �>���A	*�u�ƨj!   res://main_screen.gdc   ��     2      ���j�3��)����k   res://project.binary��     U      E�M�KՌ�l�Ψ�    res://question_manager.gd.remap `�     +       ����7����?��C   res://question_manager.gdc  ��     �
      P1��RM����   res://spike.gd.remap��             ��ч�ci)�%�I/T   res://spike.gdc ��     �      ����'0'ʧ�ʛۍ   res://tileset.png.import0�     �      Y���XLE��Qŉ-���    [gd_scene load_steps=6 format=2]

[ext_resource path="res://collectible_word.gd" type="Script" id=1]
[ext_resource path="res://Retro Gaming.ttf" type="DynamicFontData" id=2]
[ext_resource path="res://tileset.png" type="Texture" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 5.0

[sub_resource type="DynamicFont" id=2]
size = 11
extra_spacing_top = 10
font_data = ExtResource( 2 )

[node name="CollectibleWord" type="Area2D" groups=[
"answer",
"collectible",
]]
self_modulate = Color( 0.164706, 0.137255, 0.137255, 1 )
script = ExtResource( 1 )
text = "motivate!"

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 0, 0.428192 )
texture = ExtResource( 3 )
region_enabled = true
region_rect = Rect2( 48, 32, 16, 16 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Label" type="Label" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -11.9593
margin_top = -29.5
margin_right = 12.0407
margin_bottom = -8.5
grow_horizontal = 2
grow_vertical = 2
custom_fonts/font = SubResource( 2 )
text = "hello!"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="body_entered" from="." to="." method="_on_CollectibleWord_body_entered"]
         GDST   X          �\  PNG �PNG

   IHDR     X   �v�p   sRGB ���    IDATx���y�\U���Ϲ��Iw��+���-!�EqEP�U@t��}��~*���8 �""(:�	!d���I��=�?��������Nޯ�']�n�{n�ͭ�g�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        L�  �ڌ�7&����� `t�j �L� ���7 ��qu�����L�b( �xqE�Q.�X� �T @q*-t  �sP�/�t��E��JzR�_$��f��'�,I'K�'�)IOK��4��c'�ч+7 �"9���Hz���%-�T���Α��A��~��5H�?��h�
>�J�{�;I�@   p�Z��c���Bk�m��f���'�/�2�>�}7��za��3   �dQ	���^l�����7͊��2��')��Y��7|���@   ȧ*��Z��Z{��v_�5��m=���;����c_z*�g����>����C�w��m=�ӆ���1�+�� 
�N� P�ҨD�Iz���tb���w�kņf=�y�^غO;��H��M�׵���p��;��o����H���v�>s�J���M�4qL�L�c�7��Y���*Ku��OI7H�URo� ŉ�3 �$�zI��IIӒ�c��Z߬�^k�?��Ӡ���q�N�sHt�I�P�O3 �����Y���^٣o��R����_�E�6i�aM�=�.�aI�I?�t����<���b�� �T����$�\����t��ѵ����]zuW{Z��4�J7}�D��x�ɟ�tm����}� �3��y2�[}�Ok[kwZ��T�7͟�79Q5��6m�t��{� P\�:@�
�ܟ(�q��^�[��������S�nl�������p�w���I�+`Z�H��W%5F�]�U?y�Ռ����g6�-GM�)���*�%�"iEP Ņ�3 ������.�N���l�nݱ|���v崿��R��E���|Sҗ3����y��;�+��ں�s*߄�J����:k�$U��ľ�IG'� @q�� E*  yQґ�'�[�Ew�؜s�>څ'Mו���O�%g`���
��.I���t�ӛ]Q�Ue���i������/I:*:�  ���z @��<�f���C��]�M���9V��2��_|�u��U����<Y�;69�� #�  F�a#��!嬷PX�56�Ӓ�b�<ŷ�W+43א{�ݪ��A�e�����N  yA  �ǰ �*�$�q�6u�kP�P��m
L�4�P�L8m����J���t�sn[?"��	@ `�" ��cX%�*��Dg�������C%MVh��Ҩ��pڔ�6C�[�=6�q&�$��� G  �ǰ $]�"�yv�zs�:�7���Uq]���./�M" �Q�  F�a��nH�����_^ܙ�ukm�E��;��ٗ��I�*��~�� �D�-$ @���� D�~�b����hw{�v��hO{�z��7�A?|�xFU�%�(-�!u__��uzdm�,UNU� � �����U�-�����^��-I���:zԡ5w�j͎t��Mme������  Ň.X 0z�~�T[^�rܸڊؤ���  E� �Q����Z�;A�æ�j���4���i����~�I��: �  r�M6�}����[T��@�=. �����J'� $F, �R.���<"���߰J����VcM��hџ��� � �BPO���I�BICV������kȮ�(�]�J:6��2�(�o$A d�  2���Y/�I���>+�2�]�K����$��s0v�j�?f#��~&�.��+%��B�Y���A��?A d�  2���Y+�AI�����G�+�ޯ̯��Iz^ҕ�	>�w���q0�}���M6��R�:-�,=���W$}O��L
}�S�;�M�f� ���  M)*�e��(�ټ ����b�rIߔ��-V�C�w�G֫-�"~P��(�eKf�܅S���%}_җ%�Z��m��#iA���t���D00 ��� Ґ"�0�~!�}��IR)}X��$=��tIwIZ��ƽ����v��+vs'��So9B3������$��x���J:#�	��_(�ʒ�d ��� ���b��u��u���u�ӛ�7���
U�o����o���b�+�+��_o{��#ʚm��۞�]Oo�$.��R�[���J����
>}�������=�9@��\� Vܪ�R�~|@�-�	;�u��w�Ҿ�P�����┙:sބDw�wH���i
ݕvshW[���5za��� �`�X���s5�>n������풮�4)vk�\�K���F�n�$��.�u�,Ԥ�U���_ҭ��A+ $�U �H|��PW��i�ں���;Vi[kW��ӛjt���:u�!i���ך��֨���둩��R}�#�tv���M��٣�~wG�k��T��K��zغ#=
��<�(O� H�+$ $�"��"i������s�yN��jO�������5��:�6�������͉ ��t�I���������ڥ=�N�mnM�ߜ�u�ޅǪb��#�G�pD� �� H�TIZ�P4���o߿Z��ݝV�奞.<i�.:i��J�����7�{I�6%�#��3��w�ژ��}������S��?8>'��G���ϙ������j�C  ��:@��7I�Pt��7���7d���c���7��q3$I����=/vB�f4����/�����ӏ���6��w�K�K�E���&�(��D�!�x\ F�������|}������ztFҙ�'�MGN��X����2B���
���s���]z�Ywi3F����Цؗ�#����� �qU�I���V)4��$ikK�>q�Ju�%\����R���ij��;��J�� �u@  J��T��
>�}}�O�	>"]}��91k�4(�*V��-j p�! ���/KZ��e�S����qo�ny���$}>�{B �u  ��|I_�NX��Y\��@�A�ݻr��|uol�$�+@q `T! ��<�f:Z����O�{`�sĬ���o�Z;���+$�"~[ ).� �܇%-�N���ש����vm�������&/��� F Hl���D'��Ь�^�S���<�ʞ��X��й @  �}JҘȓ��A]�`�o�h�:{�̈́6V�s �  6�կߨ]m=�*�TsG�nrcl��-  $����*����b�:�� � @2�F?9s��|��B�E��Y�z㼸!�m   �dn��|t��Ϝ�ڊ�Ŧ��T�x����+t�  � @b����44¸��BW�vh�J������!u�I
�3�� 	� @r�J��脳����3
T������GO�M��B�   H�I�#O��O�i�*�J
V VEY�>��#d�'����� F 3�$z�W�n5���Ic���3�b�]}��4�*:�Wh��y���[ p�! ��,�tCt�ێ��7��~�ܩs��GO�M����8 0�pK bXk�T�P���i�����۞ն֮�(
lҘ*]��>�I'(���~ �p�� @�$�NI+��MUy�����TZ���@W�}�m�b��I�� ��/& d�9I��0gB�޿tV������Sռ���ɟ��� F- ������Nx�	�t��Ƽ�	�s��F���i�ɿ���D�� �� @)*�WJ�8�������� 1wR}��-�>�h{� H�4�& � �$�������<ct�1Z|X��O���r5Ԕ�o�WsG�v��hņ-_߬�m�3��Z��+���&�8�Q�+�X[��RO-�}j����������Z��M~�	\������ H@  	cL�Y��^�5���9DW�v�&���{���SME��7���YM��gkզV��ȫڸ7p\��1��Z�;e���9$p�����__�y�����iO{��X�Iya�H"	w@� $G  )�B�f|}����#5gb]F�[8�A7\~��|j�n{bc��$ǌ��O���N��/���!u�ě��&�|I{�{�W�>  5ƀ @F�b9or�~���2>"J<���<S_9�(U��8.]�T���+��K��(��v��z����X�R\\G� �! �"3��Z_?�h5T��ג���o���P76�>{�\-�=.�j���w�M5� �]� ���V��޵@��/�]]]Z��)�Z�J�{��[_���Z��(-Y�Dcƌ��ɇ��Kf���7��9�b�,�:琸�}���'�ԋ/����y�SӸ&w�qZ��$UWW�WU^���w�>��g��3��� �D  E��%�4yl�`sI�o�;���_���#���<�UTT���ߥ+�w�***�^�h�t-[��h�Oo�օ'N���ӣ_��+�s���?��O��Iuuu���Kt�������4T齋g��G^�[� �� ��c*���'���٩/|����ƛ�����^�qǝ�Ŀ~R{��J���N=�I9�K=͙P���T^��g䃧6l��޽{��O|Rw�����#���]7�x����/���+p�w;Y�u ��G  E�܅SUVY�}_��Ʒ��3Ϥ�׺u���Q==��	���&Mic�K��o>z�~x����e��7=E�,����)�:�Ц�������|A�֥�j�b�
]��������JK<����� � �%����������3�o������K;��[�v婇�Sf����Y���K�����ٷ����7ݬ�^{-�|�y����{_;ev�� @a� @��X��c*�һ��u�m�g��}�O�v�z~Ҭ��1Ue:��i	_?��i��*�*�g5��s�N�����G�n���a�>�+5�1�� �;  P�Qx�����ޞu�Z�Ȳ��AAN:�7�$]���3�9.�)o��?��2d?cU[[��~���� Ł  �@SmE`�s�=�s��y4�Vd5^��$���Ư�b�4����N�w|�њjs_W �; (e���={��wt���*PȗR�SiTˊ��ݛ �Ѵ"< Ȋ�W b-�}��V6缭���n��W߀�d��?諣��"�����t� ��E  E Q�xܸ���2�G�@��Z:^_�cܸ�g����Ϭ� F  P^���2q��r���c�����m9����;^/ӂ���9���������� �! �"��?���K_�x�����>��<�v�iCϟ|uo����W���>����y��4UWWkѢ���WmjUw_�"� ��G  E�5���jjjt�Ef��Yg�US�L�$���תͭY�/+7�hw�$i��)z�[ߒu^_rq`��Ț�Y�	 p�  ���/��ƽ�q�\zI`��T�N���\����?����G�����MC�?�ѫ5uꔌ�9��#���{;	@ ��� @����]7�Uii���j���i�5m�4}翿���:I�֖.���;�֭?=�]�Z�$Iuuu��w���S�����G��׿�5��_��J�y�z�6���  n� @Y��E�yjS\�رcu�u��%�^����E%���D�s�n����<y�$��oP߸�%_�G����k��:�S�N�2E7��z������$���������رc�^�s�&=��%o� d���  w��4yl�N;b�����r}�CԻ�}�{�1�Z���6�����ƍ��ҩ���I�&��o�׷�_ص��li��w����r�*/�TWW��~�3���K��ez�ŗ�w�^���h\�8w�B-=u��[�v�~�Ć>
 @*  Pd���}�jmn��{O�)�zcc��;�<�w�yI���ݯo��%��5~v��˔�6�9��Ь�����z�Qj�)�$M�4Q]|�.� �{Wn�OyU����C  E�J�퉍zuW�>x�a�ژ�T��Z���ݺ�����_.�w��ܦ5�mұfG����gu�i��s�˘�,�--]�y�z=�Zs� A  El��f��Т79Qo�7AGM�/�B���_����Wm���N˱aO�6����q5��o�۩�{�����W���˺��-:o�T-:�Ic�����^غO�٭_کA�f (f  P�}����C}a��*�4wR�k*4��B�}j��ӎ}=Z��=o�=Y���}�=G��v� ��^}���iu��������k����4il�k�UU^����j��՚�j�q�� �? E�{��bCafu��ܩ��r�޺`��O��$��ަ���C�٫�ŷVkw�i�ζ�� �  ��u���g���B 0j�   �C    `��    1   ���J$ �T@    �f� GfO���ه���O-��Go�`���,T�����\�5�j�.���
]$ 8`� �#��Ň���7ૹ�W-}j�PK���>5w����է<�!�(奞�j*�X
.k+�TS���r�V��)*�nW �  �G奞&��Ҥ1UI�����_{;z���O�}j�|=PY���վS��,Ӽ��W[j��)WSm��V����B�e*-��1  ��O��*4��"����}��/h���#\��a��1���TS�� ;n�(PSQ�˗�,t1���Kf| �(�� yd�n�������5�W[�1�e[]��)ɻqe�o������3�N%^~F>�Vkw���Y�m�]��w��XI����?����/4^��O�&�댹�s/( �  \ymO��]�5�뵕�j���������T��*UU^���ʲ����g�y���wD�g4�}�G�w�r�me⟳�A_�����;�����I�;������O{�{4��P�h�� �@  ��j;��PGπ67w&ݮ��L����[���I�U�%*-�40�;(mHy��y��|D�?�^奞��C�gTU>��l��6]���j��S[w��sb�3� G�qSIm��צ�N�n�{���8��c���;�M�+Y]eY\x�k�65w:	>$)O=� �D 8���3�VWY�֮>g���P����K{�{��?��B���cJC�6�M�
�����W��].F2H� do�2�p��QW�vH���_�c���n���O�}��r��Ҧ:L���w�@J�[���,� �7l:��R��Ԏ- .M�:��*hƫ�}�"�3q�hcEY�� �p � C  ��~�z��������e���}���߾�[��Yj���n_��L���嶏� ��� � B  ���d|}���G�$�֞�^�3T��q�I�4�����vK�v �� ���dF��;�Aw��M������3���~�����_�	֯H���Tc�ˇ�mku�����{X���\5���b�x�gT_Y���R�U���7d%    IDATyL�v�[@�7�}���  "  ���
������
5�V����RAw�O�s�N�sH\zW��PP��3���Pp��ӯ���硿'��o����U���.7�aXڌ����=,���,=�"����ڦ�<��-�- ��+�P3,P됴�� � C  �����S"	�7���;�d��]���P�|B������*(��������eHl�$�Y1 d�1  ���E?Yr�8g�t�:ː�֖<t�jq�$��ݯ�Nwk�,:�)6�Ag��A�  rs_��E�59�n�t���
O%- [�0�$��_�?�N��|LL���r����$s 8H� �d���RV�JI�H:A
�>w��l�z'�\�v���آ��jT?l������_�]�fEZ��tiGƀ��׭--]q+����ph�J{O�ڢ���wÞά�'�c&�.B��B��a�t HWL �@@ "IWH�5�w@������
3L���T"��c��mi��M��筻Դ�j}���5��J]��q�D[�@��G�(Zuy�n�Т�uF>%���� @��b@ �
M�:)����[�Ӈ_�R!>~�l�s��fI��! ��1  ��>I�G'��p����>F�������L�M�N�� 9# �$��}��W���ԛ�Py)��Ѧ��D�=kn�w�F������ 2�/# ��-����,Lm��ϙ/�
�a���g�Ք���d_҇$��T p`! �%������6N�r�켗	n\}��Z:;n��J�G���~ @�r@F��ZIOHZ�x�?6莧6�X��e'��eKf�&?��J��A�! ��q��,%	B&+�̈N��?�놇�i�w�H�����o8\�.���VIK$m	z� d��' d)I "I�%=&�1:�ٍ-�����.���U������ע��Λ%-Uh�y  �WO �A� d��?K6��N}��/k��|)̞P�?{��7�ľ�O�ْ�'z/� d�+( �(Er���%͌N���~f�~��Ƃ��}�*���?a��X2S�%qs�l�t��Չ�O� ��*
 9J�H�I�JZ�������W����|1��2F�r�lzHm��OJz�����  ��p �B�Z-�ʠWmj�M��k��e�ô�j]q�,-�sH���K��R��A� ��J
 ���H��%ݤ�LY����o/��oWl�֖.��;(Mk��'Nכ���hA�m
-2�@��> ��� �P�AH��H�<�/mۯ?�ܪ��핟^�3F:vz��[8U�kJ�Cw��O)4�<E��\�+\Q��4�I:U�w�-+��}���;��=ڱ��E�X��V�#��-GMԤ�U�6}\���M�� ��
 y�A r��o)�vHBkw�iٚ=z�����ޛk���+u�Ct��5gb]��_��EIL'o ��� �G!%��#�J�"�c�VmjժM�Z����Yذ��D�'�k��-�Ѡ�'ԥ�C���J�[�`:�!� ���
 # �@D�J�Z�e��Sm<0���mZ��Mkw��]��ݖt2�Qc|}���X�#&�k�z͝T�vG�^�Z:�Shzݴx @�q���a"I�j�X��"iռ%���O��lצ����ڥ��]��ڥ���l)��,Ӕ�*Mo��Ԇj�W�9��P]�I6��e�~#�w��3y3� ��� 0²D�д���겕������ڥ�>�m�՞�^�t��m��WG�:z��hu��RO5���(U}U���PSm���Vh\]��j�5��Zc�ʲ�ŀ��~~��4 Y\u�@�D$i��7HzS�1�U�"��P0�;���а�H�o���Bi��%C�k�V�J
�Ө�i7�db��Ï�%��& (�� P`9"��~b�q���\3-�VJzZ�
��sl�%C (,�� P$"%
M�{�����P���I�v�X�B-���]#�yI/+͙��!� ��� ���`$�'i�B-&�%M�45��$�I��]c%e4�;�>�VߧР�풶I��{K��I�A�Nx @��� �@��d�%5(�T����z�Ƅ�ޯ����=
����^�( P��R�(S�`��t ���U  KPB� �Wr 8�����@ \\� ���T                                                                                                                                    �S� 8�Xks�Ø�|�r\�x<�\�O�K H��$��JT��}_��e���6���]LvLƘ��o�Mx,��#Y�s���X��r�秵6�qf{�A����ʗ�8�J]  -���4����8
��D*�A�/T��E6�e��@�� p&�
S�;�.�~��;��'��e�w.�Q��|���/���,�zN�&��pp  ��t*_)����4ER��Z���F2m��"i��}Y�UE(Ǌ�XI�%Uk�1��%i���L�9�*��R)����:7�+�=�)�]�I�P��&i0�<��k4|� ���dXI7�HZ*�dI�ZkU����nI�ÏJzF�S�veR�TRS@�r��7*tL�%Ͷ�6���ݒ�Jz2�����t�888����t6M�0I�J��Cݒz$�*(n��C҆�kä��;:�!Y��I:U���8k�I�)��/i��U
}����B��)˘Ar��%�n<�z$ݢ��  Iq�@���{����c.�4�q1��笵x�w��W�m�������I�Zk/�t�$��^I5��!�n�*�)eyL�[k���|���y���!鯒^�dpw�-��s}���1�B�;?�Xk�y�/$��jc���^	��S���*�*S�VI:.�{��@,�
 ����P%)I%�k�Hz�F�zc%���9I�m�N������Ic�G%5eS�4m6��@�OՒ����qͲ־�P�������6��n��%��l�+�4��S���ە�J�U(����G�6��je�*��6h��[�1W䩜NcN��<&�@�P���.
�"]a�~e���>k�Ò�����0��b�}V�g2yc�G���Yk�c����4�Z�}k�K��)%ﾔaW�K4���$n���Z��Z{������587�"�4�ϩ���a����w(���F�Y��e�ڻ$MK�����󼡩��1�籜���2(0 ���T�>�4�3��$\y���iT�gZk��� �1��ef������T�l�dkZ�<�磠�$�o�}���_*�g9�2	��8?/�־l��8�2�p��v���F�)�� �1��4cʘ����=�  ��%�� U���+k폔���2�T��&���y��U�9)T��1c�U�� ���>�����c�g��X#��.I��8?+}߿�Z�+�f�*�Zk�m���,�<��IƘq�-�ƘCb�7 �E  -�+��7�<d��|D�Z��?�*4�Ea8<<��Dd�e�L���+�sR|��,I����1�NJ�1�Ƙ?( XOp�̪VFK9��b��T��%�EI*�2 ig�RT���Z�S���ʥk���*6P�.<��g��o�� %8'��9V���ਜ.��������$��h�؏�r(  ���*4]l����Z۟�B���~����*ޙk���H�I���Ϥ�^��1��<韛^O\Ŝ��~/�xw%t�TI�*�IJ|��NX$FK9�����wA��J��Hz�)-��G��Cә��</�Ӭ�?S�M�����uA]�Fi+�$�Z�_�.Ls۸����fg�G���_��������d��@� Ȋ�yc>Y�r$�y޽�iL#���Jk$=�n�k��*����bv��fԷ|Ĳ��D����|��y���ь1_�<�$�����f��@X�X �JR�g��~$˒�.I�ML4#O��k%M�g�\3�|�������DR����t��T��g�Rk�-��D'��hi�7Z�	��@ d$�e�ZI�]�D��w��ߝ���TL�$e�Xk�g�-�.c�x�1fq&o����ȯ��$��nI�#Y�lXk�F�>F � @F<�;���B�#	�y��c�]�P!
W��������Ƙs]�|��~-�w�󼹣��U,k����1i���Hz�@�J��y�$�� \ JRQ������'I�3y�1f��t0}��נ��Ʃ7c�Hg�p��WT|S'gbFl�՚�B*M��
] ů�+ ��1f��w�Ic��B����X��_�����IƘ�.D���L4�Y4���c�3B��k�U�%�?V�+VQ���\ҖB�@�+-t ���߇�v�S��Ƙ�KڪPEkP�8I�}�_l�9U��Dc�&�D�Ƕx�'km��w�^�@+���y���B����1�|���+��? �3R�g���Y�E���1�RI�7ƤjιB�����Z{��yO+tnVK�a�=G�Iy��c�I�Ĥo�4�3;�L���H:'��Xk�y�-il�c�]} �E �@ ���WH�<��6�|�Z{���$��P��1'���1�*EU⭵7c���΍1��Vf\��^6�\e�}2���b��Oç�%�s����1H��-�Ш�N�t���K�1�4����c���b����e��k��?5�|I��;}�s\�����kZ%�|6ƴIz6�L��͹���mOw���� H�+�8A��1g���B�t��c��2H�Ӓ>a��m����Ƙ/J�����;�A���~�g�r ~/�IO&��Yk�$}��v%�25%�MnĄ�q�Bco� i�1�c����-)�1In��~c��>f��Z6|�+%-
���Xkߜ�,R�� �R��: ��@Q�#"�����Z�#I�Kj��%�[}G5��vI�Sh��ogZ�	�Lҙ��<�e�.U��UtY���b��XҀ�2��a^3��I��1�dI-���.M1��[�n3k�����ӹ�o��t��{�_�K�ͦ�Е����#�`" (2��y��0��%}�Z;(���)(IV2Ɯ ���Υc�Ƙ^cL�c����^ �	k��#�CЪ�a�c>�pW�D����1r�b�ٰ��,����dAH�\3�(�Eq��b�g�Jty
��<������ �����Ii|MC�1�j��lxlI��fs�4û�κ�c�*iO��m��Ƈ+�_������e(���J��(�Y�ꢏ'&@^�h?-��})61z|C��2�c��Q9���2`_q��
>��!� �� H�s�uo���L����H%2r�>��Me&�6�[�1	���vI?z!�����pKS�1�:Ge9LR�HV �����k��w9ڍ	��(I���I�k�ޠ�"�Ut�K���r��u.������s� X� @ ��UE}���`�M��%�kIII�]�K�vN�Ͱ�����`���c�-W��ޡ�����1�
q7:j��f;%(�3W��<9�<��D�E��@$ZT��0�Lc��U��� @������~F	���/;�!�#��J�����;#�T�t��.�q�Q��R�%I�8�U�SH4��4G�?��A��}G]�uT���� ��� @���'<k�S������ú�$0"���������I�"W"i����U��Uc���c\�<��u8�{��ϾU�.���?1:0��2�)k��tV\O�E�	�J< h@ ��I���m)�7c�x�Y��%km� '-QwΟwP��?9�k$}�e]�$��\�����)fR�<|쾤:(RI�<�J�k F�:G���kA� Y�mȵ,�}����ce�ee��cs�Ek�$%Z�����c[ꬵk���� Pp.��8�U9�glB�53T+4�QY�\m��IJ�I$���Չ*���j��ǽ/��Hr�}e,��NG�':.W�e܊�9tr�]�:6 (  ��B�n��PI�)������MQ�O|E���C�FIk��WI�'>$w����9TZ��R0"��NG��ڻ:޶lޔ �ls4e.��t�D��y��+�1_ʰ�Z+�(IGc�m����e��f��
ؾ"���<�U� ����c���:�(���'Q燓�R�>�y�5 �1  ���(�zG���tc��	^sU)v���$Yk]#;�<��ԛ�eX 5���wY�(�]��bm (*�� HGo�M�2V�fGy�+Q?'������2�Ի�c��ki��\L��* I�
�k�`�d"Ĩs����hF  A]��166!A�ͥDw�]U��km�~W���
�+�.2�<o�$Q�M޾��j�+�� rF, ���(�#哉D����bnLG���Y.ʤ�5�\,�(I����ekzlB�-R��C�΃��|  '`U��.��}Q�K4>`������]�β+�1.
�yޮ����c����.���z���p���LߐdJ'ߥ�" ń @:� Ƙ�Ƙ��ǵ����ne��G���d��*�����-�r�}e*(�2�L���dU�]�Gș�ƘC$MrP�nk�>G��@�  '���y�e}�1�DGy�kX S�sQq5Ƙ��^Hw��p�R)�M�#( I�X�y�K���E�Ƙ7cJ����(������`T" ��\e����c�0<��^�yl�r�ɦ1]�e��Xk/JT9L��h�y��1.ʣЂ�#jpp��iI�}?08��vk����ZG�g�	�m	
�8*�G� @Q! ���hm	c̅��͍<O0&����~�+��V3�0�|�y�:�3#ы��i���/���!i}l�#-< �c��(ˡ`1�x��Q����#�Z�"�al���<IotT��c�c��t� �O  �
W|:$��(�Jk�����t��+]�N�l�:WH�����vp�1�rTi������`2|\�\�o�}6(��z��|�1����J�E+\��$��(��y�,�� �5�f E*�Q���f���G
_��U����f�$���ܵ�\�y޻�x�$k�\�A���+#��H�8{W>|�x�گ�ڇ�y�UģZ��t�/k폭�cS�8�~�Ƙ+%��U9$=�0/ (  ���?��c>,�V%	,b*��UN�어*�|ck�풖��k�k���D�<�{�Pwͣ�e�����e�Kz<�6u�/I�+�^IU�6�
B�n���avHZ�0? (  �$�����~�������#�^b����r7�HT�ˊk���o�>-)Ug�S$���Y�$��a~�M�0��D�׍1�r���ږ�ʞ���p��)�B�jj�R������Aٷ�ű����};�k� ��  �R���*�<d���ik�]��%�.��&I��^�e��c@�Z~�e��TZk��־$��NThM�1
�������G%�xߏ'�)ʥzIu�ǙƘ'�1_v�3c�]�V��~8pi���k�=��#i�B�>Y�ɒ�1Ƽb��O9>$����@��	��U������<�D������+t7��Zېc�ɺ`I�~��T�;ݙ�g����<�2��:B�*��IO(�2�Z�X��<��J�m��*�Xk�r��2I�־3��<�HժP0 8 � �ğ��b��d��њ��A)ye��s���M�]#��%Ƙ%#��$mIs�'$�,i^�����_[k�%���m� %���c�;�e�р�r%�_H�;b%�k�/}�����@%r�s]��Dۏ��3��y�O�~�@��@�nT�d�H�K��Gyŵ�����֕���=�Iz%e��;%�T�r @>P�T FD�1�K�.D�VBO�I��^�<��ޠ���c>���Lc�������	za��d@4 	%���R��uA�(�I�2�|P�Wx�5I_��u4WZ�����h�k��Jr|w�����[��� �o  �a�	�� )�
X�<I��o�ڛ�Z"�|c��=���<oDV=![=���\20�|L��&G����q }� ����T�7c.���	K��C�Ъ֟R�U��Bx���"���ƘK�`R���1�����nI�NK�{�1{��H��, r@�Z(���1W�v[J��V�|ߏ,L�c�y����.\.��7J
��U  �IDAT\g����Zi��1WI�����a��R�{~J�1U�*���H@B\� ���2{S��K1�I�$�ҷ��Ik���k�/%}<Qw����-�#�1�jI�J�A��w����p�Qk��0ƼSғA/��@ �" ��O�1WH�)tAb${��l��c�i
��^4��ߔt���v�����ߜ��i��PRw���Ʈp��p2�QH@J  ҒƝ�ۍ1K%m��+�]���ݒ�Zk�U1�ľ�/+�KQt2
�?m�Y$�d�:�4���Ƙ�U�L-3Ɯ �B 
� @�Ҩ�=+�xk��U]�r�vc������蝹)+3�+�w��$�Y>�Q--�{'+EW�t��4�{^�	ဲ�gWx��3%mM��($ m  2��bd�m���pkH`���a���1Fя ��#-�J����Zk��Fnf�W�]��"iS$1(I֒Y!=��\>
����gH��1&i �iE<��M��r���ۻ�(�������oQ,�h�@�A��A1$.�e�� �h��I�G�'1:=��L�br��f��n<"h4e=&����N�]����?�ŭ[�[�vuUu����9��~�����������Wv��+Wf�ƈ�Y�FĒ��ɇ�ig"i�M��ňx:p��	�.��2�0�͓�8���~f����̷��Tiǻ<"6 �>>�l�r����X�Y���]���w/��J�	�W O��g�amjD���wG�c�����a����H�w�~]����Y$�X���M��lGm6d����
E�)��̼�(�K2�+T�H��a� o8�r���t�צ��>�,7Dį _�ul���O�3�����h�s�Z��k��� f&/��S �s����C���(����7g�/����>N��O�_�io��/EqAf~:3�Lz�;{�#��C˲|UD<x�?���#�|����,�$�WD�N��SI��88�,�#��"�!�,p���ws�y+UmÏ�������w3���͹�`r��'��^�ߛ��p���QeY��w�l��[�k����ff~�[��F㮥}kL6�w����Y��s&"����GԿ�}���Mo�z�������W3���q��^�k��[ϸW'Y�J�f�}�j~T��{��3��e"ig�WDҪ�ڮ�45K5�cw���c�Z�e�$xd.�)�{�������!Y�Z�k���ۛ4�Z�+�T��ߌ	�������4��d�@o�����(�\�y{�޲�_���')���4 _o�̮��sW����L2$�%I�j�@o=�V�>ή��iw������4<�i�I��	��5�T�2�k�8�Gp���Z\���B���ܕ5;����J�$I�$I�$I�$I�$I�$I�$I�$I�ơ-$I{���;o��N?��5.�$�]v~|>I��0�&����< ����矿h�p8�(��y��q�aÆ5-�$I{+IS�y�=��z��$&�6m��N[��I��w�	�����Mk�DDS��������HҴ3�4�����4�]��+<;"���s#��G���l�%ijL�(�D�����p�%�b����I��2& ���̿��3"�h'���p�f��@��Ur�p�S�n������ �4�L@$M�%j?g��=����e�M�^o��px4�x.��1�KҪ���E�G���l�*i*�J@"b�k��2����qT��^o�H��l������=^�/I��'"�m����,�E� ��g��cv�$���r�g �u���a�!�7nܸhY����V��۷o_�}ff��,�#�،N��5FEQuw����������=�ߣ������5ۼy�ueY�{��n͛�ic"i*��ymD�9pcf�
�{M�
_���n����M@����|������-�	TН�K?|�y�<�z& ͺq�i/��Lr�nY�2j}s�Q&M@"��%MG��4�"�P}]D�ڬt��~��S�a�y��v�������yP��DoG�VٝE1�i'K%�;r���>�M�41�4���À{����o��s;�E��(�m���	�Ӹ�c�rw˼\�]��t��Z��v�ҲM��K��4& ��B;Y�?O�W}��l�\��?� �"`SY�?)˒��h���|�j�ہ� �o���xQ�}�l��T#q� �'���~�����r;p����`q�1"h=x����|xЛ$������aT#�]]�F������;ʹIu/^Y/� �
��)�y�y흖���g����\�3�=xt}�������^?�\�������g���������U�1���|���n���;�������G>�Ŗ�=�}@$M���� ��p6}6o޼l��16Dć���jY�*I �Nf�|��99">��~f^O��w�}�ޕ�O�
L�.���m��e wE����p���}�;?^/�ا� \����lڴi�}yNDl����\KD|xaf`��=>"����t��ܗ�͵�U���n��ֱ���`P�a[D��73?F�L��S�DĹ�7��j1-��F�Z���T��rF�����w�z��Cf����6����]��Fj�m0p�Yg!I{:k@$M����q@f��m�_����K�4�yZ���3�U�}�����GGą1�Dꃁ�GD?3�N��f�Q�nX���x|f��*�ٿ(��3�*��ܘ���cx��xf1/��#������zp"Um�"\p�����Ԉ�U����a�����wf�2���#����[�a��`08��� o��_��X�g�:�;�63�G�O�����_u�pPD��*����γ�yhD���/~��ck������|��pPD<:3/�z6�����`�`0�ɢK���D�T�&�ټ}t���n_��&�h%!� 3�n�����a�#f}~0<��)��c�O��"�8�YT�=�YEq2P���x!���9W��k�s�jJ]��)���æ���e��T��w�{0>�J�D�d������]��}뚠}���8����3sUm�+#���~w��̓��7��\S_����W5Ϸ3r�+�� ��_>���"b�����g����D��Ts���N,n�JJ��,˳��{���� n�O.��a�<�l�̋���E�����d"i��D��d��������zGEıT���t��kn����uҸ�����E���u��u�b��<'3� >5bhݛ����>��De��3��D�>�fA�{���֋^�.������
�_�]Y'	� �����1�Kݟ*��bwH^ #����K��4�Uӷ����\�"x�������_Jռig�#����u����xjDܿy^�s��(^W��u����EY�ò,Ϯ���}���dy%i�d"I�ؾ}{���K��MӮ~�OQ����%3�P����N�-�Q�F���C2�_��zumP%��%u��o ���&�o�����m#��L�}�OQM��Ӛr�2�����ߓ�s����z�A��e��#����&��l۶��dnn������������T��^�����Yfgg盡���5���z4�����j�?"����?G<���I��X�d�C�3�eٮ��w��ffffN�������i�x�(I�{�{�7�β�j25�(
ʲ��t@D�,����̜���(���)���}"��;M�n���F�넺�g�'o��:��f��A�^��#�{���M��KF]g+@�f�����N���e�����֩G5J�[�b}�o��=;;�֭[�g��>�������~&	�(3���5��s�P������������E��q��w�����1��W��F|xИM7K94���6�~���#������n��vޘ��
Ї��� ����F�'�kS�R������;�	��|`D4��]=j�ֽ��.�AM�m��R��R��`q|@D\��z4ϥ�x�����xxD����6Ww����^QՒ�_��K�.d"i��	����^�4�*Pn%�[�é�Q���V򦽓X�Zc��>���H���o?����l�ۿ�j�����w����;n����K�SKm�����[�&�<l�k������|_��Y-��g�l��n9�!�O�j�̑�k|L��mv�v��'3��7{ֈeo��Cd)� ��/�tW�̧�ߢ�4�;������]�����!���z$�uWߏ&Hߺ+�0���Q��=2"��L.�
��$i�f"iZ� ��Ӄmt�G���?rդvWR7���?���b�Pŉ�M�l������E1�o���aQ�׈�s"�]�o	eYޱ�V���1�4��v��FĸQ��T�n5|�*���(��˲\ؗe�e5�i��>���z?�d�X8k��Q�㶚�}G
��G�7|�y[DLt��$iژ�H�V?h�F��1jD<?3G5���7w��ݨ�̐���~eYP���ø�JBF�{W}ݳeY����`�����疺�����w@]�� "�Vg�e��H�F�"i*�g3�?_�W=���m'�hX0��3 "bps�&��i7J>7�z�G6ssLj� �7���P͗��լ���4� 3ڝewQ����G63�O�{1s�$����&iZ]I�����xN������cB���&�m&lO��,w�ur@D�rS�n��LLX����4��,ٰaâ���f�U �~�i�$��}G}� 1h��x"P���%&�\Wu�{E��D��%ضm۶m[�O�Yd&��v��Z�֐	���S��"���7df�3�߼^��NB�]�J,�=�Y��	�3���W��%�� ��[���ٱ ᚴF΢~~}����h��u�}��&)�b�L�͵����^ςu\F5G�C#��o������"Q���b"ij���177���ۛ�_PM�w<�״��5o��2�D�e��/��7���E�̎�+QE�x\�߾;���"�j�ЈxK]&2�;�H oa�����8>3�FN���� �Y�{Q7��-".�o��Q�5.eY�if>v�N���m+��z�_���=&�$����\LIZ7& ��ٍEQ�E���T����}�����Q��D\��|�����=�7_813?��g�j@�������"`[f�23��}en\�&"��Ӕl~�SO=u�i~Ju_3"��'2���ˁWe���\;a04���F�S��gG��LD�="���j��Wf~%3933������:�P��kʲ�$"�Ũg!I{:ISaT�\Ϧ}iD<#"��^��eeY��2pYY��/��x#����R��\��� 3_����EĖ��7�	EQ�|�������x΋+2���0����U��px�p8��\���Wp�M��RuH+pU������
�<�A༝����gsqRY��-��z�Z����7Eħ�����pU��cʲ��eY^|�ճypwf�(3�V��.+�$�6��4���	ܮ �����Z�-F�ՙy�p8|w�׻z�1�D�̼�������T#Bm.��TA�pI�/�!�eY6�E~���F�u��w�E�Yť���]����̼�9D�����3���g�����Dē���>��s1����n8^���_��'�X����<xoD\2���u����g�w3�'��L�Fē3��s��ہ�#�/2�yNw�V��-�s���sou�;�7���m�͂�5G�m�/��6pp4��� 3�A=��$M#�t%M��7���Z��f��"b���}B����9|lD�R%w7��}m���V��i���x�sE1r�Iކ��h�[�P͙�k�=������6m�4���d� P%3[:��������
��9���g�J|�O���G���!�}};S�q�Rպ��?�Q��O?���吤=�M�$M�3�<s��cp�7ڰ8�\" ��do��]7�踗�^I?�1ǿ���.��͈n�j6�֤�?�� ��|n�{[R�d��!i��N�T9��SW%����6V�J��(��w��l%�_�$�;�H��D�߈�G���n�g�cK�V�M�$M�͛7/Z6* n��
��8��;ot���[�ݩ	֨㵚`-0��& l;��s-k5���҄cg���o�Y��F����1���{��ι
M��]�ܳ��=�	�$i�3")|��_�& �"�b���f�u�u���I��p,I�gDm�ˁ���oQM"y�O=RٯQp���c8ĭ$�/I�4��x<��κ!�w�ٙ��I�$i�2�$M������=~0�BDN5�Ե����~�c�a���ͯ$i}��H��B=˷����`A'�Q�%I��ax%I{��䑣tf�'3aJ�vI�^�����J�v�%I{�.�`Ѳ�`��yU����3�\�rI�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I��5������/�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/english_puzzles.png-86c41110d476407fa7a9e33a2445d1f5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Export/english_puzzles.png"
dest_files=[ "res://.import/english_puzzles.png-86c41110d476407fa7a9e33a2445d1f5.stex" ]

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
        GDST�   �           �  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  vIDATx��y|T����̒�I&�� ��-� (.� X�X��Z\z[m��u����Zۏ��^�Wo[��V�
��RD��Ⱦ� !		IȾ͖Y��I&3��̚Lp���9y���<Ϝ���<�+^�C�f�4
,��X�� J�X����$"I��(��$I�I���!~|�6���*�T��1Z=��b��W�`(%�U(5�#9V	qa��(!@B�#�Y-�ǁ��	@4a�8�J�T�U(��$��
�  �	��F�P�+�굀���}�6aC�����q��>$@=b=�RP#�����S� .����F�,F�P.
	�1����\�L��L���24v�$	�Ռ�jFr8<�.���b��!���	@/(薜��� �,@��D�*yL�e���e
%J���&,=E C.�Y'��� ����HH1�A<�/WƠ��G��1�<F�L��b��f1�����E�X$ �D�ɩ%�s� �v��B�!&6!*�1� ��&�Pi����ЙN#PgrdKw��+cP����XG��C���8'	��t&G6���ӈϺ[��(��ďpW���&A]��&N#>�AR��ڣ�:.�ڿ�a����$��$��}�EQ�\�"ʅ�\�Be�cA�$�����L���E�V�QpH�<yQ.�e+8�i��5�d2�\�x�V�t�4�B�H������Dw�Y(j�_�x�V@���U�
9�
X0���E>Qɺm�hn���)�ܲ�
�M�ġ�<^���X���+���K�H�'b���W6�4.���Mw
������p8�|�Q־��֎n���������b�%sE�W��f�ЉJ�����'9]{.�{)��cNT1J��|>7-��)r|��鋽<��~��{na�Ջ|*[V]��~���_��l񫝑f�*���tn^~)+�\D�fp�tm�����(>ۉC��?7;}[6���?�u��>����������j�ՆbDA`v^"OJa\J���F�� ���nj�-3�x+@�� ��<u��(���}Um�;���������gڙ7!�L�Oo^�S��?>�y���]�?|��#5 :��_wU��d�$NJa��T
g�8��[V\�-+����
�~�=�Z��A,m��߹�P�����{װx��\gۍ���/l+���f�[���u�;M\73��y���s�N�a���s3x쮛{-�綜�M�X&���V_���ёz�2�$��#���S�NK�o�p�����y�� ��/��| �$�uE������)k�a�KC�o՛)�Ԓ��A���bo�u��f
�9�f��V6����.Q֨c��zJ�:Q)D�5����J��=���]�o��Y�{������9�3�OR|ֿW�;���$��,�d���[�p|6�\�$I��o���V��N��|���9�:�~�HD� C���Ke��ݕ�\V�� ܷ�z��~+�q��S hhn�[o��p���������u�k�O�E�t��3[�T�w��oΰ� QX<w� ���$���3���W�{�D"��3�?�xU�!�gZ|U���쫲fjچ6�½������7�V\»ߜ����4t���1�m�w:�s��h�rT
ىj�����{_#��
���j�� �u�X���`���}u��H$�?]nc�� � #I�� � ӭ�0Ҹ���"��V �Y�`m��Ľ���<�6#b��f���Ig���'O�Tg~Qܶ�u�0������V�3�8t�ҧ��O"1>��F����Ea{�1J�>t�/��q~�־�����A�Ūcx��Uܸt���V�y��{_s3S���c�����|��4�}�d���7�䢙�w<�k��l�Z/X��x��;�r��'�d���Ũb����f�w�����O���]��=V^���w��	I�F�����21;/eo�ʴ�y,�t�W���?èV)�������ocR^րk��NgBv:��9����3��5+=~�����4w�)�p��d"s�M��%i��QY{�%�`��~FrB����-���c���/�'�n1�ى&2U��m��W,������fV\�����s�!���cێ5�UY3��'����B!�@IE���V���\�B~{�]�����t~����B�e'x�9]{�I����h���S��-�#ҹ�0�G���F��ŭ�kdbn�G�҆.^�QAe���+'q��<�����|���A��; $�o�y�'���?B�C��t+/}R��,|r���NS��]��W��i��9Q�p?"��v#�+[Y����w��ߟ�צ7�_�W�/+=�Z��tP�Gn�3�{��i-��\KG�}	�' '#��~�ohTμªf=On,�g_�j`�1g ��L�Ka��t�ĆbZ�c���n��'�(�В��i���|��,�~|��&݀:��t�SH�U"E._P�{��L��BX@^z�.�g;?mz3�PLw��-W�C�hm'_�j&]�����f��u�:��/K����Ӯ7�M��]ъ�q~_��!����%Sӝ�
�����x�~� \�aQ�۾{�+��fw�Ǩ��mLo������g�u��)$���vv���7��[`��)��bYQ&�(������±�j��yDP~n�+lཽ5��΢GE����ָ����w������� 2����~+J�Ә+;�ͺ}�Aw*���WKY�X�������1|��j��K�:�9L������@>LQ|�!I����^;i��<��ƥA]3`HN�����\�o}]E]{d{�.�ڍ��u������HN|1��@��q���u������QB��Cu��9���rjU��z�������#	�3+���?^_Z��%�!�P�Ṥ ��E����������_r?�l
I��S�&I���eS\�ۿ>Dck�S�A}�s���x����O�F�`yh�W�ackϿ�!��� c��}W�բ�)�d�(�纙Y,���f�$�߿�>cp�@�F�����������
\Ύ(�#+Q�=W���o���ǃ��(��w7SU��J!��ME�씸1�(�/���Z�����W���k��"V���^�Wx�����p\(.���qL�q��z���6p=�@YXxYuol��:��	.��8*���.��:~c�vʪC7�Ҩ��c?��R4��21�π(Lώ� C��-y)�ڍT4�h�Q��=�}$��Ӳ�)��R��%7Y��6#�M:*�t�l��G"
 �u�{���;B���*��!a�Xin�t��B^���VL�0�cK
3�\5���n����Rδ�n�ń�X_1��4����-WOw���I���r6H_����b�yf�B.cBN�Kk��y�v����&?-�Wo�Ϛ���N(Xs�x^�m� �{S�����sӂ�!ˍaK�^\��-��K&�b��������c��G�(d"w\�Ϫ���JV���K�Q�)��f����~��"J���.�ĵE��6�DL�U�6�c���Ǜ?fݺ�444��M�6��y����'r���s��J�KV���\>�u|���|�MN��r�����[~��߽ޣ�=Wp��#b2�"&9􁥓�u۾�j���c�䥗^�>���S<��G��_� ���#~NC�icX9+����I���N}d��������Q�444��K/��c��j���������D
� *��������[8p`�z��_�W_�`fn��k��M�/��k's���y�����0|E�>���� �ڵ���^��������<�-�O��!rD(���8� ����_��Ou׾���9)R��[d̏/���J!�x�E_v���_Z�S���?�����X&���p
�-����|ܝ����8�e�d���]� ����F_555tv��f��ᠤ��9_�5�D���y~�+*|˥�.��x��6��ce����<ZD�T�x��C�x��:ᠯ��6}���F���
P�"��)�Yɓ';�W�@BJ_S��7�(��ڹ�=�� ��FniRs��!5շùs琞���f�i�3�,6;iii̝;ǧ:���̙�_�`�Q!!�� ����<���8��#��S��<��GxwO͈8�l�w�8��G�(j�����}���~�����E
 ��H=��V���E<��'��<Y5''�?��<YYY���fÁ������\7YYY�����|*:66�'~���o=s�l'��ԏTW�%b��^�~�Wo���Y���̙�֭�(/+������\�O�Ί�+P�T�6^�V:�)iI�m��r�|���x�Ϳ�u�VN�<I]]���L�2��+W�����6Yyq��!�<�D�4u�����S\y����q�탖?X�������W��,����w�� ];��ɬ�i5�oZ}��{*[y�2:��Y�+P"J :�V��t�k�epü
3��ܯhұ����%�m�V��ͥ�i��K���o><�u3�X9;{�[�$*�tl:\ώ���� }�(mr=���8
3��n�SѤڀz��
��U.�U4�xmG���Kα��N����8*�tT6E�Po("Vܩl҇�a��-���!r��|}Gh��Pޤ�|-�1& \�J�c��F�
�-'� �rBn��>��r:�Ztft=V�z0Y��u�XԴ��%�G9�{��O�E&��R!���A�����B�R���!!�)�!W �W4p�FI�7�$�>}�M:��{��h��k�E*q1r���MF�ʵX�w�h1� Q\��3Ԭ��l4�4w-������CIX�W��LP����O�E&L��.�`F�o�������������f=�|"��s_�oqͪf=vI��Հ���go�P۾V8Y���z�|LL�CaBJ,
�Ȣ�)\<��f���(/h�LL��_.��??+���=�=�ʾ�6�6g�8�G���k���'�������-.f������̵��a۱s�|���"�
����q7�d��Z!�d�?>'�?f�o��~��&�p������B�abк?C�����r��hz.Ԫ�~Og�t�ƫ~_C��{$��v��KP�eܾ��Z�]��NT�7��=C��q�'/^��^޿�t1_���2��]'���w�y$�y��w��JP����ym2q�������5��Aw!q���`���0Z�(=8F&�u�69IjN�y�B&0��^��(��yߛ/d&����z�r����Z.�3�Yy��*o��.�c��R�nZ�7h^��!�H�����v,���x��;L�ɛK��NT�C�v�HF6�r(=V���;}y��|��&�
p�D%w��\E|N^�0���E?`g1od��1�0;/i�r�A���w�+��T�nu�� ����W(���&�6@I�L=����Xf����~^���6*�t�6�	&Y$�D]���&���x�s��7;/�e{�z��������`�Xٲ� 7/������X�oI�}T����ƒ�ǧĢ�ٵj�̵�Z�F���O�URިc�ц��-��$0=;��n犜-:3��6E]��5B9ݬ�!IXm5m�1�n���ߗ��XC�	�D��m��i٥���T�K�h�J0���1�aWF�����x�����\������_S#0�2�X�����C˦�}J�BB�������Ͼ9J�9��i_	�T���ƭ�	j~{��Q%�\��UEd&8���:/��a���D:�����F���	���ƙ�7���E��z&�'�������_�Lض���=���`�gjtf���	�*o��U>#�B�37�b��p���ma�'�C�Έl�Α�*�+g9��3�U��Kd_U=�w�XH�(������_y�#���E��q (.���`b�i �iU|gV6�����3}�*� 7����U3�v�5��_?d�֝aisT �DE�]:.�W�lG.� ?����i5�!'�E9	<���\[��a?���cç�}��3j
 Pz�,�e��'Q�l')V��Yd&��nя� ������߮*�XԪ���_�}�{��ھ�ӗ��x�&����������'����aI]'���cWy���|�\�)�,�������on�����j�7_1t4{��������?��k.�֎�bc�f>=�H�0n�HeZv<ˊ2Y25��9t�o����M��w�X�"J��;}kV.��E�
 �fN�ws����T�Df"I~Z,s����x�c�hw8�u��o�'GJ��Jx�H�#)>�K.b�U����8o9���Ɇ.N�wQ٤��hq%���q$j�dĹFCE/U�5����lٹ?�;��
�������E\s�l��|�jӛi7X�l��i�Ҭ�A�����qd�q�k�ݬ�^Q��Zҵ*5

2�$�*}^�Ko����l�rX\��0f�����(d�ԉ̞�Ozr`�&ᦩ��ce�=UŁ�r��7_i��
�MVZ��Ld��|�s2HI�2!����pP]�D{����&�OUQ|�:�=|G�B�Gvz
)�Z&��"35���XA`J~�G��X59��]u��茞�c��� ��n����m��SOCsd%w����zfP(ihn������3�ݕ1�(!yXH�.�ed񖭄�Ah�,ta̾E�@�
-� I��=i�D޲$�Y��#��n�vy�Mx�V�2�=��Fel0@�E`��!�pرYz�raa���p�ze�MD̂ lt/l5���I����� a� b{�Vz��'%Ir͂8v,Ʊ邍2�����/I&���k���
�E�t�d����"��(Cc1�Y�{���7/ ƹ�cx�nh�1b6tE?cI�0���x�*�+��
g�<F��j5� +r�aA�����b�nkC��E���QF�ل�ǀ䵦�$�b��V�5
�y�����aH���^��F�rE2E2��K�D	=v�$	�Ռ�j x 	�l�x��~ �����+4 {�&���b� �<.�p`5������%$8f6Y�+���
�X$K�����+|,&@-��W$�J{�"�	�W�E@���4e���,$�<d��&K���$$�$�Y����C���[	�	_ջ���b�7�V@. [����$"I�l�ed�$	A8	�C�#:�O$l6p�P�T��(��ݲ�n4#�� (c���C�&�̭    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/favicon.png-0a5a152f53d253bbf3f0fa31a8d80122.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Export/favicon.png"
dest_files=[ "res://.import/favicon.png-0a5a152f53d253bbf3f0fa31a8d80122.stex" ]

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
[gd_scene load_steps=5 format=2]

[ext_resource path="res://dark ghost.png" type="Texture" id=1]
[ext_resource path="res://ghost.gd" type="Script" id=2]

[sub_resource type="Curve" id=1]
_data = [ Vector2( 0, 1 ), 0.0, -0.0810807, 0, 0, Vector2( 1, 0.009009 ), -2.70271, 0.0, 0, 0 ]

[sub_resource type="CapsuleShape2D" id=2]
radius = 6.0
height = 6.0

[node name="Ghost" type="Area2D" groups=[
"danger",
]]
self_modulate = Color( 1, 1, 1, 0.568627 )
script = ExtResource( 2 )
speed = 20.0

[node name="Sprite" type="Sprite" parent="."]
self_modulate = Color( 1, 1, 1, 0.513726 )
texture = ExtResource( 1 )

[node name="Particles2D" type="CPUParticles2D" parent="Sprite"]
visible = false
show_behind_parent = true
position = Vector2( 0, 4 )
emission_shape = 1
emission_sphere_radius = 5.0
spread = 180.0
gravity = Vector2( 0, 20 )
scale_amount = 2.0
scale_amount_curve = SubResource( 1 )
color = Color( 0.160784, 0.113725, 0.168627, 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 2 )
[connection signal="body_entered" from="." to="." method="_on_Ghost_body_entered"]
        [gd_scene load_steps=4 format=2]

[ext_resource path="res://heart_mini.png" type="Texture" id=1]
[ext_resource path="res://heart_pickup.gd" type="Script" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 6.0

[node name="HeartPickup" type="Area2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="CPUParticles2D" type="CPUParticles2D" parent="."]
visible = false
amount = 4
emission_shape = 2
emission_rect_extents = Vector2( 4, 4 )
gravity = Vector2( 0, -5 )
color = Color( 1, 0.439216, 0.67451, 1 )
[connection signal="body_entered" from="." to="." method="_on_HeartPickup_body_entered"]
              [gd_scene load_steps=16 format=2]

[ext_resource path="res://item_spawn_point.gd" type="Script" id=1]
[ext_resource path="res://Retro Gaming.ttf" type="DynamicFontData" id=2]
[ext_resource path="res://question_manager.gd" type="Script" id=3]
[ext_resource path="res://main_screen.gd" type="Script" id=4]
[ext_resource path="res://HeartPickup.tscn" type="PackedScene" id=5]
[ext_resource path="res://character_controller.gd" type="Script" id=6]
[ext_resource path="res://castle_tileset.tres" type="TileSet" id=7]
[ext_resource path="res://tileset.png" type="Texture" id=8]
[ext_resource path="res://spike.gd" type="Script" id=9]
[ext_resource path="res://hearts_ui_controller.gd" type="Script" id=10]

[sub_resource type="StreamTexture" id=1]
load_path = "res://.import/tileset.png-a39e944f25b35d62f55d4f98a36e2b5e.stex"

[sub_resource type="CapsuleShape2D" id=2]
radius = 6.0
height = 3.0

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 8, 2 )

[sub_resource type="DynamicFont" id=4]
size = 11
font_data = ExtResource( 2 )

[sub_resource type="DynamicFont" id=5]
size = 11
font_data = ExtResource( 2 )

[node name="Main" type="Node2D"]
script = ExtResource( 4 )

[node name="Timer" type="Timer" parent="."]
autostart = true

[node name="QuestionManager" type="Node" parent="."]
script = ExtResource( 3 )
question_text_path = NodePath("../Canvas/BottomCont/ColorRect/QuestionText")
spawn_positions = [ NodePath("../SpawnPositions/Position2D"), NodePath("../SpawnPositions/Position2D2"), NodePath("../SpawnPositions/Position2D3"), NodePath("../SpawnPositions/Position2D4"), NodePath("../SpawnPositions/Position2D5") ]

[node name="SpawnPositions" type="Node" parent="."]

[node name="Position2D" type="Position2D" parent="SpawnPositions" groups=[
"spawn_position",
]]
position = Vector2( 88, 104 )
script = ExtResource( 1 )

[node name="Position2D2" type="Position2D" parent="SpawnPositions" groups=[
"spawn_position",
]]
position = Vector2( 184, 248 )
script = ExtResource( 1 )

[node name="Position2D3" type="Position2D" parent="SpawnPositions" groups=[
"spawn_position",
]]
position = Vector2( 376, 136 )
script = ExtResource( 1 )

[node name="Position2D4" type="Position2D" parent="SpawnPositions" groups=[
"spawn_position",
]]
position = Vector2( 264, 72 )
script = ExtResource( 1 )

[node name="Position2D5" type="Position2D" parent="SpawnPositions" groups=[
"spawn_position",
]]
position = Vector2( 440, 56 )
script = ExtResource( 1 )

[node name="Background" type="TileMap" parent="."]
tile_set = ExtResource( 7 )
cell_size = Vector2( 16, 16 )
format = 1
tile_data = PoolIntArray( 65537, 13, 0, 65538, 13, 0, 65539, 13, 0, 65540, 13, 0, 65541, 13, 0, 65542, 13, 0, 65543, 13, 0, 65544, 13, 0, 65545, 13, 0, 65546, 13, 0, 65547, 13, 0, 65548, 13, 0, 65549, 13, 0, 65550, 13, 0, 65551, 13, 0, 65552, 13, 0, 65553, 13, 0, 65554, 13, 0, 65555, 13, 0, 65556, 13, 0, 65557, 13, 0, 65558, 13, 0, 65559, 13, 0, 65560, 13, 0, 65561, 13, 0, 65562, 13, 0, 65563, 13, 0, 65564, 13, 0, 131073, 13, 0, 131074, 13, 0, 131075, 13, 0, 131076, 13, 0, 131077, 13, 0, 131078, 13, 0, 131079, 13, 0, 131080, 13, 0, 131081, 13, 0, 131082, 13, 0, 131083, 13, 0, 131084, 13, 0, 131085, 13, 0, 131086, 13, 0, 131087, 13, 0, 131088, 13, 0, 131089, 13, 0, 131090, 13, 0, 131091, 13, 0, 131092, 13, 0, 131093, 13, 0, 131094, 13, 0, 131095, 13, 0, 131096, 13, 0, 131097, 13, 0, 131098, 13, 0, 131099, 13, 0, 131100, 13, 0, 196609, 13, 0, 196610, 13, 0, 196611, 13, 0, 196612, 13, 0, 196613, 13, 0, 196614, 13, 0, 196615, 14, 0, 196616, 13, 0, 196617, 13, 0, 196618, 13, 0, 196619, 13, 0, 196620, 13, 0, 196621, 13, 0, 196622, 14, 0, 196623, 13, 0, 196624, 13, 0, 196625, 13, 0, 196626, 13, 0, 196627, 13, 0, 196628, 13, 0, 196629, 13, 0, 196630, 13, 0, 196631, 13, 0, 196632, 13, 0, 196633, 13, 0, 196634, 13, 0, 196635, 14, 0, 196636, 13, 0, 262145, 13, 0, 262146, 13, 0, 262147, 13, 0, 262148, 13, 0, 262149, 13, 0, 262150, 13, 0, 262151, 13, 0, 262152, 13, 0, 262153, 13, 0, 262154, 13, 0, 262155, 13, 0, 262156, 13, 0, 262157, 13, 0, 262158, 13, 0, 262159, 13, 0, 262160, 13, 0, 262161, 13, 0, 262162, 13, 0, 262163, 13, 0, 262164, 13, 0, 262165, 13, 0, 262166, 13, 0, 262167, 13, 0, 262168, 13, 0, 262169, 13, 0, 262170, 13, 0, 262171, 13, 0, 262172, 13, 0, 327681, 13, 0, 327682, 13, 0, 327683, 13, 0, 327684, 14, 0, 327685, 13, 0, 327686, 13, 0, 327687, 13, 0, 327688, 13, 0, 327689, 13, 0, 327690, 13, 0, 327691, 13, 0, 327692, 13, 0, 327693, 13, 0, 327694, 13, 0, 327695, 13, 0, 327696, 13, 0, 327697, 13, 0, 327698, 13, 0, 327699, 13, 0, 327700, 14, 0, 327701, 13, 0, 327702, 13, 0, 327703, 13, 0, 327704, 13, 0, 327705, 13, 0, 327706, 13, 0, 327707, 13, 0, 327708, 13, 0, 393217, 13, 0, 393218, 13, 0, 393219, 13, 0, 393220, 13, 0, 393221, 13, 0, 393222, 13, 0, 393223, 13, 0, 393224, 13, 0, 393225, 13, 0, 393226, 13, 0, 393227, 13, 0, 393228, 13, 0, 393229, 13, 0, 393230, 13, 0, 393231, 13, 0, 393232, 13, 0, 393233, 13, 0, 393234, 13, 0, 393235, 13, 0, 393236, 13, 0, 393237, 13, 0, 393238, 13, 0, 393239, 13, 0, 393240, 13, 0, 393241, 13, 0, 393242, 13, 0, 393243, 13, 0, 393244, 13, 0, 458753, 15, 0, 458754, 15, 0, 458755, 15, 0, 458760, 13, 0, 458761, 13, 0, 458762, 13, 0, 458763, 14, 0, 458764, 13, 0, 458765, 13, 0, 458766, 13, 0, 458767, 13, 0, 458768, 13, 0, 458769, 13, 0, 458770, 13, 0, 458771, 13, 0, 458772, 13, 0, 458773, 13, 0, 458774, 13, 0, 458775, 13, 0, 458776, 13, 0, 458777, 13, 0, 458778, 13, 0, 458779, 13, 0, 458780, 13, 0, 524289, 15, 0, 524290, 15, 0, 524291, 15, 0, 524292, 15, 0, 524293, 15, 0, 524294, 15, 0, 524296, 13, 0, 524297, 13, 0, 524298, 13, 0, 524299, 13, 0, 524300, 13, 0, 524301, 13, 0, 524302, 13, 0, 524303, 13, 0, 524304, 13, 0, 524305, 14, 0, 524306, 13, 0, 524307, 13, 0, 524308, 13, 0, 524309, 13, 0, 524310, 13, 0, 524311, 13, 0, 524312, 13, 0, 524313, 13, 0, 524314, 13, 0, 524315, 13, 0, 524316, 13, 0, 589825, 15, 0, 589826, 15, 0, 589827, 15, 0, 589828, 15, 0, 589829, 16, 0, 589830, 15, 0, 589832, 13, 0, 589833, 13, 0, 589834, 13, 0, 589835, 13, 0, 589836, 13, 0, 589837, 13, 0, 589838, 13, 0, 589839, 13, 0, 589840, 13, 0, 589841, 13, 0, 589842, 13, 0, 589843, 13, 0, 589844, 13, 0, 589845, 13, 0, 589846, 13, 0, 589847, 13, 0, 589848, 13, 0, 589849, 13, 0, 589850, 13, 0, 589851, 13, 0, 589852, 13, 0, 655365, 15, 0, 655366, 15, 0, 655368, 13, 0, 655369, 13, 0, 655370, 13, 0, 655371, 13, 0, 655372, 13, 0, 655373, 13, 0, 655374, 13, 0, 655375, 13, 0, 655376, 13, 0, 655377, 13, 0, 655378, 13, 0, 655379, 13, 0, 655380, 13, 0, 655381, 13, 0, 655382, 13, 0, 655383, 13, 0, 655384, 13, 0, 655385, 13, 0, 655386, 13, 0, 655387, 13, 0, 655388, 13, 0, 720897, 15, 0, 720898, 15, 0, 720899, 16, 0, 720900, 15, 0, 720901, 15, 0, 720902, 15, 0, 720909, 13, 0, 720910, 13, 0, 720911, 13, 0, 720912, 13, 0, 720913, 13, 0, 720914, 13, 0, 720915, 13, 0, 720916, 13, 0, 720917, 13, 0, 720918, 13, 0, 720919, 13, 0, 720920, 13, 0, 720921, 13, 0, 720922, 14, 0, 720923, 13, 0, 720924, 13, 0, 786433, 15, 0, 786434, 16, 0, 786435, 15, 0, 786436, 15, 0, 786437, 15, 0, 786438, 15, 0, 786440, 15, 0, 786441, 15, 0, 786442, 15, 0, 786443, 15, 0, 786444, 15, 0, 786445, 13, 0, 786446, 13, 0, 786447, 13, 0, 786448, 13, 0, 786449, 13, 0, 786450, 13, 0, 786451, 13, 0, 786452, 13, 0, 786453, 13, 0, 786454, 13, 0, 786455, 13, 0, 786456, 13, 0, 786457, 13, 0, 786458, 13, 0, 786459, 13, 0, 786460, 13, 0, 851969, 15, 0, 851970, 15, 0, 851971, 15, 0, 851972, 15, 0, 851973, 15, 0, 851974, 15, 0, 851975, 15, 0, 851976, 15, 0, 851977, 15, 0, 851978, 15, 0, 851979, 16, 0, 851980, 15, 0, 851981, 13, 0, 851982, 13, 0, 851983, 13, 0, 851984, 13, 0, 851985, 13, 0, 851986, 13, 0, 851987, 13, 0, 851988, 13, 0, 851989, 13, 0, 851990, 13, 0, 851991, 13, 0, 851992, 13, 0, 851993, 13, 0, 851994, 13, 0, 851995, 13, 0, 851996, 13, 0, 917508, 15, 0, 917509, 15, 0, 917510, 16, 0, 917511, 15, 0, 917512, 15, 0, 917513, 15, 0, 917514, 15, 0, 917515, 15, 0, 917516, 15, 0, 917517, 13, 0, 917518, 13, 0, 917519, 13, 0, 917520, 13, 0, 917521, 13, 0, 917522, 13, 0, 917523, 13, 0, 917524, 14, 0, 917525, 13, 0, 917526, 13, 0, 917527, 13, 0, 917528, 13, 0, 917529, 13, 0, 917530, 13, 0, 917531, 13, 0, 917532, 13, 0, 983044, 15, 0, 983045, 15, 0, 983046, 15, 0, 983047, 15, 0, 983048, 15, 0, 983049, 15, 0, 983051, 15, 0, 983052, 15, 0, 983053, 13, 0, 983054, 13, 0, 983055, 13, 0, 983056, 13, 0, 983057, 13, 0, 983058, 13, 0, 983059, 13, 0, 983060, 13, 0, 983061, 13, 0, 983062, 13, 0, 983065, 13, 0, 983066, 13, 0, 983067, 13, 0, 983068, 13, 0 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 7 )
cell_size = Vector2( 16, 16 )
format = 1
tile_data = PoolIntArray( 0, 0, 0, 1, 11, 0, 2, 11, 0, 3, 11, 0, 4, 11, 0, 5, 11, 0, 6, 11, 0, 7, 11, 0, 8, 11, 0, 9, 0, 0, 10, 11, 0, 11, 11, 0, 12, 11, 0, 13, 11, 0, 14, 11, 0, 15, 11, 0, 16, 0, 0, 17, 11, 0, 18, 0, 0, 19, 11, 0, 20, 11, 0, 21, 11, 0, 22, 11, 0, 23, 11, 0, 24, 11, 0, 25, 11, 0, 26, 11, 0, 27, 0, 0, 28, 11, 0, 29, 0, 0, 65536, 0, 0, 65547, 6, 0, 65549, 11, 0, 65552, 4, 0, 65565, 0, 0, 131072, 0, 0, 131085, 11, 0, 131088, 3, 0, 131101, 19, 0, 196608, 0, 0, 196621, 0, 0, 196624, 3, 0, 196637, 0, 0, 262144, 0, 0, 262160, 2, 0, 262167, 1, 0, 262168, 8, 0, 262169, 10, 0, 262170, 17, 0, 262171, 0, 0, 262172, 17, 0, 262173, 0, 0, 327680, 19, 0, 327690, 0, 0, 327691, 11, 0, 327692, 11, 0, 327693, 11, 0, 327694, 11, 0, 327695, 11, 0, 327696, 11, 0, 327697, 11, 0, 327698, 0, 0, 327709, 0, 0, 393216, 19, 0, 393245, 19, 0, 458752, 0, 0, 458755, 8, 0, 458756, 0, 0, 458757, 0, 0, 458758, 0, 0, 458759, 19, 0, 458773, 1, 0, 458776, 5, 0, 458781, 19, 0, 524288, 0, 0, 524289, 7, 0, 524295, 0, 0, 524312, 2, 0, 524317, 0, 0, 589824, 0, 0, 589831, 0, 0, 589847, 0, 0, 589848, 0, 0, 589852, 8, 0, 589853, 19, 0, 655360, 0, 0, 655361, 0, 0, 655362, 19, 0, 655363, 0, 0, 655364, 0, 0, 655367, 0, 0, 655389, 0, 0, 720896, 0, 0, 720903, 19, 0, 720904, 11, 0, 720905, 11, 0, 720906, 11, 0, 720907, 11, 0, 720908, 0, 0, 720909, 7, 0, 720910, 1, 0, 720924, 8, 0, 720925, 0, 0, 786432, 19, 0, 786437, 1, 0, 786438, 8, 0, 786439, 0, 0, 786442, 4, 0, 786448, 1, 0, 786449, 1, 0, 786452, 0, 0, 786453, 0, 0, 786461, 19, 0, 851968, 0, 0, 851978, 3, 0, 851996, 8, 0, 851997, 0, 0, 917504, 0, 0, 917505, 11, 0, 917506, 11, 0, 917507, 12, 0, 917514, 2, 0, 917520, 1, 0, 917521, 1, 0, 917533, 0, 0, 983040, 0, 0, 983041, 11, 0, 983042, 11, 0, 983043, 12, 0, 983050, 0, 0, 983063, 10, 0, 983064, 12, 0, 983069, 19, 0, 1048576, 0, 0, 1048577, 0, 0, 1048578, 0, 0, 1048579, 0, 0, 1048580, 11, 0, 1048581, 11, 0, 1048582, 11, 0, 1048583, 11, 0, 1048584, 11, 0, 1048585, 11, 0, 1048586, 11, 0, 1048587, 11, 0, 1048588, 11, 0, 1048589, 11, 0, 1048590, 11, 0, 1048591, 11, 0, 1048592, 11, 0, 1048593, 11, 0, 1048594, 11, 0, 1048595, 11, 0, 1048596, 11, 0, 1048597, 11, 0, 1048598, 11, 0, 1048599, 11, 0, 1048600, 11, 0, 1048601, 11, 0, 1048602, 11, 0, 1048603, 11, 0, 1048604, 11, 0, 1048605, 0, 0 )

[node name="Player" type="KinematicBody2D" parent="." groups=[
"player",
]]
position = Vector2( 218.323, 161.248 )
script = ExtResource( 6 )
hearts_container_path = NodePath("../Canvas/TopCont/HeartsContainer")

[node name="Sprite" type="Sprite" parent="Player"]
texture = SubResource( 1 )
region_enabled = true
region_rect = Rect2( 48, 144, 16, 16 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
shape = SubResource( 2 )

[node name="Spike" type="Area2D" parent="." groups=[
"danger",
]]
position = Vector2( 328, 248 )
script = ExtResource( 9 )

[node name="Sprite" type="Sprite" parent="Spike"]
texture = ExtResource( 8 )
region_enabled = true
region_rect = Rect2( 32, 96, 16, 16 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Spike"]
position = Vector2( 0, 2 )
shape = SubResource( 3 )

[node name="Spike2" type="Area2D" parent="." groups=[
"danger",
]]
position = Vector2( 136, 168 )
script = ExtResource( 9 )

[node name="Sprite" type="Sprite" parent="Spike2"]
texture = ExtResource( 8 )
region_enabled = true
region_rect = Rect2( 32, 96, 16, 16 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Spike2"]
position = Vector2( 0, 2 )
shape = SubResource( 3 )

[node name="Canvas" type="CanvasLayer" parent="."]

[node name="TopCont" type="HBoxContainer" parent="Canvas"]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -84.5
margin_right = 84.5
margin_bottom = 14.0
custom_constants/separation = 16
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ScoreLabel" type="Label" parent="Canvas/TopCont"]
margin_right = 61.0
margin_bottom = 14.0
custom_fonts/font = SubResource( 4 )
text = "Score: 0"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="TimeLabel" type="Label" parent="Canvas/TopCont"]
margin_left = 77.0
margin_right = 169.0
margin_bottom = 14.0
custom_fonts/font = SubResource( 4 )
text = "Time Left: 60"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HeartsContainer" type="HBoxContainer" parent="Canvas/TopCont"]
margin_left = 185.0
margin_right = 185.0
margin_bottom = 14.0
custom_constants/separation = 0
script = ExtResource( 10 )

[node name="SideCont" type="MarginContainer" parent="Canvas"]
visible = false
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -40.0
margin_top = -50.0
margin_bottom = 50.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollectedWords" type="ItemList" parent="Canvas/SideCont"]
margin_right = 40.0
margin_bottom = 100.0
grow_horizontal = 0
grow_vertical = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="BottomCont" type="MarginContainer" parent="Canvas"]
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_top = -48.0
grow_vertical = 0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ColorRect" type="ColorRect" parent="Canvas/BottomCont"]
margin_right = 480.0
margin_bottom = 48.0
color = Color( 0, 0, 0, 1 )

[node name="QuestionText" type="RichTextLabel" parent="Canvas/BottomCont/ColorRect"]
anchor_right = 1.0
anchor_bottom = 1.0
grow_horizontal = 2
rect_clip_content = false
custom_fonts/normal_font = SubResource( 5 )
bbcode_enabled = true
bbcode_text = "[center]This is a [b]question[/b] for you to answer!
[color=yellow]Here[/color] it is on the [b]second line[/b]."
text = "This is a question for you to answer!
Here it is on the second line."
scroll_active = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HeartPickup" parent="." instance=ExtResource( 5 )]
position = Vector2( 216, 72 )
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
[connection signal="body_entered" from="Spike" to="Spike" method="_on_Spike_body_entered"]
[connection signal="body_entered" from="Spike2" to="Spike2" method="_on_Spike_body_entered"]
            �  `DSIG     x\   GDEFw)  xd   <GPOSl�t�  x�    GSUB�e��  x�   nOS/2�63I  h   `cmap�v��  �  �glyf@���    h�head#��   �   6hhea#��  $   $hmtx��  �  �loca8�S  	�  �maxpJ �  H    name�X�A  t�  �post� �  x<          1<g_<�       ؔ�]    ؔ���F��]               ��  �F �]               ?   ? � 
                      �      ��      �3           � �@  
        DAY  @  ����   ]       E�     	�� �   �  �  t	tt�t]t]t�tt t t�t
�t   tt]t]t t]t]t]t]t]t]t]t]tt  	tt	tt	tt]t]t]t]t]t]t]t]t]t]t
�t]t]t
�t]t]t]t]t]t]t]t]t]t]t�t]t]t]t t]t t]t	tt t]t]t]t]t]t	tt]t]tt	tt
�t�t]t]t]t]t]t
�t]t	tt]t]t]t]t]t]t tt t
�tt]t]t�t]t]t]t	ttEt tEt
�t
�t] �]tEt]t]t]t]t]t]t]t�t]t]t]t]t]t
�t
�t
�t
�t�t]t]t]t]t]t]t	tt]t]t]t]t]t]t]t]t]t]t]t]t]t]tt]t]t]t]t]t  �tE�FE�F�t]t]t]t]t]t]t
�t]t]t]t]t]t]t]t]t]t]t]t
�t�t]t]t]t]t
�t]t�t]t]t]t]tEt]t]t]tEtEt]t.t.t]t]t]t]t
�t�t�t.t]t]t]t
�t�t]t�t]t]t]t]t]t]t]t]t]t]t]t]t]t�t]t�t]tEt�t�t�t]t]ttt]t]t]t]t	tt�t]t�t]t]t]t
�t]t]t]t]t]t]t]t
�t]tEt]t�t]t�tEt�tEt]t]t�t]t]t]t	tt]ttE�F.t.t]  
�t]t]t
�t	tt
�  	t  EtEt�tt�t]t]  �  �t�t�t�t�tEt]t
�t�t  
�t	t  � �EtEt]t�t.t�t                     �   :     ~ � � � � � �x���
QTW^����   �!"���     � � � � � �x���	SVY����   �!"� �����������������;�#�"������������������������������:                                                            �     �       	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a   w x z | � � � � � � � � � � � � � � � � � � � � � � � � � � � �     c d h   p � m j9   i   y �   n     f o           k     � � r b           l q     s v �        6745 �   � �   e    ;<           u } t ~ { � � �  � �   � � � �   � � � � � �b���Dv�����"<h���<r���Lz��8`z����JZ����&L~���		B	l	�	�	�	�

&
@
f
�
�
�
�8Rh�����>^z��� &b����,B|��&<|���J����Jx��2~�8t���Bj���>n��F��,Z���Dx��*l��D~���(V��� `���>h���Hv���6Pz��  4 ` ~ � � �!!!P!�!�""V"�"�"�#(#B#j#�#�#�$$>$N$t$�$�$�%%^%�%�%�%�&&.&N&�&�&�&�'.'H'b'|'�'�'�((<(j(�(�(�)))D)j)�)�)�***V*r*�*�*�*�++.+B+b+�+�+�,,",B,d,�,�,�--*-^-�-�-�-�..:.f.�.�.�/0/D/X/t/�/�0 0>0n0�0�1*1b1�1�1�2
2&2B2\2v2�2�2�2�3.3`3�3�3�44R 
 ����    ' C I a e o {   !535353535!5!####!!!#!5#35!3##!5#5#353#3!535!#!5!5!35!##!5!535#5!5!33!!!!35!3!!5!!5!!!!G������������~��D����D��������������~��q���]��!���!ߠ��!ߠ������>��>�~���!�������%a_a__�_a__a!��___�__�````~a��__���c�c0__�a__�_a/1���>aa��B������]� t  ]�    !!!t�����]E��   tE��    !!!t�t�E]��]��   t   �    !!!!!!!!!!!!!!
.���������������]�����u�u������������ t���   +  !!!!!!!!!!!!!!!!!!!�������������t���t/�.t����t����t]��������tt��]t�t������t��������  t  ��     /  !!!!!!!!!!!!!!!!!!!!Eut�����tu�����tuttu����������������ttu�������utt��F�uttu����������� t  �   !!!!!!!!!!!!!!!���t��tFt����������t]t�t����t�����]����� tE]�   !t�E]�� t  E�   !!!!!!!!!!]����tu�����tttt�tt�����.����   t  E�   !!!!!!!!!!ttu�����tt����tt�tt�����.����   t�
.   !!!!!!!!!!!!!�/�]����u�����].�^���uttut��t����������u�� t.
.	t   !!!!!]�����.�t�����   ��]�   !!!t�����t����   tE�   !t�t�� t  ]�   !!t���   t  ��   !!!!!!!!!!!!ttuttu������������uttu�����������   t  ��     !!!!!!!!!!!�������ttu������tFt��t]������]tut���/t�t���F�� t  E�   !!!!!!tt��t�ttFtt����   t  ��   !!!!!!!!!!!!tt����tFt���/]��t���tt�������t�   t  ��   !!!!!!!!!!!!!!����]��tt�/
.����tt��tt��]tutt������������   t  ��    !!!!!!!!�������]��tut��]�������/]�utt�^ t  ��   !!!!!!!!!!����]����/�t��tt��]����������   t  ��    !!!!!!!!!!�������tFt����t��t]����t�t����t������� t  ��   !!!!!!!!!!]ttu���
.�������tut���������/   t  ��     !!!!!!!!!!!���]������t��tFt��t��t]�������t]t�t��������� t  ��    !!!!!!!!!!��������]�.��tFt���]���/tt���t]t���F�� t  ]�    !!!t��������     ��]�    !!!!t��������t����E��   t  �
.   !!!!!!!!!!!!!!�������tut�������ttuttuttut��������������   t��E    !!tF��F�u���t�� t  �
.   !!!!!!!!!!!!!!ttut�������ttu������ttuttut��������������   t  ��    !!!!!!!!!!!]��t����tFt�����]tt���tt�������   t  ��       !!!!!!!!�F�����tu]tt�FFt��]�����Ft������Ft��   t  ��    !!!!!!!!!!��������tu]tt�����t����/�tt�����F]�� t  ��     !!!!!!!���]����t��t��t]����������������� t  ��   !!!!!!!!!!!!!!]����tu�t����t����tt�tt����t���.��t����   t  ��    !!!!!!!!Eu����Ftt����tt�t�F��������.���� t  ��   !!!!!!t
.��]��E����������   t  �� 	  !!!!!t
.��]���������/ t  ��   !!!!!!!!!!!!!!]����tu�t����t���tt�tt����t���.���t�u   t  ��   !!!!!!t�]�������]�^��/   t  
.�   !!!!!!t�����t�t���F��   t  ��   !!!!!!!����]��E��t���t���� t  ��   !!!!!!!!!!!!!!!!t�ttu�������utt����������utt��������������ut�/   t  
.�   !!!t������� t  ��   !!!!!!!!!!!!ttuttutt��������������utt�^���t�/   t  ��   !!!!!!!!!!!!ttuttu����������������������^ttut�/   t  ��    !!!!!!�������tFt��t��F��t�t���F�� t  ��    !!!!!�����t���/E�����������/   t  ��     !!!!!!!!!!!
.t�����������tFt����t��ttu��F��t�t�������� t  ��    !!!!!!!�����t��t���E�����������/��/   t  ��   !!!!!!!!!!!!!!����]�.��tFt����t��tt��]t�t����t�������   t  ��   !!!!�]
.�^
.t����   t  ��   !!!!!!����]���t
.��
.����   t  ��   !!!!!!!!!!!!��������ttu�������ttuE����uE��������   t  �   !!!!!!!!!!!!����.u.����������t
.��E��E����tt����   t  �� #  !!!!!!!!!!!!!!!!!!ttu�����ttu�����tt�������]ttu����u����������]t����   t  ��   !#!!!!!!!!!#������ttu������]tt]����t]�������� t  ��   !!!!!!!!!!!!!!ttuttu��
.����������E�uttutt�������������   t  E�   !!!!t�������F��   t  ��   !!!!!!!!!!!!������������ttutt�uttu�����������   t  E�   !!!!t���t�t�^   tE��   !!!!!!!!!ttu]tt�������Eutt������ut���� t  �t   !!tFt��   tEE�   !!!!!]�����ttEutt������ t  �E    !!!!!!!�������t��.Fttt����ttutt���/   t  ��    !!!!!������t��t]�������������   t  �E   !!!!!!!!!!���tFt���]���t]t����t��t����   t  ��    !!!!!�������t��t]����t]t]�^   t  �E    !!!!!!!�������tFt���]t����t]t�������   t  ��   !!!!!!!!���tu]����t�t������/   t���E    !!!!!!!�������.��t���t]���/u�t]t����   t  ��   !!!!!!t��t���������/��/   t  ]�    !!!t���E�����   t����    !!!!!!����t��������tt��E����
.�� t  
.�   !!!!!!!!!!!!t�tt�����ut��������tt����������tt�   t  ��   !!!!����tt
.����   t  �E   !!!!!!!t�t�������E���/��/��/ t  �E 	  !!!!!t�t���E���/��/ t  �E    !!!!!!�������tFt��t]����t]t������ t���E    !!!!!�����t���/t]���/���������   t���E    !!!!!���]�.��t�t]���/]t]t�^   t  
.E    !!!!!t�t��t]E�������t��   t  �E   !!!!!!!!!!tF�.��tF�/�t��ttutt����������   t  ��   !!!!!!!!]����t����t]t]��������   t  �E   !!!!!!����]���t��/��/��   t  �E   !!!!!!!!!!]�����ttu�����tt]����t]������   t  �E     !!!!!!!!����ttu���t��/��t��/��t��/�� t  �E #  !!!!!!!!5!!!!!!!!5!!ttu�����ttu�����tt�������ttutt����t����������t����   t���E   !!!!!!!���.���]�����u�t��/����� t  �E   !!!!!!!!!!ttut��
.������]ttutt����������   t  E�   !!!!!!!!!!]����tu�����ttt�t�t���]���]��   t�]�   !t����v t  E�   !!!!!!!!!!ttu�����tt����t�t�t���]���]��   t]
.�     !!!!!!!!tt�t�������tu�t��t����ttu������   t  ]�    !!!t���E�����   t����    !!!!!!!!!!!!!!���t���t�t�t���u����t]���tt]tu������t��t������ t  ��   !!!!!!!!!!!!tt��tu�t��]���t]t�t����t�������   t.
�	t          !!!!!!!!!!!!!ttu�tt� u�t� tu�tt.t��t��t��t^��^��^t��t��t��   t  �� #  !!!5!!5!!!!!!!!!!!!!�]��]������ttu�������^��^tt�u�t]����t]������������   t����    !!t.��.����
� �  t  ��  #  !!!!!!!!!!!!!!!!!����]��]tt������tFt���]��tt��.ut�����t�t����t������   t���    !!!t�t������   t  ��     !!!!!!!!!!!���t]��������t
/t���u�u���������F��t�t���F��  t�E�     !!!!!!tt���t���.����u.ut�t�t��  t  �
.  7  !!!!!!!!!!!!!!!!!!!!!!!!!!!!�������tut�������ttu�������utt�������tutttuttut��������������ttuttut�������������� t�
.�        !5!!#3!5#!!!!��������^���Ѻ�]t�t����u��]����]��������/��/�t�� t �
.
�    %!!!!!!t��/������t����u�����   ����E    !!!!!!!!��u��u./.������������/]tt]��t��  t  ��    %!!!!!
.��������t��	t����t�t�^ t  �
.  7  !!!!!!!!!!!!!!!!!!!!!!!!!!!!ttut�������ttu�������utt�������tut������ttuttut��������������ttuttut�������������� t  ��    !!!!!!!!!!!���t�����]������t�tt�����t�������   t  �      !!!!!!!!!!!!!��������tu]tt�������u��t����/�tt�����F]��tu����  t  �      !!!!!!!!!!!!!��������tu]tt����t�����t����/�tt�����F]��tu����  t  �    #  !!!!!!!!!!!!!!!��������tu]tt�����u]t�����t����/�tt�����F]��tu����t�� t  �      # '  !!!!!!!!!!!!!!!!��������tu]tt����utu�tut��t����/�tt�����F]��t��t��tu��u��  t  �       !!!!!!!!!!!!!��������tu]tt������t���t����/�tt�����F]������   t  �     # '  !!!!!!!!!!!!!!!!��������tuttutt���ttu�t��t����/�ttu�������F]��t��t��tu��  t   �    !!!!!!!!!!!E�����tu��.]����E��]����/�tt���������]��   t��� !  !!!!!!!!!!!!!!!!]������tu�t����t�������tttt�tt����t���.��t�����   t  �     !!!!!!!!!t
.��]��E�u���u����������tu����   t  �     !!!!!!!!!t
.��]��E�ut�������������tu����   t  �     !!!!!!!!!!!t
.��]��E�Fu]t�������������tu����t��   t  �      !!!!!!!!!t
.��]��E�F�t��������������� t  
.     !!!!!!!!!t������/���tt�t���F��tu����   t  
.     !!!!!!!!!t������/t���t�t���F��tu����   t  
.     !!!!!!!!!!!t������ t^t���t�t���F��tu����t��   t  
.      !!!!!!!!!t������ �t�t�t���F������ t  �    3!!!!!!!!!!!	t���������tFtu����tt�t�]���]��t�����.����  t  �     # '  !!!!!!!!!!!!!!!!!!ttuttu������������utu�tut�����������^ttut�/t��t��tu��u��    t  �      !!!!!!!!!�������tFt�������ut��F��t�t���F��tu���� t  �      !!!!!!!!!�������tFt����t���t��F��t�t���F��tu���� t  �      !!!!!!!!!!!�������tFt����u]t���t��F��t�t���F��tu����t�� t  �         !!!!!!!!!!!!�������tFt���tutu�tutt��F��t�t���F��t��t��tu��u�� t  �       !!!!!!!!!�������tFt�����t�t��F��t�t���F������   	t��
.         #  !!!!!!!!!!!!!tt]u�.utt�t�utt�/t]u�u��u��ut��t��tt��tu��u��ut��t�� t  ��     # '  !!!!!!!!!!!!!!!!!ttu]�tu��utt�F��t���t���tt��t��]����ut�� tFt���/�����t��    t  �     !!!!!!!!!����]��������ut
.��
.����tu����   t  �     !!!!!!!!!����]�����t���t
.��
.����tu����   t  �     !!!!!!!!!!!����]�����u]t���t
.��
.����tu����t��   t  �      !!!!!!!!!����]������t�t
.��
.�������� t  �     !#!!!!!!!!!#!!!������ttu�������t���]tt]����t]��������tu���� t  ��    !!!!!!������t���/���.�������.���� t  ��   !!!!!!!!#!!!!!!tFt��tt�����.u����t������������tt��tu����  t  ��     !!!!!!!!!!�������t��.Ft�u���utt����ttutt���/�tt����   t  ��     !!!!!!!!!!�������t��.Ft�ut���tt����ttutt���/�tt����   t  ��     !!!!!!!!!!!!�������t��.Ft�Fu]t���tt����ttutt���/�tt����t��   t  ��      !  !!!!!!!!!!!!!�������t��.Ft� utu�tuttt����ttutt���/�t��t��tt��t��   t  ��      !!!!!!!!!!�������t��.Ft�F�t�tt����ttutt���/����� t  ��     !  !!!!!!!!!!!!!�������t��.�t�t��ttu�ttt����ttuttu�����/�t��t��tt�� t  ]E   !  !!!!!!!!!!!!!!���������t��.FtFu�������tt���t����ttutt��t�������t��   t��E   !!!!!!!!!!!!]�����tFt���]������ttt]t����t��t�����   t  ��     !!!!!!!!!!�������tFt��������u]t����t]t��������tt����   t  ��     !!!!!!!!!!�������tFt�����t���]t����t]t��������tt����   t  ��     !!!!!!!!!!!!�������tFt�����u]t���]t����t]t��������tt����t��   t  ��      !!!!!!!!!!�������tFt������t�]t����t]t������������     ]�    !!!!!t�����uE���tt����   t  ��    !!!!!t��t���E���tt����   �F  ��    !!!!!!!t���t]t���E���tt����t��   �F  ��     !!!!!t����t�E������� t  �    !!!!!!!!!!�������t����u����t]����t]tutt�������� t  �� 	      !!!!!!!!!!!t�t����utu�tutE���/��/�t��t��tt��t��  t  ��     !!!!!!!!!�������tFt�������ut]����t]t�������tt���� t  ��     !!!!!!!!!�������tFt����t���t]����t]t�������tt���� t  ��     !!!!!!!!!!!�������tFt����u]t���t]����t]t�������tt����t�� t  ��        !!!!!!!!!!!!�������tFt���tutu�tutt]����t]t�������t��t��tt��t�� t  ��      !!!!!!!!!�������tFt�����t�t]����t]t�����������   tt
.�     !!!]��/��/�tt���t���u�� t  �E 	  /  ####5353535!3535!!!35!##!!!5!���������������tҺ.��t���/��t黺��t������t���t�����������  t  �� 	   !!!!!!!!����]��u���ut��/����tt���� t  �� 	   !!!!!!!!����]��ut���t��/����tt���� t  �� 	   !!!!!!!!!!����]��Fu]t���t��/����tt����t�� t  �� 	    !!!!!!!!����]��F�t�t��/��������   t����    !!!!!!!!!!���.���]�����t�����u�t��/�����tt���� t����    !!!!!!������t���/t]���/����������� t����     !!!!!!!!!!���.���]������t���u�t��/���������   t  �      !#!!!!!!!!!#!!!������ttu���������t�]tt]����t]������������   t  ��    !!!!!!!!!!��������tu]tt�����t����/�tt�����F]�� t  ��     !!!!!!!���]����t��t��t]����������������� t  
.�   !!!t��/����� t   �    !#!#!!!!!!!!!!�����������tutt�tutu.��t������.��.t��������   t  ��   !!!!!!t
.��]��E����������   t  ��   !!!!!!!!!!!!!!ttuttu��
.����������E�uttutt�������������   t  ��   !!!!!!t�]�������]�^��/   t  ��     !!!!!!!�������tFt��t���]��F��t�t���F��  t  
.�   !!!!!!t�����t�t���F��   t  ��   !!!!!!!!!!!!!!!!t�ttu�������utt����������utt��������������ut�/   t   � #  !!!!!!!!!!!!!#!#!!ttutt�tutu�������������.��.t��������.��t������ t  ��   !!!!!!!!!!!!ttuttutt��������������utt�^���t�/   t  ��   !!!!!!!!!!!!ttuttu����������������������^ttut�/   t  ��     !!!!t
.� �� 
.t��t��t��   t  ��    !!!!!!�������tFt��t��F��t�t���F�� t  ��   !!!!!!��������
.t����
.��   t  ��    !!!!!�����t���/E�����������/   t  ��   !!!!!!!!!!!!ttu����
.��tt����E�utu���������������   t  ��   !!!!]�
.�^
.t����   t  ��   !#!!!!!!!!!!!!!#���������ttutt��������]tt�t�����t�t��������� t  ��     !!!!!!!!!!!!���E����]��t���t���]���.��.�tt�tt�����.����   t  �� #  !!!!!!!!!!!!!!!!!!ttu�����ttu�����tt�������]ttu����u����������]t����   t  t� '  !#!!!!!!!3!3!!!!!!!# ����������tt��ut����������]ttutt������]��utt������������   t  t� /  !!!!!!!!!!!!!!!!!!!!!!!!t]������tu
.ut������]��tut������ttuttut�tt��������������ut�t��������   t  �E    !!!!!!!!!!!!�t��������t]u���t���ttut����t]t��t������t�� t���� #  !!!!!!!!!!!!!!!!!ttu�t��t�����tu�����t����tt���]��������tt/t����.���/ t  �      !!!!!!!!!t
.��]��E�F�t��������������� t  ��   !!!!!!!!!!!!!!!!]����tu�t����]��t����tt�tt����t����������t����   t  
.�   !!!!!!t�����t�t���F��   t  
�      !!!!!!!!!t�������F�t�t�t���F������ t  .�    !!!!!!!!!!E�]��tuEt��� ���t]����t�t��������
.�F�� t  t�    !!!!!!!!!�����]�^t������t]�������]����������/   t  ��    !!!!!!!!!!��������tu]tt����/t�����u�tt�����F�� t  ��    !!!!!!������/�t��t]�������������� t  ��     !!!!!!!���]����t��t��t]����������������� t  
.�   !!!t��/����� t���    !!!!!!!����tuEu��/t��F�^��t���^.��   t  ��   !!!!!!t
.��]��E����������   t  �   !!!!!!!!!!!!!!tt���t�t���u�������t]��]��]�����/��/��/   t  ��   !!!!!!!!!!!!!!����]�]����tFt��t��tt���t���tt���]���]��   t  ��   !!!!!!!!!!!!t�ttutt�����������/tutt�^���������   t  �   #  !!!!!!!!!!!!!!!!!t�ttutt�������������������/tutt�^���������tu��u����    t  ��   !!!!!!!!!!!!!!!!t�ttu�������utt����������utt��������������ut�/   t  ��   !!!!!!!ttuE����t�t�^
.�F�� t  ��   !!!!!!!!!!!!ttuttutt��������������utt�^���t�/   t  ��   !!!!!!t�]�������]�^��/   t  ��    !!!!!!�������tFt��t��F��t�t���F�� t  ��   !!!!t
.�����^
.��   t  ��    !!!!!�����t���/E�����������/   t  ��   !!!!!!!!!!!!!!]����tu�t����t����tt�tt����t���.��t����   t  ��   !!!!�]
.�^
.t����   t  ��   !!!!!!!!!!����]�.���]���tt���t������   t   �     !!!!!!!!!!!!E��������t]�]u�������.��.�tt�tt�����.����   t  �� #  !!!!!!!!!!!!!!!!!!ttu�����ttu�����tt�������]ttu����u����������]t����   t���   !!!!!
.�F�]�u��.���
.���^ t  ��   !!!!!!��.���]�t���^   t  ��   !!!!!!t�.�.����
.��
.�^   t�� �   !!!!!!!�]�.�.�u��.���
.��
.���^ t  ��    !!!!!!
�������t��t]����
.t�������� t   �     !!!!!!!������t����t]���������������^ t  ��    !!!!!������t��t]�������������   t  ��   !!!!!!!!!!!!!!!!�����u��]����t�tt����tt��t/t/t��tt�����.����   t  ��    !!!!!!!!!!���� �tuEu��������t��F������t���F��t��� t  ��    !!!!!!!����t��t����E�����t�t�^��/   t  �E    !!!!!!!�������t��.Fttt����ttutt���/   t  ��    !!!!!!!!!!��������tF�/t]t��t]�����t�t����t������ t  �E     !!!!!!!���]����t��t��tt���t����E���������� t  �E   !!!tF��E���/ t��E    !!!!!!!����tuEu��/t]���^�]t�/�^.��   t  �E    !!!!!!!�������tFt���]t����t]t�������   t  E   !!!!!!!!!!!!!!tt���t�t���u�������u�������������   t  �E   !!!!!!!!!!!!!!����]�����tFt��t��tt��tut��tt����������   t  �E   !!!!!5!!!!!t�ttu��������E�]ut��������� t  ��    !!!!!5!!!!!!!!!!t�ttu����������������E�]ut����������tt��t����  t  
.E   !!!!!!!!!!!!t�tt�����ut�����E�tt����������tt�   t  �E   !!!!!!!ttuE����t]t������� t  �E   !!!!!!!!!!t�ttu��������E����tt�����t�   t  �E   !!!!!!t�]����E������   t  �E    !!!!!!�������tFt��t]����t]t������ t  �E   !!!!t
.���E����/   t���E    !!!!!�����t���/t]���/���������   t  �E   !!!!!!!!!!���tFt���]���t]t����t��t����   t  
.E   !!!!]����t���/   t���E   !!!!!!!���.���]�����u�t��/����� t����     !!!!!!!!!!!!���E����]��t���t���]t]��]���/]t]t]����������   t  �E #  !!!!!!!!5!!!!!!!!5!!ttu�����ttu�����tt�������ttutt����t����������t����   t��E   !!!!!
.�F�]�u��.E�/��/�^ t  �E   !!!!!!��.���]�.t��]���   t  E   !!!!!!t�t�t�E�/��/���   t���E   !!!!!!!����t�t�t��.E�/��/��/�^ t  �E    !!!!!!
�������t��tt�����t������� t  �E     !!!!!!!E���]t����tt����E�������E�� t  �E    !!!!!������t��tt����E�������   t  �E   !!!!!!!!!!!!����]�����tFt��tt��tut��tt������   t   E    !!!!!!!!!!�����ttFu��������t]����E�tt������tt� t  �E    !!!!!!!����t��t����]t�����utt����   t  ��     !!!!!!!!!!�������tFt��������u]t����t]t��������tt����   t  ��      !!!!!!!!!!�������tFt������t�]t����t]t������������ t  ��    !!!!!!tF���u���E���/�tt����  t  �E   !!!!!!!!!!!!���tFt�����]���t]t����t������t����   t  ]�    !!!t���E�����   �F  ��     !!!!!t����t�E������� t  tE    !!!!!!!!!����t�^t�������tt����t�������������   t  tE    !!!!!!!!!�����]�^t������tt����E�����������       ��   !!!!!!!!!!!!t��t���t]t�����tt�����t���/�����   t  
.�    !!!!!!!!!!!!!!!t�tt�����ut�����t���E�tt����������tt��tt����  t  ��    !!!!!5!!!!!!!!t�ttu������������uE�]ut����������tt����  t����    !!!!!!!!!!!!���.���]����t���������u�t��/�����tt��t���� t  
.�   !!!!t���/�/�]��   t  �	t   !!!!t]���E/�]�/       
.�   !!!!!!!t��t��/���t]������/     �E   !!!!!!!t��tF�����u�������� t����   !!!!!!!!!!!!!!!���������t���t�t���ut��.����t���������]�^ t���E   !!!!!!!!!!!!!!!���������t���t�t���ut��.�����u�����������^ t��� #  !!!!!!!!!!!!!!!!!
.����������ttu�������uttu��.�ut�/���utt���������������^ t��]E   !!!!!!!!!!!!	t��������t/�����u���.tt�E�tt���������^   t  � '  !!3!3!!!!!!!!!!!!#!#t�t�ut�������ttu��������������utt��������������ut���/   t  �E   !!3!3!!!!!!!!#!#t�t�u�����tt�������E�t��tt����������tt��t�       �� '  !!!!!!!!!!!!!!!!!!!!t��t�t��ttu�������utt��������tt������utt��������������ut�/       
��   !!!!!!!!!!!!!!!!t��t�t��t/�����ut����� t.�����]tt����������tt�   t  �� !  !!!!!!!!!!!!!!!!!���utt�������tut�������
.t��utt��������������ut�/ t  E   !!!!!!!!!!!!!���ut�����t/�]�����t�tt����������tt� t���   !!!!!!!
.������]�u��.��/���]���^ t��E   !!!!!!!
.������]�u��.��E���/�^ t  ��   !!!!!!!t�]��������]������/ t  �E   !!!!!!!t�]�����E�����/�� t����   !!!!!E���]
.�^.��.
.t���F�^ t��
.E   !!!!!������/��.�t�����^ tE��   !!!tt���E�t���   E]�   !!!t���Eu����   tE
.�    !!!!!!!tt���tt���E�t����t���     E��    !!!!!!!t���ut���Eu����u����  �  � 3  !!#5!535!5!535!!!!!!!!!#!!#!!!!!����Һt�Һtut�u����������t����tt������utt����t������������t����    t���     !!!!!!!!!!!
.t� ��Ft������ ��utEu����]t�����]���tt�/ t  ��   !!!!!!!!!!!!!!���tu]��t]������t�t����t������/��/   t  ��   !!!!!!!!!���tu]�����t�t�������/ t  �    !!!!!!!!!�����tuEu����E�����t�t����t]�/   t  t�   !!!!!!!!!!!!!!!���tu]��t]�������t�t����t�������/��/ t  ��  !  !!!!!!!!!!!!!!!���F��tu]��tFt������E�����t�t����t����t]�/��/             E Z                                        /          O        n      	  n      
 E Z       ) �  	   � �  	  `  	  R  	  2`  	  `  	  ^�  	  �  	  6 �  	 	 6 �  	 
 � �  	  R  	  XRegularRetro Gaming:Version 1.00Version 1.00 February 22, 2019, initial releaseRetroGamingCopyright � 2019 by Vasily Draigo aka Daymarius. All rights reserved.Five big quacking zephyrs jolt my wax bed C o p y r i g h t   �   2 0 1 9   b y   V a s i l y   D r a i g o   a k a   D a y m a r i u s .   A l l   r i g h t s   r e s e r v e d . R e g u l a r R e t r o   G a m i n g : V e r s i o n   1 . 0 0 V e r s i o n   1 . 0 0   F e b r u a r y   2 2 ,   2 0 1 9 ,   i n i t i a l   r e l e a s e R e t r o G a m i n g F i v e   b i g   q u a c k i n g   z e p h y r s   j o l t   m y   w a x   b e d A w 8 J d F l k V w = =         � �                                            i  j j  k l  m m  n8 99 :>     
   latn      ��          
  , latn      ��    liga               .  
      j  F  m  U   9  W P       [gd_scene load_steps=2 format=2]

[ext_resource path="res://heart_mini.png" type="Texture" id=1]

[node name="UI_Heart" type="TextureRect"]
margin_right = 12.0
margin_bottom = 14.0
texture = ExtResource( 1 )
stretch_mode = 6
__meta__ = {
"_edit_use_anchors_": false
}
    GDSC            2      ����ڶ��   �����϶�   �������Ŷ���   ����׶��   ������������ض��   ϶��   ������������������¶   ����¶��            event                                                    	   	   
   
                                       "      #      $      +      0      3YYYYYYYYY0�  PQV�  -YYYY0�  P�  QV�  �  T�  YYY0�  P�  QV�  �?  P�  QY`              [gd_resource type="TileSet" load_steps=13 format=2]

[ext_resource path="res://tileset.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=7]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=8]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=9]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=10]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=11]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[resource]
0/name = "plain block"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 128, 16, 16 )
0/tile_mode = 0
0/occluder_offset = Vector2( 8, 8 )
0/navigation_offset = Vector2( 8, 8 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0
1/name = "tileset.png 1"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 64, 80, 16, 16 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape = SubResource( 2 )
1/shape_one_way = true
1/shape_one_way_margin = 1.0
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
1/z_index = 0
2/name = "tileset.png 2"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 0, 96, 16, 16 )
2/tile_mode = 0
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shape_offset = Vector2( 0, 0 )
2/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
2/shape_one_way = false
2/shape_one_way_margin = 0.0
2/shapes = [  ]
2/z_index = 0
3/name = "tileset.png 3"
3/texture = ExtResource( 1 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 80, 112, 16, 16 )
3/tile_mode = 0
3/occluder_offset = Vector2( 0, 0 )
3/navigation_offset = Vector2( 0, 0 )
3/shape_offset = Vector2( 0, 0 )
3/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
3/shape_one_way = false
3/shape_one_way_margin = 0.0
3/shapes = [  ]
3/z_index = 0
4/name = "tileset.png 4"
4/texture = ExtResource( 1 )
4/tex_offset = Vector2( 0, 0 )
4/modulate = Color( 1, 1, 1, 1 )
4/region = Rect2( 64, 112, 16, 16 )
4/tile_mode = 0
4/occluder_offset = Vector2( 0, 0 )
4/navigation_offset = Vector2( 0, 0 )
4/shape_offset = Vector2( 0, 0 )
4/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
4/shape_one_way = false
4/shape_one_way_margin = 0.0
4/shapes = [  ]
4/z_index = 0
5/name = "tileset.png 5"
5/texture = ExtResource( 1 )
5/tex_offset = Vector2( 0, 0 )
5/modulate = Color( 1, 1, 1, 1 )
5/region = Rect2( 64, 128, 16, 16 )
5/tile_mode = 0
5/occluder_offset = Vector2( 0, 0 )
5/navigation_offset = Vector2( 0, 0 )
5/shape_offset = Vector2( 0, 0 )
5/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
5/shape_one_way = false
5/shape_one_way_margin = 0.0
5/shapes = [  ]
5/z_index = 0
6/name = "tileset.png 6"
6/texture = ExtResource( 1 )
6/tex_offset = Vector2( 0, 0 )
6/modulate = Color( 1, 1, 1, 1 )
6/region = Rect2( 80, 128, 16, 16 )
6/tile_mode = 0
6/occluder_offset = Vector2( 0, 0 )
6/navigation_offset = Vector2( 0, 0 )
6/shape_offset = Vector2( 0, 0 )
6/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
6/shape_one_way = false
6/shape_one_way_margin = 0.0
6/shapes = [  ]
6/z_index = 0
7/name = "tileset.png 7"
7/texture = ExtResource( 1 )
7/tex_offset = Vector2( 0, 0 )
7/modulate = Color( 1, 1, 1, 1 )
7/region = Rect2( 48, 80, 16, 16 )
7/tile_mode = 0
7/occluder_offset = Vector2( 0, 0 )
7/navigation_offset = Vector2( 0, 0 )
7/shape_offset = Vector2( 0, 0 )
7/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
7/shape = SubResource( 10 )
7/shape_one_way = true
7/shape_one_way_margin = 1.0
7/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 10 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
7/z_index = 0
8/name = "tileset.png 8"
8/texture = ExtResource( 1 )
8/tex_offset = Vector2( 0, 0 )
8/modulate = Color( 1, 1, 1, 1 )
8/region = Rect2( 80, 80, 16, 16 )
8/tile_mode = 0
8/occluder_offset = Vector2( 0, 0 )
8/navigation_offset = Vector2( 0, 0 )
8/shape_offset = Vector2( 0, 0 )
8/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
8/shape = SubResource( 11 )
8/shape_one_way = true
8/shape_one_way_margin = 1.0
8/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 11 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
8/z_index = 0
10/name = "tileset.png 10"
10/texture = ExtResource( 1 )
10/tex_offset = Vector2( 0, 0 )
10/modulate = Color( 1, 1, 1, 1 )
10/region = Rect2( 0, 0, 16, 16 )
10/tile_mode = 0
10/occluder_offset = Vector2( 0, 0 )
10/navigation_offset = Vector2( 0, 0 )
10/shape_offset = Vector2( 0, 0 )
10/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
10/shape = SubResource( 3 )
10/shape_one_way = false
10/shape_one_way_margin = 1.0
10/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
10/z_index = 0
11/name = "tileset.png 11"
11/texture = ExtResource( 1 )
11/tex_offset = Vector2( 0, 0 )
11/modulate = Color( 1, 1, 1, 1 )
11/region = Rect2( 16, 0, 16, 16 )
11/tile_mode = 0
11/occluder_offset = Vector2( 0, 0 )
11/navigation_offset = Vector2( 0, 0 )
11/shape_offset = Vector2( 0, 0 )
11/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
11/shape = SubResource( 4 )
11/shape_one_way = false
11/shape_one_way_margin = 1.0
11/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
11/z_index = 0
12/name = "tileset.png 12"
12/texture = ExtResource( 1 )
12/tex_offset = Vector2( 0, 0 )
12/modulate = Color( 1, 1, 1, 1 )
12/region = Rect2( 32, 0, 16, 16 )
12/tile_mode = 0
12/occluder_offset = Vector2( 0, 0 )
12/navigation_offset = Vector2( 0, 0 )
12/shape_offset = Vector2( 0, 0 )
12/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
12/shape = SubResource( 5 )
12/shape_one_way = false
12/shape_one_way_margin = 1.0
12/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
12/z_index = 0
13/name = "tileset.png 13"
13/texture = ExtResource( 1 )
13/tex_offset = Vector2( 0, 0 )
13/modulate = Color( 1, 1, 1, 1 )
13/region = Rect2( 0, 112, 16, 16 )
13/tile_mode = 0
13/occluder_offset = Vector2( 0, 0 )
13/navigation_offset = Vector2( 0, 0 )
13/shape_offset = Vector2( 0, 0 )
13/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
13/shape_one_way = false
13/shape_one_way_margin = 0.0
13/shapes = [  ]
13/z_index = 0
14/name = "tileset.png 14"
14/texture = ExtResource( 1 )
14/tex_offset = Vector2( 0, 0 )
14/modulate = Color( 1, 1, 1, 1 )
14/region = Rect2( 16, 112, 16, 16 )
14/tile_mode = 0
14/occluder_offset = Vector2( 0, 0 )
14/navigation_offset = Vector2( 0, 0 )
14/shape_offset = Vector2( 0, 0 )
14/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
14/shape_one_way = false
14/shape_one_way_margin = 0.0
14/shapes = [  ]
14/z_index = 0
15/name = "tileset.png 15"
15/texture = ExtResource( 1 )
15/tex_offset = Vector2( 0, 0 )
15/modulate = Color( 1, 1, 1, 1 )
15/region = Rect2( 16, 64, 16, 16 )
15/tile_mode = 0
15/occluder_offset = Vector2( 0, 0 )
15/navigation_offset = Vector2( 0, 0 )
15/shape_offset = Vector2( 0, 0 )
15/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
15/shape_one_way = false
15/shape_one_way_margin = 0.0
15/shapes = [  ]
15/z_index = 0
16/name = "tileset.png 16"
16/texture = ExtResource( 1 )
16/tex_offset = Vector2( 0, 0 )
16/modulate = Color( 1, 1, 1, 1 )
16/region = Rect2( 32, 64, 16, 16 )
16/tile_mode = 0
16/occluder_offset = Vector2( 0, 0 )
16/navigation_offset = Vector2( 0, 0 )
16/shape_offset = Vector2( 0, 0 )
16/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
16/shape_one_way = false
16/shape_one_way_margin = 0.0
16/shapes = [  ]
16/z_index = 0
17/name = "tileset.png 17"
17/texture = ExtResource( 1 )
17/tex_offset = Vector2( 0, 0 )
17/modulate = Color( 1, 1, 1, 1 )
17/region = Rect2( 64, 64, 16, 16 )
17/tile_mode = 0
17/occluder_offset = Vector2( 0, 0 )
17/navigation_offset = Vector2( 0, 0 )
17/shape_offset = Vector2( 0, 0 )
17/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
17/shape = SubResource( 6 )
17/shape_one_way = false
17/shape_one_way_margin = 1.0
17/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
17/z_index = 0
18/name = "tileset.png 18"
18/texture = ExtResource( 1 )
18/tex_offset = Vector2( 0, 0 )
18/modulate = Color( 1, 1, 1, 1 )
18/region = Rect2( 80, 64, 16, 16 )
18/tile_mode = 0
18/occluder_offset = Vector2( 0, 0 )
18/navigation_offset = Vector2( 0, 0 )
18/shape_offset = Vector2( 0, 0 )
18/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
18/shape = SubResource( 7 )
18/shape_one_way = false
18/shape_one_way_margin = 1.0
18/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
18/z_index = 0
19/name = "tileset.png 19"
19/texture = ExtResource( 1 )
19/tex_offset = Vector2( 0, 0 )
19/modulate = Color( 1, 1, 1, 1 )
19/region = Rect2( 0, 80, 16, 16 )
19/tile_mode = 0
19/occluder_offset = Vector2( 0, 0 )
19/navigation_offset = Vector2( 0, 0 )
19/shape_offset = Vector2( 0, 0 )
19/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
19/shape = SubResource( 8 )
19/shape_one_way = false
19/shape_one_way_margin = 1.0
19/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 8 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
19/z_index = 0
20/name = "spike up"
20/texture = ExtResource( 1 )
20/tex_offset = Vector2( 0, 0 )
20/modulate = Color( 1, 1, 1, 1 )
20/region = Rect2( 32, 96, 16, 16 )
20/tile_mode = 0
20/occluder_offset = Vector2( 0, 0 )
20/navigation_offset = Vector2( 0, 0 )
20/shape_offset = Vector2( 0, 0 )
20/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
20/shape = SubResource( 9 )
20/shape_one_way = false
20/shape_one_way_margin = 1.0
20/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 9 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
20/z_index = 0
         GDSC   *      _   �     ������������τ�   �����Ķ�   �������   ��������󶶶   �����������򶶶�   �������򶶶�   ��������   ��������������������޶��   ��������߶��   �������Ӷ���   ����������������Ķ��   �������Ӷ���   ���Ӷ���   ����Ҷ��   ������ض   �������϶���   ��������   �������Ҷ���   �����������϶���   �����϶�   �����Ŷ�   �������Ŷ���   ����׶��   ���������������Ŷ���   ����������Ķ   ϶��   ����¶��   ����������������Ҷ��   ζ��   �����Ӷ�   �����޶�   �������������Ӷ�   �涶   ������������Ѷ��   ����������Ӷ   �����¶�   �����������������϶�   ��Ӷ   �����޶�   �������Ӷ���   �����������Ķ���   ����������Ӷ  
ףp=
�?  ������@                                    �B             jump   
   move_right     	   move_left               ?  �������?      timeout       player died                                                     	       
   !      "      )      4      :      ?      @      E      J      Q      V      W      ]      `      a      b      h      l      r      s      t      {       }   !   ~   "      #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8     9     :     ;     <     =     >   %  ?   +  @   ,  A   ;  B   <  C   D  D   H  E   N  F   R  G   U  H   Y  I   _  J   `  K   j  L   k  M   o  N   s  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   3YY2�  YY:�  Y:�  �  Y:�  �  Y:�  �  Y:�  �  YYY8P�  Q;�  Y5;�  �	  P�  Q<�
  Y8;�  �  Y;�  �  YY;�  �  Y;�  �  Y;�  �  T�  Y;�  �  YY0�  PQV�  .�  YYY0�  PQV�  �  �  �  �  T�  �  YYY0�  P�  QV�  -YYY0�  P�  QV�  &�  PQ�  V�  �  T�  �  �  &�  T�  P�	  QV�  �  T�  �  �  �  �  �  T�  �  �  &�  T�  �  V�  �  T�  �  �  �  �  �  T�  �5  P�  T�  R�  R�  Q�  �  &�  V�  &�  T�  P�
  QV�  �  T�  �  �  W�  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  W�  T�  �  �  (V�  �  T�  �  P�  T�  R�  R�  Q�  �  �  P�  �  R�  T�   Q�  �  �  &�!  PQV�  �  T�  �  YY0�"  P�#  �  R�$  �  T�  QV�  �  &�  �#  
�  V�  �  �  �  �  T�  �  �  �%  PQ�  (V�  �  �#  �  �  T�  �  Y�  &�$  T�&  PQ�  V�  �  �  �  �  �  �$  �  AP�'  PQT�(  P�  QR�  Q�  �  �  YY0�)  P�#  �  QV�  &�  �#  �  V�  �  �  �  (V�  �  �#  �  �  �  T�  �  YYY0�%  PQV�  �?  P�  QYYY`   GDSC      
   3   �      ���ׄ�   ����������������Ķ��   ���¶���   ���Ӷ���   �����Ӷ�   ���������϶�   ����������¶   �������������Ķ�   ������¶   �����϶�   �������ض���   ϶��   ����ڶ��   ������Ŷ   ��������׶��   �������Ŷ���   ����׶��   �������¶���   �嶶   �������������ն�$   �������������������������������Ҷ���   ���϶���   ����������ƶ   ����������ڶ   �����Ӷ�   ������Ӷ   �����������������Ӷ�   �������Ӷ���   �����������Ķ���   ���������Ӷ�           �B      player               touched_answer     
   font_color                    �?      timeout                                                     	      
   !      "      (      )      *      0      6      <      C      I      J      Q      c      k      l      m      n      o      p      q      r      s       t   !   u   "   v   #   w   $   ~   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   3YY2�  YY8P�  Q;�  Y8P�  Q;�  YY;�  Y;�  Y;�  YYB�  P�  QYYY0�	  PQV�  �  �
  T�  �  �  �&  PQ�  W�  T�  �  �  �  T�  PQYY0�  P�  QV�  ;�  PP�  T�  PQ�  Q�  Q�  �
  T�  �  �  YYYYYYYYYYYYY0�  P�  QV�  &�  V�  .�  &�  T�  P�  QV�  �  �  �  �  P�  R�  Q�  �  W�  T�  �  �  &�  V�  W�  T�  P�  R�  P�  R�  R�  R�  QQ�  (V�  W�  T�  P�  R�  P�  R�  R�  R�  QQ�  �  AP�  PQT�  P�  QR�	  Q�  �  PQY`    GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   jIDAT8���A� O�g|>^jg�hA��21��c �Y%��D4Z���N}�W�(�;��-��a7f��48ј�=�`���U���?���r���j�:�����    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/dark ghost.png-1aa89c6e3db9716dd49543c6906f4ede.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://dark ghost.png"
dest_files=[ "res://.import/dark ghost.png-1aa89c6e3db9716dd49543c6906f4ede.stex" ]

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
detect_3d=true
svg/scale=1.0
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            �      ���ׄ�   ����Ҷ��   ��������������Ķ   �����Ķ�   �����϶�   �������Ӷ���   �����������������ƶ�   �������Ŷ���   ����׶��   �������ض���   ���������Ҷ�   ζ��   �����Ӷ�   �����޶�   ��������Ӷ��   ���������������������Ҷ�   ���϶���   �����Ķ�   ��������ݶ��   ϶��   ����������Ӷ     �B      player                                                                                      	   *   
   +      ,      3      8      :      ;      I      Q      X      [      b      k      l      m      t      {            �      �      �      �      3YY8P�  Q;�  YY;�  V�  Y;�  YY0�  PQV�  �  �  PQT�  P�  QL�  MYYY0�  P�  QV�  &�  V�  .�  �  �  P�  T�	  �	  QT�
  PQ�  &�  T�  	�  V�  W�  T�  �  �  (V�  W�  T�  �  �  �  P�  �  �  QYYY0�  P�  QV�  ;�  �  <�  �  &�  V�  ;�  �  �  �  T�  �  �  �  T�  �  �  �  T�  P�  R�  QY`          GDSC            =      ���Ӷ���   ���׶���   ��������׶��   ���Ӷ���   ���Ӷ���   ����   ���ض���   ���򶶶�   ���ض���   ����������¶   ��������   ����Ӷ��   �����¶�   ����Ӷ��      res://data.json                                            !      *   	   5   
   ;      3YY;�  YY0�  PQV�  ;�  �  T�  PQ�  �  T�  PR�  T�  Q�  ;�  �  T�	  PQ�  �  �
  T�  P�  QT�  �  �  T�  PQY`       GDST           ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !�!�!�! ! ! !�!�!�! ! ! ! ! ! !��*p��/{��/{�!�! !��/{��/{��*p�!�! ! ! ! !��*p��Rw��Rw��Rw��Rw�!��/{��/{��Rw��/{��*p�!�! ! ! !��/{��Rw����������Rw��/{��Rw��Rw��/{��Rw��/{�!�! ! ! !��/{��Rw����������Rw��Rw��Rw��Rw��Rw��/{��/{�!�! ! ! !��/{��Rw��Rw��Rw��Rw��Rw��Rw��Rw��/{��Rw��/{�!�! ! ! ! !��/{��Rw������Rw��Rw��Rw��Rw��/{��/{�!�! ! ! ! ! !��*p��Rw��Rw��Rw��Rw��Rw��/{��Rw��*p�!�! ! ! ! ! ! !��/{��Rw��Rw��Rw��/{��Rw��/{�!�! ! ! ! ! ! ! ! !��/{��Rw��Rw��Rw��/{�!�! ! ! ! ! ! ! ! ! ! !��/{��Rw��/{�!�! ! ! ! ! ! ! ! ! ! ! ! !��/{�!�! ! ! ! ! ! ! ! ! ! ! ! ! ! !�! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !                 [remap]

importer="texture"
type="StreamTexture"
path="res://.import/heart.png-46ac0108226a8969f121b451c7b38c9b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://heart.png"
dest_files=[ "res://.import/heart.png-46ac0108226a8969f121b451c7b38c9b.stex" ]

[params]

compress/mode=3
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
             GDST            ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !�!�! ! !�!�! ! ! ! ! !��/{��/{�!�!��/{��/{�!�! ! ! !��/{����������/{��/{��Rw��Rw��/{�!�! ! !��/{������Rw��Rw��Rw��Rw��Rw��/{�!�! ! !��/{��Rw��Rw��Rw��Rw��Rw��Rw��/{�!�! ! !��/{��Rw������Rw��Rw��Rw��Rw��/{�!�! ! ! !��/{��Rw��Rw��Rw��Rw��/{�!�! ! ! ! ! !��/{��Rw��Rw��/{�!�! ! ! ! ! ! ! !��/{��/{�!�! ! ! ! ! ! ! ! ! !�!�! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/heart_mini.png-e09714f14e0df6726f40fec2cd7127b7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://heart_mini.png"
dest_files=[ "res://.import/heart_mini.png-e09714f14e0df6726f40fec2cd7127b7.stex" ]

[params]

compress/mode=3
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
detect_3d=true
svg/scale=1.0
             GDSC   
         =      ���ׄ�   ����������ƶ   ��������ƶ��   �����϶�    ���������������������������Ҷ���   ���϶���   �����Ķ�   �����Ķ�   ����������Ӷ   ���������Ӷ�                                                                       	      
               %      ,      0      7      ;      3YY2�  YY;�  YY0�  PQV�  -YYY0�  P�  QV�  ;�  �  <�  �  &�  �  V�  �  �  �  �  T�  P�  Q�  �	  PQY`         GDSC         F   %     ������������Ķ��   ����������������Ķ��   ����������Ӷ   ��������������¶   ����������¶   �����Ŷ�   ���������¶�   ���������¶�   ����Ӷ��   ������������Ŷ��   �����϶�   ������������Ŷ��   ߶��   ��������¶��   �������Ӷ���   ���Ӷ���   ��������Ҷ��   �������������������¶���   ��������������¶   ���������Ŷ�   �����¶�   �������Ӷ���   ��۶   ����������Ŷ   ���������Ŷ�   ��������Ҷ��   ������Ӷ      res://UI_Heart.tscn                   Heart_                                                                          	      
   $      %      ,      0      4      5      ;      >      ?      E      I      J      K      Q      R      [      d      o      t      u      {      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A     B     C     D     E   #  F   3YY2�  YY5;�  ?PQYY8;�  �  Y;�  �  YY;�  9�  R�  YY0�  P�  QV�  �  �  �  �	  PQYY0�  PQV�  .�  YY0�
  PQV�  �  PQYYY0�  PQV�  �  )�  �K  P�  QV�  ;�  �  T�  PQ�  �  T�  �  �>  P�  Q�  �  P�  QYY0�  PQV�  .�  PQYY0�  P�  R�  �  QV�  �  &�  V�  �  �  �  �  &�  �  V�  �  �  �  �  ;�  �  �  �  &�  �  V�  �  �  �  (V�  �  �  �  �	  PQYYY0�  P�  QV�  &�  �  
�  V�  �  �  �  �	  PQ�  �  (V�  �  �  �  �	  PQYYY0�  P�  QV�  �  �  �  �	  PQYYY0�	  PQV�  )�  �K  P�  R�  PQQV�  &�  	�  V�  �  P�  QT�  �  �  (V�  �  P�  QT�  �  Y`              GDSC            _      �������؄�   �������������¶�   �����������Ӷ���   ��������������¶   �������۶���   ��������Ҷ��   �������۶���   ��������Ӷ��   ���������Ӷ�   ��������Ҷ��   ���ӄ�   �������ض���   ��������   �����϶�                                                                  	   "   
   %      +      ,      3      4      :      C      H      T      U      [      ]      3YY2�  YY0�  PQV�  .�  PQYY0�  PQV�  &�  PQV�  .�  �  .�  PQYY0�  P�  QV�  �  &�  PQV�  �  PQT�  PQ�  �	  P�  Q�  P�  <�
  QT�  �  T�  YY0�  PQV�  -Y`               GDSC            m      ���ӄ�   ������������¶��   �����Ŷ�   ���������¶�   ��������¶��   �����������¶���   ����������ڶ   ������¶   ���������ڶ�   ���������ڶ�   ��������ڶ��   ��������¶��   ���������������Ķ���   ��������������Ķ   �����϶�   ���������̶�   �������¶���   ����������������¶��   ���¶���   <               Time Left:                                                   	   	   
   
               #      .      3      4      ;      <      B      C      G      H      N      T      U      V      \      `      k      3YYYYYYYYYY5;�  W�  �  �  �  Y5;�  W�  �  �  Y5;�	  W�  �  �
  Y;�  YY5;�  W�  YY0�  PQV�  �  �  PQYY0�  PQV�  �  T�  PQ�  YY0�  PQV�  �  �  �  �	  T�  �  �>  P�  QY`              GDSC   ,      Q   �     ���Ӷ���   ����������Ӷ   �����������Ӷ���   ������������������Ŷ   ������������Ŷ��   ������������������Ҷ   ������������ض��   ���������������ڶ���   ��������������ڶ   �����������������޶�   ������������¶��   �������Ӷ���   ������������ڶ��   ��������������Ŷ   ���������������Ŷ���   �����϶�   ������Ŷ   �������Ӷ���   �����������������ƶ�   ߶��   ���Ӷ���   ������¶   �������¶���   ���¶���   ���������������Ŷ���   ׶��   ���������Ӷ�   ���������Ӷ�   �������������¶�   ����������Ķ   �������Ӷ���   ����������������Ķ��   ����������¶   ���Ӷ���   �������۶���   �����������Ķ���   �����������������Ķ�   ������¶   ���������¶�   �����������¶���   ����¶��   �������ض���   ���������¶�   ��������Ҷ��      res://Ghost.tscn      res://CollectibleWord.tscn     
               Which words are verbs?        run       scare         threw         fished        was       driving       scary      	   happiness         ghost         you       best      collectible       touched_answer        _on_touched_answer        answer           �������?                   Signal worked                                                             	   #   
   )      *      +      0      A      P      Q      R      X      c      d      e      n      o      u      v      |      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0     1     2   ,  3   2  4   =  5   D  6   E  7   F  8   G  9   H  :   I  ;   J  <   P  =   R  >   S  ?   T  @   [  A   `  B   d  C   h  D   k  E   o  F   p  G   q  H   w  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   3YY5;�  ?PQY5;�  ?P�  QYYY;�  V�  YY8;�  �  Y;�  �  YYY;�  �  Y;�  L�  R�  R�  R�  R�	  R�
  MY;�  L�  R�  R�  R�  R�  MYYY8;�	  V�  Y5;�
  �  P�	  Q<�  YYY8P�  R�  Q;�  YY;�  NOYY0�  PQV�  �%  PQ�  �  ;�  �  PQT�  P�  Q�  )�  �K  P�  T�  PQQV�  �  L�  MT�  P�  RR�  Q�  Y0�  PQV�  �
  T�  �  �  �  �  ;�  �  PQT�  P�  Q�  )�  �  V�  �  T�  PQ�  �  )�  �K  P�  T�  PQQV�  ;�  �  P�  L�  MQ<�  �  ;�  �  T�  PQ<�  �  �  ;�   �  �  &�'  PQ�  V�  �   �  L�(  P�  R�  T�  PQQM�  �  T�!  �  �  (V�  �   �  L�(  P�  R�  T�  PQQM�  �  T�  �   �  �  T�  P�  RR�  Q�  �  T�"  P�  Q�  �  �  �  �  YY0�#  PQV�  -YYY0�$  P�%  QV�  �?  P�  Q�  &�%  V�  �&  PQ�  (V�  �'  PQYYY0�'  PQV�  ;�(  �  T�  PQ�  �(  T�)  �  P�  R�  Q�  �*  PQT�+  P�(  Q�  -YYY0�&  PQV�  -Y`   GDSC            @      ���ׄ�   �����϶�   ���������������������Ҷ�   ���϶���   ����������ƶ   ���������ڶ�   �����������϶���   ϶��   �����Ķ�   �����Ķ�   ����������Ӷ      player                                                                   	      
         (      0      7      >      3YYYY0�  PQV�  -YYY0�  P�  QV�  &�  T�  PQV�  ;�  �  T�  PQ�  &�  T�  �  V�  ;�  �  <�	  �  �  T�
  P�  QY`       GDST`   �            �  PNG �PNG

   IHDR   `   �   �pi�   sRGB ���  @IDATx��]O�G���V�1��APd�lf�@D�;Y�&x��� ���%$��h��	�7�'�7/��1�8	,�eŰn���L�0�<����멮�UuuUu�������W�U��������4 ��&�迲���? ���G�7ǟ7� W�!�×����!���U*M��thhNv����� %�L���p���9�ץ[��o/6�D�W�4\��\�- pt|C�h�M���©�w�*�h�׻�<�jZ��ʖ���s��+:��;��p��7@�m�w�*��t�&!~=(/��C�e�œa?-�*�?hLLWU��� ^�>��:�^}��� ��������$«�s����0y�����<�.��
��5`���S^U|U�r�<�����v �^ԛU����&��ZP/��r�<��
���v�ʖ㛽�7sa���G�]aR��7�E�7}\�w�I��� 1s�o���7��c�����Ɨ��s�|��&��%CiTğ�,�wE����\1�� W� G>�>��pŀp�\1�� W��>Ā(��>���� ����%���\�`��k�B� ����(�����į:Unqu>q��MO~�WV��b}@ KD�zi������ط�(ԮcB�>��+�����2  O~�g��(eֿ/� B�D��O�*н�p=?\Z�2qaj�]�xQf������/�ƿ��śPf������{�"����@�� 	���]�t���G{�8�֝�P�"��?]�,��rvm��/�g��gA���� U�L���v$5�D`�F`u�dz^�t��&>���6@��mrL;��|7\8�����ˢ��T0�{mf���-�>����Y��������/*mt.�����"얄%�@`2�\PӲ����4-�sB|�ю �U���.s)���4>�����ؠ��9�G�υs�b���(��N|�����6�Iv� �`�E\��mL�us�ӳ�������;�@��,� ��E��/�����	���x3���E��Y�#���]���R����g� ���n���i9l��O�*���/��6(��5��2	nSB��$��^j8����g�~$ �2��y��� BQ5N�%\R��b}����v���P���.�����8ͯW�3��$[���P�q���6 w�����D�����5���3�O���R��X�3���?����	w��?<��>����m�:���	C���+��;�4������,�h���(��	ܫͅ���qE�
�4UYL�/�#����tz���zZ�����O~i�ӝ���
c��V�է_&'8��Q��1�g7V���e��߀ ,���>�'����.a���x��*�� G�<�>��Ѣ�|@!�lA����t�{>�7��" r����Ď�qRE9��a�� �v���vA�Z��K2�Ƈ�c5&����4�����6�Y��� ��U��D]��v0�hO�p�R[�K>�h�����������=���F�;> +8��8e (����@V��P��D#T��-(��E�P*@�J��Xk5+=��y}�Z�YZ#Гo�> �X�*>!-�����j�qݎ�� ]<�4l�z������ru+��	�6����PyŊћ���j����b�h�J �� .|�K�B����e��|��"��yW����9"�\>�$*����C�4B��yC�Gl:n׻�O�x�L|L����y0�����V��]����A������11m�QQe$���O��#��ՀG� ��n����E�� 3��*��7n�d��SG�����f>��!Ɉ���e�*��Ѓݎ
�1!�������n�>!n�ը �ڳ�ݹxʹ?)��eĳ�0niz�X�C�����ZO\[�sE�iW-�x>x��)oN���3 ���Vׇq�w��ʆ�r}�|,�Ӕ�,�4\��ˋ^_�� ��ç ׆��ݕ�2�|�rش8i���S����՝�թ&��m�/ԏ;|�4|2���C'�1�3+� �w�?���] _���x?C&����\挹��� �e�(O��ͅ��Y��.g�g$a.�ow����i��)�/��� ��SWz��R@����j!�ݯ�j �Ax�M_�� KX ���c,�=�����/�)\`p�0J�)Q��i���`�įFn���������2l����5b�i� �o���`���\s^(�h��'7v�a�p�9gWDY���Dn�@` ����@Oy�}Ww�8��]6��#7���B�dT�4וֺ>�,�um@k>%wg\��Q#D�ЈAm�h�1�Y��6�g�����o�)�JW��(|Z��m�]�Cd�B�mЗ@��oO:���:-�5���Ks�!Ԙ��>^c��r�P#�66��r}��&K#���w����{����S�*��
�z��B!� �ӯ~�5��0y��ZM_��BX����� Q������)�2]P�b� %�pCL#|uQ���w�tZgޥ9/y������>�.hLL{�E�����uA>��</�欖	/]Pa��-r	����gokQCo|@!FF����H��B�_�|���W�Ñ�3xy䦗�v���呛��#7�1��r�T�����_y8����/�!b�S���j�4�����<�e�i� �B����Xy8���3$+�!"�TJI�^���߷ tͨ0�_��������x��<�Tƕ��ų�\^�!�E %���%Q_n���F��u>
Pz��*Q���;�>��$��x����`�΃ ��y0>v�� /v 	f���r>_� ���;W�§QE� nX ��$�����1�6�w� ���+! ԱiHE�e�u{b��� H��_4�юYh����DCp����
�-�� ��Ԗ��uD(� x���u$jM$�B-x�
6����db�|=#��'�*�(Vc�j�R]��hL/����W'{{����yŉ�� y|��2|�#�gd_�� �B����C��O�� ���!��p���\�ԗ�a^v������%x6���gw�_ъ�X��h65(�ҍ�Q�E��j�si�=��qb��Y���><�7��/�<q]<� �u9^?��Op�x��`�To�5���g_ih͏��;����=�~�㎲`�5Mږ��|@�|B��$+0��6|�
�^}(_%x�o?���!�Fx�Kqzҭ೿�T�-!n��v���O���!�n��o�Ak>AB���-s� _}c0�]��Gߦ�y��S�j�p���Òv��}O��h�������e�����Fs;��f�m]�0���Nr�B=�������t-3�z\�Y����{���!�7w�uzK7�l�ss?7G���[]׸�V5�4@{�������0w�w[�brs N�e!�����|�m��0�V��1@���ܭ�8�ǭ ��m�;j�}�ț�ߋ�N,�s�_�3�؅�ė�1��`��MaQW#�����
���?��OgG���4�#���}�8�>�3p�;��Xڼ&�!NO��F���1�5>���V�v�5�?�V�o�5�t�O�����|�$��|�r������_UA����Y�&Z��E��A���N���F�����Bg[� |������Ղ����>�v�*��2	�>c%�s������<K27��;���?:ﯻ��k� g7���j� �^���ֶD��k1T��uq!�ःO�]t2F�V���;k�x    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tileset.png-a39e944f25b35d62f55d4f98a36e2b5e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://tileset.png"
dest_files=[ "res://.import/tileset.png-a39e944f25b35d62f55d4f98a36e2b5e.stex" ]

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
detect_3d=true
svg/scale=1.0
      [remap]

path="res://answer.gdc"
               [remap]

path="res://character_controller.gdc"
 [remap]

path="res://collectible_word.gdc"
     [remap]

path="res://ghost.gdc"
[remap]

path="res://globals.gdc"
              [remap]

path="res://heart_pickup.gdc"
         [remap]

path="res://hearts_ui_controller.gdc"
 [remap]

path="res://item_spawn_point.gdc"
     [remap]

path="res://main_screen.gdc"
          [remap]

path="res://question_manager.gdc"
     [remap]

path="res://spike.gdc"
ECFG      _global_script_classes(                    class         CollectableAnswer         language      GDScript      path      res://collectible_word.gd         base      Area2D              class         HeartBoxContainer         language      GDScript      path      res://hearts_ui_controller.gd         base      HBoxContainer               class         HeartPickup       language      GDScript      path      res://heart_pickup.gd         base      Area2D              class         ItemSpawnPoint        language      GDScript      path      res://item_spawn_point.gd         base   
   Position2D              class         Player        language      GDScript      path      res://character_controller.gd         base      KinematicBody2D    _global_script_class_icons�               Player               HeartPickup              HeartBoxContainer                ItemSpawnPoint               CollectableAnswer             application/config/name         EnglishPuzzles     application/run/main_scene         res://Main.tscn    autoload/globals         *res://globals.gd      display/window/size/width      �     display/window/size/height      @     display/window/size/test_width      �     display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/move_left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      
   input/jump`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script      $   rendering/quality/driver/driver_name         GLES2   #   rendering/quality/2d/use_pixel_snap         %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres             