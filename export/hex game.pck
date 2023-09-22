GDPC                 
                                                                         X   res://.godot/exported/133200997/export-11a53b47ae2298a4711fae5a03732b44-shadow_hex.scn  �(            ��%|�/�o�z�;�    X   res://.godot/exported/133200997/export-57b50ee857e06a2127fc669a28e8c9c9-hex_chunk.scn   �      q      (�V��oJ�r�k`Ӈ    X   res://.godot/exported/133200997/export-bfe04e459b34c07d004938d87ccdcf38-grass hex.scn          �      =��y�aɐb��&�    X   res://.godot/exported/133200997/export-d271b8befcef6c80eab2ce0db9be03ec-stone_hex.scn    .      f      Ǎ��k�(�g����    X   res://.godot/exported/133200997/export-dfe447e3a2f9a78238495a6ae62c078d-test_root.scn   p1      �      ̏��ZV��u�tt5A$    X   res://.godot/exported/133200997/export-e5e8b7266bff7871cdfe98dd58d61085-hex_layer.scn   `      q      Q�~\sX�8wonr�    ,   res://.godot/global_script_class_cache.cfg  �9             ��Р�8���8~$}P�    L   res://.godot/imported/Stone Hex.png-d9beaf99295b646dd9e8e14300a82a1a.ctex   �+      �      ������կ��1�    P   res://.godot/imported/godot hex shadow.png-caa579e96c4a2106e2de256427a1d4c4.ctex�      �       �ʋЪm�E��m��w    L   res://.godot/imported/godot hex.png-2030a26c710cd2ff0f7a4698a8df5ad1.ctex   P      :      Er(���4�8�`��    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �Yz=������������       res://.godot/uid_cache.bin  �=      C      2�s=̀�'�q����       res://Hex Layer.gd  �      �      ��g�w.m+�\"�       res://Stone Hex.png.import  0-      �       ��~����
�-�       res://circleCam.gd          �      �r�F%� oG�bj�       res://drag_camera.gd�      �      ��Ҭ�j�˄^�wA��    $   res://godot hex shadow.png.import   �      �       [|��,5T ' xd       res://godot hex.png.import  �      �       qR�*.+�wf����       res://grass hex.gd  `	      �      $�E;mO���e͸       res://grass hex.tscn.remap  07      f       �zq\|q�;�h����Ź       res://hex_chunk.gd  `      z      j�����l0�J�       res://hex_chunk.tscn.remap  �7      f       Ĥ�_�j̊�ܰHu       res://hex_layer.tscn.remap  8      f       �����#����Hӱ-p       res://icon.svg  �9      �      C��=U���^Qu��U3       res://icon.svg.import   �'      �       @	T�-^9آ����C       res://project.binary ?      �      �h��2�$9:��5       res://shadow_hex.tscn.remap �8      g       1ɝ柭��5��
�gn`       res://stone_hex.tscn.remap  �8      f       "F�꬏"�_�Wp�J*       res://test_root.tscn.remap  `9      f       ���sP���6N�(%�    �y� ܧP_Z�extends Camera2D

var total_time = 0.0
@export var circle_scale = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	total_time += delta
	self.position.x = sin(total_time)
	self.position.y = cos(total_time)
	self.position *= circle_scale
��l�g��(extends Camera2D

@export var drag_scale = 2.0

var left_dragging = false

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_input(event):
	if event is InputEventMouseButton: 
		# update left_dragging state
		if event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
			left_dragging = true
		else:
			left_dragging = false
		# check for zoom input
		if event.is_pressed() and event.button_index == MOUSE_BUTTON_WHEEL_UP:
			zoom_in()
		elif event.is_pressed() and event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			zoom_out()
	elif event is InputEventMouseMotion and left_dragging:
		position += event.relative * -(drag_scale * (1 / zoom.x))

func zoom_in():
	if zoom.x <= 0.25:
		zoom *= 2
	else:
		zoom += Vector2(0.25, 0.25)

func zoom_out():
	if zoom.x <= 0.25:
		zoom /= 2
	else:
		zoom -= Vector2(0.25, 0.25)
^ׂ+( GST2            ����                        �   RIFF�   WEBPVP8L�   /��?0S�5S�p4m�$M�����#�?����9�0)�YI-�RJa�R	��B����,�f=U0)�9I�QJ`�Rs���0���]S�[
�H�� \!%���p���*�6RF�E��H!a�$l!������ޑjba��� ���VQ���[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b24dimhxv04wi"
path="res://.godot/imported/godot hex shadow.png-caa579e96c4a2106e2de256427a1d4c4.ctex"
metadata={
"vram_texture": false
}
 q�hGST2   @   @      ����               @ @          RIFF�   WEBPVP8L�   /?�7��m�p�oq��	���*%ҶM-G���� �<�G���"I���� d
Q0�k�S�N�L��ψ�+Lۆq�~)�Ti�F��W�W�w	�p��L����"�"�2�2l2���a�	�`
3I7ɖ�u�I۽%m����-e���Z�.��B���&�!�"I�!�.�%��3����F�:�����c-�")v4�ȡ Jd)�[!�b�8�!�tX�! ^M(xJ�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://xhsvf6lwodsj"
path="res://.godot/imported/godot hex.png-2030a26c710cd2ff0f7a4698a8df5ad1.ctex"
metadata={
"vram_texture": false
}
 A��Ӭ��extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	get_node("Grass sprite").hide()
	pass # Replace with function body.


func _on_area_2d_mouse_exited():
	get_node("Grass sprite").show()
	pass # Replace with function body.
RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://grass hex.gd ��������
   Texture2D    res://godot hex.png iէ�      local://PackedScene_nwhpi 8         PackedScene          	         names "      
   Grass Hex    scale    script    Node2D    Grass sprite    texture 	   Sprite2D    Area2D    CollisionPolygon2D 	   position    polygon    _on_area_2d_mouse_entered    mouse_entered    _on_area_2d_mouse_exited    mouse_exited    	   variants       
     �@  �@                   
     PA  p�%        ��  T�  4�  `@  4�  �A  ��  B  @  B  �A  �A  �A  p@   @  T�      node_count             nodes     &   ��������       ����                                  ����                           ����                     ����   	      
                conn_count             conns                                                              node_paths              editable_instances              version             RSRC�����m����extends Node2D

var grass_hex_scene = preload("res://grass hex.tscn")
var stone_hex_scene = preload("res://stone_hex.tscn")
var shadow_hex_scene = preload("res://shadow_hex.tscn")

var x_offset = 188
var y_offset = 64

# Called at an early part of the init process
func _init():
	# loop to make a 10 x 10 grid
	for y in 10: 
		for x in 10:
			# calculate pixel position
			var x_pos = x * x_offset
			var y_pos = (y * y_offset * 2) + (x * -y_offset)
			# instance new node
			var hex = grass_hex_scene.instantiate()
			# flip coin if stone or grass
			if randf() > .80:
				hex = stone_hex_scene.instantiate()
			# set values
			hex.name = "Hex %1d, %1d" % [x, y]
			hex.position.x = x_pos
			hex.position.y = y_pos
			hex.z_index = -x + (y * 2) + self.z_index
			# flip coin to keep
			if randf() > .4:
				add_child(hex)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
B�l]P�n�:�(6��extends Node2D

@export var layer_count = 8
var hex_layer_scene = preload("res://hex_layer.tscn")
var y_offset = 64
var z_layer_offset = 2
var darkness_offset = 0.15

# Called at an early part of the init process
func _init():
	for i in layer_count:
		var y_pos = i * y_offset
		var layer = hex_layer_scene.instantiate()
		layer.position.y = y_pos
		layer.z_index = self.z_index - (z_layer_offset * i)
		var color_val = 1.0 - (darkness_offset * i)
		layer.modulate = Color(color_val, color_val, color_val, 1)
		add_child(layer)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
���<RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://hex_chunk.gd ��������      local://PackedScene_gntfd 
         PackedScene          	         names "      
   Hex Chunk    script    Node2D    	   variants                       node_count             nodes     	   ��������       ����                    conn_count              conns               node_paths              editable_instances              version             RSRC�$)UJ�x��栨5y�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Hex Layer.gd ��������      local://PackedScene_34nk6 
         PackedScene          	         names "      
   Hex Layer    script    Node2D    	   variants                       node_count             nodes     	   ��������       ����                    conn_count              conns               node_paths              editable_instances              version             RSRC0 c�Bm���Z)�GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[  ҄T��!��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bq3x1k2rmid62"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �p�,�˝ǂ��p�b�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script    
   Texture2D    res://godot hex shadow.png  ���/g@<      local://PackedScene_euyct          PackedScene          	         names "         Shadow Hex 	   modulate    Node2D    GodotHexShadow 	   position    texture 	   Sprite2D    	   variants          ���>  �?  �?  �?
     �B  �B                node_count             nodes        ��������       ����                            ����                         conn_count              conns               node_paths              editable_instances              version             RSRC�g��ؚJ��GST2            ����                        X  RIFFP  WEBPVP8LD  /��?/��m85���NM�l�,&��%ȶ�Md
�>���?U��U$�R�,`k�b�5GOD��F���۶qԋ���������-1���'}�/W��1��R����H���"�+U�/N��_���?�*�>U����T�;�"��WU�o���ߪ��������:�@]��5ՅV�Sڡ�:�uԋN��nt������H6�'Y���d����Z�L>�7y����<n$��ﾽ���/��PΫt]3t�;���N��'�Y��G��B/���ZV���l�_���Q��,�EB������_ډY�o��<V5�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cgmwx41flngxp"
path="res://.godot/imported/Stone Hex.png-d9beaf99295b646dd9e8e14300a82a1a.ctex"
metadata={
"vram_texture": false
}
 ��k���RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script    
   Texture2D    res://Stone Hex.png m���^�qH      local://PackedScene_qdi7p          PackedScene          	         names "      
   Stone Hex    Node2D    Stone Sprite    texture 	   Sprite2D    Area2D    CollisionPolygon2D    polygon    	   variants                 %        p�  ��   �       �  pB  p�   C  tB   C   C  pB   C      pB  ��      node_count             nodes         ��������       ����                      ����                            ����                     ����                   conn_count              conns               node_paths              editable_instances              version             RSRC�SfJ/���bRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://drag_camera.gd ��������   PackedScene    res://hex_chunk.tscn �Iw�=#Fj      local://PackedScene_x8es8 =         PackedScene          	         names "      
   Test root    Node2D 	   Camera2D    script    drag_scale 
   Hex Chunk    Hex Chunk2    z_index 	   position    Hex Chunk3    Hex Chunk4    Hex Chunk5    Hex Chunk6    Hex Chunk7    Hex Chunk8    Hex Chunk9    	   variants                      �?               
         �D   ����
     �D   �   	   
     �D   D   &   
          E      
     �D  �D   ����
     kE  ��   ����
     kE          
     kE  �D      node_count             nodes     q   ��������       ����                      ����                            ���                      ���                                 ���	                                 ���
                                 ���            	      
               ���                                 ���                                 ���                                 ���                               conn_count              conns               node_paths              editable_instances              version             RSRCD���������[remap]

path="res://.godot/exported/133200997/export-bfe04e459b34c07d004938d87ccdcf38-grass hex.scn"
�>�{bU����[remap]

path="res://.godot/exported/133200997/export-57b50ee857e06a2127fc669a28e8c9c9-hex_chunk.scn"
a|Ov�r ��[remap]

path="res://.godot/exported/133200997/export-e5e8b7266bff7871cdfe98dd58d61085-hex_layer.scn"
{\���	<�[remap]

path="res://.godot/exported/133200997/export-11a53b47ae2298a4711fae5a03732b44-shadow_hex.scn"
 K�o0νs�[remap]

path="res://.godot/exported/133200997/export-d271b8befcef6c80eab2ce0db9be03ec-stone_hex.scn"
�s�+�s	�:[remap]

path="res://.godot/exported/133200997/export-dfe447e3a2f9a78238495a6ae62c078d-test_root.scn"
��k�p���list=Array[Dictionary]([])
�[�J�<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
�����Aho�
    ���/g@<   res://godot hex shadow.pngiէ�   res://godot hex.png�3 ��E   res://grass hex.tscn�Iw�=#Fj   res://hex_chunk.tscn�� R���p   res://hex_layer.tscn��h���1   res://icon.svg�G^��%   res://shadow_hex.tscnm���^�qH   res://Stone Hex.png)U_���\0   res://stone_hex.tscn�c(�B   res://test_root.tscn��Mc�|Ix@���ECFG      application/config/name      	   Pixel Hex      application/run/main_scene         res://test_root.tscn   application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg  9   rendering/textures/canvas_textures/default_texture_filter          #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility��z"<��G1y�