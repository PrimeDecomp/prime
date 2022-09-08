.include "macros.inc"

.section .bss
.balign 8

.lcomm sGraphicsFifo, 0x60000, 4

.lcomm sMainSpace, 0x168, 4

.lcomm lbl_804576C8, 0xD0, 4
.lcomm lbl_80457798, 0x160, 4

.section .data, "wa"
.balign 8
.global lbl_803D8D60
lbl_803D8D60:
	# ROM: 0x3D5D60
	.4byte 0
	.4byte 0
	.4byte sub_80007c30

.global __vt__4IObj
__vt__4IObj:
	# ROM: 0x3D5D6C
	.4byte 0
	.4byte 0
	.4byte 0

.global __vt__31CObjOwnerDerivedFromIObjUntyped
__vt__31CObjOwnerDerivedFromIObjUntyped:
	# ROM: 0x3D5D78
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D8D84
lbl_803D8D84:
	# ROM: 0x3D5D84
	.4byte 0
	.4byte 0
	.4byte sub_8000799c


.section .rodata, "a"
.balign 8
# CGameGlobalObjects
.global lbl_803CB3A0
lbl_803CB3A0:
	# ROM: 0x3C83A0
	.4byte 0x78DA8D57
	.4byte 0x5B6F5455
	.4byte 0x145EA574
	.4byte 0x3A9D9682
	.4byte 0x188548D2
	.4byte 0x40B928D7
	.4byte 0x5229A5B7
	.4byte 0xD95B6B69
	.4byte 0xA142B9B4
	.4byte 0x948AD0D2
	.4byte 0x4EE7D64E
	.4byte 0x67DAB974
	.4byte 0x68459928
	.4byte 0xF340D4F0
	.4byte 0x0B8C31C6
	.4byte 0xF8A2F1C5
	.4byte 0xC41835C6
	.4byte 0xC417E383
	.4byte 0x314A7C21
	.4byte 0x31262686
	.4byte 0xE8A3C617
	.4byte 0x93BAF7DA
	.4byte 0xDF397366
	.4byte 0x9872CE21
	.4byte 0x3B1FFBCC
	.4byte 0xB7BF597B
	.4byte 0xDDBA66F0
	.4byte 0xDCC81811
	.4byte 0x6D506B8B
	.4byte 0x5A9BD56A
	.4byte 0x52AB8EF4
	.4byte 0x53AFD6A6
	.4byte 0x8170643A
	.4byte 0x146E3FD6
	.4byte 0x4FD7C345
	.4byte 0x49E699A2
	.4byte 0x9DE24D22
	.4byte 0x394224EE
	.4byte 0x2A1C27EB
	.4byte 0xA9C1E91A
	.4byte 0x2CFD1469
	.4byte 0x97F84DB1
	.4byte 0x0E28F603
	.4byte 0x859336B3
	.4byte 0x56AD6660
	.4byte 0x1356915A
	.4byte 0x654381D9
	.4byte 0x72ABC21E
	.4byte 0x5BDBEFC0
	.4byte 0x5A9BBDBB
	.4byte 0x5781F89D
	.4byte 0x2838A14E
	.4byte 0xB4D8EC46
	.4byte 0x7C876605
	.4byte 0xB02FD21E
	.4byte 0x39A9345B
	.4byte 0x15335260
	.4byte 0xFBC1AA87
	.4byte 0x17EAC10E
	.4byte 0x307BAFE8
	.4byte 0x37DA2249
	.4byte 0x7C0A4FC0
	.4byte 0x818DB6F6
	.4byte 0x3E7909DA
	.4byte 0xD73C683F
	.4byte 0x2D6B146B
	.4byte 0x58B17D0A
	.4byte 0xAFD8DA1B
	.4byte 0x1D68DD92
	.4byte 0xE8197908
	.4byte 0xDAC70A96
	.4byte 0x07C9E16B
	.4byte 0x1F3C697C
	.4byte 0xB25F06C1
	.4byte 0x1EF0C03E
	.4byte 0xC096687F
	.4byte 0xFB15F6DB
	.4byte 0x6C9F835D
	.4byte 0x67B30F8A
	.4byte 0x4F14739F
	.4byte 0xF2C9D764
	.4byte 0xB1ADDB35
	.4byte 0x007D8852
	.4byte 0x910E712C
	.4byte 0x85623617
	.4byte 0xAC3CA9C1
	.4byte 0xED2CACC3
	.4byte 0x4D8B7498
	.4byte 0xFDAC7C22
	.4byte 0xEE90935D
	.4byte 0x0FF4E3BB
	.4byte 0x7CCC3EC2
	.4byte 0x9668F6E7
	.4byte 0x6479B052
	.4byte 0xBBD6D66E
	.4byte 0x135B114B
	.4byte 0x5116CB06
	.4byte 0xB0AD589A
	.4byte 0x5B1EE5AC
	.4byte 0x8AA9ACEA
	.4byte 0x5278BF2C
	.4byte 0xF216BB94
	.4byte 0xB1EDF22C
	.4byte 0xFC3D5676
	.4byte 0x4BA7072D
	.4byte 0x760D3D1B
	.4byte 0x3C05ED2F
	.4byte 0x3D681F13
	.4byte 0x11C3D63E
	.4byte 0x716577E8
	.4byte 0xBA64F67B
	.4byte 0x1ED8C7C5
	.4byte 0xFB8A75C3
	.4byte 0x7850FBE6
	.4byte 0x91EC4EF1
	.4byte 0x05D83F7A
	.4byte 0x609F103F
	.4byte 0x81FDC003
	.4byte 0xBB4B5281
	.4byte 0xFAD47F65
	.4byte 0x6381C484
	.4byte 0x0BBB5B36
	.4byte 0x81BDCD03
	.4byte 0xBB47FC6B
	.4byte 0xBA8FFE0E
	.4byte 0xD42555E4
	.4byte 0x89DFAECB
	.4byte 0x5EF1277A
	.4byte 0xD53F0A2F
	.4byte 0x566537D8
	.4byte 0xEC3EF12E
	.4byte 0xAAE16393
	.4byte 0x8B556AA7
	.4byte 0xA41DE4FC
	.4byte 0xD6DA4585
	.4byte 0x8355D93E
	.4byte 0xE81755A2
	.4byte 0xDE85F63B
	.4byte 0x1EB4A5CE
	.4byte 0x2A9D83C1
	.4byte 0x8FCA6AC7
	.4byte 0xEFC0924F
	.4byte 0x9E935164
	.4byte 0x6CCA43AF
	.4byte 0x7A5E6E87
	.4byte 0xBF777BF0
	.4byte 0x77BFDC03
	.4byte 0x769B2BBB
	.4byte 0x9E5EE088
	.4byte 0xABFC904F
	.4byte 0x14F8B660
	.4byte 0x3538B0A4
	.4byte 0x3D208F42
	.4byte 0xBBD78325
	.4byte 0x27651FD8
	.4byte 0x4336BBA6
	.4byte 0xA27F97D8
	.4byte 0x83F24958
	.4byte 0xB2D3B684
	.4byte 0xD6B56448
	.4byte 0x9E82F6A8
	.4byte 0x074B4EE9
	.4byte 0xCEC0EC29
	.4byte 0x0FECD3E2
	.4byte 0x1744FED7
	.4byte 0xB2CE56EB
	.4byte 0x408BEDA7
	.4byte 0x61791DDA
	.4byte 0xF31E6EF9
	.4byte 0xA248A30F
	.4byte 0xBE4DEEFE
	.4byte 0x3EA3AB81
	.4byte 0xD96B656C
	.4byte 0x7F55F659
	.4byte 0xDD35B525
	.4byte 0xC1DBE4B4
	.4byte 0x64B3032D
	.4byte 0x76038DC8
	.4byte 0x04ECCE7B
	.4byte 0xF0C9395D
	.4byte 0xBDBAB371
	.4byte 0xBEDC77B9
	.4byte 0xE579DD21
	.4byte 0x98BDADE0
	.4byte 0xD6070374
	.4byte 0x41A82943
	.4byte 0xE8AE3C43
	.4byte 0x4E6DA74F
	.4byte 0x4A7F2F2F
	.4byte 0xEA6A60ED
	.4byte 0xDDAEDA8D
	.4byte 0x34AAAB81
	.4byte 0xD96DAEEC
	.4byte 0x261AD39D
	.4byte 0x41FB44D7
	.4byte 0x7C159F34
	.4byte 0x3AD8CD74
	.4byte 0x4957036B
	.4byte 0xF716DCBB
	.4byte 0xFDB8AE06
	.4byte 0x660F7960
	.4byte 0x5F0EBE05
	.4byte 0x4B7CAEB1
	.4byte 0xDC4213BA
	.4byte 0x1A587BD4
	.4byte 0x83F64B1C
	.4byte 0x4B5D6901
	.4byte 0x0F357F45
	.4byte 0xF758B6E4
	.4byte 0x33AA96DF
	.4byte 0x8D65EC97
	.4byte 0xF9EFBBAE
	.4byte 0x1DD5BBE5
	.4byte 0x4CD5A9A0
	.4byte 0x14CBAB72
	.4byte 0x17FAE0C1
	.4byte 0xB23EE8CC
	.4byte 0xEFD2F478
	.4byte 0x4D2E82BD
	.4byte 0x5C70CEB1
	.4byte 0x1B1D936F
	.4byte 0x497B523E
	.4byte 0x8EB96A47
	.4byte 0xD91C5BE7
	.4byte 0xE8B5A539
	.4byte 0x764A6EC6
	.4byte 0xA4F454C1
	.4byte 0xEAF695F9
	.4byte 0xBD01AB48
	.4byte 0xD7597318
	.4byte 0xBDAA347F
	.4byte 0xD73A2CDA
	.4byte 0x606B4FEB
	.4byte 0x5BB2BFF5
	.4byte 0x14D95235
	.4byte 0x3AD67A8C
	.4byte 0x6674AFE2
	.4byte 0x584EB9C6
	.4byte 0x723B85E4
	.4byte 0x616877D9
	.4byte 0xDA95765B
	.4byte 0x6B07CDEA
	.4byte 0x5EC5DAF3
	.4byte 0xAE55BC97
	.4byte 0xC2B21BDA
	.4byte 0x03AEDAFB
	.4byte 0x29224F22
	.4byte 0x3A675CA7
	.4byte 0xB0A314D5
	.4byte 0x330F67D5
	.4byte 0x0F6662AA
	.4byte 0xA2BD09D8
	.4byte 0x4131DDAB
	.4byte 0xD8EEBCAB
	.4byte 0x4F7A292E
	.4byte 0xBE470EDE
	.4byte 0x5B7786B0
	.4byte 0xEC963427
	.4byte 0x5AC1EEA1
	.4byte 0x6AD37A9D
	.4byte 0xC3929334
	.4byte 0x1FFCD6F4
	.4byte 0x28D1FCD0
	.4byte 0x6F924A4B
	.4byte 0x062921C6
	.4byte 0xA13D4795
	.4byte 0xBF322C4B
	.4byte 0x2CF6102D
	.4byte 0x88007CA2
	.4byte 0x6613D165
	.4byte 0xB39BC16E
	.4byte 0x76D83D42
	.4byte 0x49ED6F8E
	.4byte 0xCE79D7AC
	.4byte 0xBA402979
	.4byte 0x01ECABAE
	.4byte 0xEC095AD4
	.4byte 0x33265BF2
	.4byte 0x871D9D4A
	.4byte 0xB6E59359
	.4byte 0x5AD23326
	.4byte 0xB3D75C63
	.4byte 0x19A5B4FE
	.4byte 0x7DC696C4
	.4byte 0x1EB2A432
	.4byte 0xAB629491
	.4byte 0x71B0B3AE
	.4byte 0x762F5056
	.4byte 0x762007FB
	.4byte 0xAAE660BD
	.4byte 0xC3DF69CA
	.4byte 0xE9094FFC
	.4byte 0xA5D607EB
	.4byte 0xC6D25A39
	.4byte 0x5A161F82
	.4byte 0xFD952BFB
	.4byte 0x26E5C530
	.4byte 0x7CF2861D
	.4byte 0x4B2B8654
	.4byte 0x11CB5B74
	.4byte 0x43FF9A63
	.4byte 0xED7BAEDA
	.4byte 0x455AD179
	.4byte 0xC27F2F3B
	.4byte 0xD5FAF991
	.4byte 0xD1799D56
	.4byte 0xF554C093
	.4byte 0x6917397B
	.4byte 0x6C357FDF
	.4byte 0xA6577485
	.4byte 0xB1076F79
	.4byte 0x984C6F8A
	.4byte 0x6F90DFDF
	.4byte 0xD9DD9E2A
	.4byte 0x26A55247
	.4byte 0x7E35F8A9
	.4byte 0x6107FFB6
	.4byte 0xEB727DED
	.4byte 0xD782FF41
	.4byte 0xBBC5039B
	.4byte 0x7FD3D311
	.4byte 0x66B5ABFE
	.4byte 0x62B0634D
	.4byte 0x3D0A8F63
	.4byte 0xDF093C81
	.4byte 0xF7DDBCEF
	.4byte 0xA730EF4F
	.4byte 0x5388F767
	.4byte 0x29CC789E
	.4byte 0x4C2E5FC4
	.4byte 0xE7A31402
	.4byte 0x9AFD184D
	.4byte 0x03CDFE32
	.4byte 0x701ABC69
	.4byte 0x9A054681
	.4byte 0x19D69BA6
	.4byte 0x2CF679E0
	.4byte 0x2AE30CCE
	.4byte 0xCFD01C30
	.4byte 0xC518823D
	.4byte 0x21D813A2
	.4byte 0x79600298
	.4byte 0x022E01D3
	.4byte 0xC02C3007
	.4byte 0x5C619CA5
	.4byte 0x38FB7216
	.4byte 0xE7672909
	.4byte 0x34F685F1
	.4byte 0x7D61D811
	.4byte 0x062FAC2A
	.4byte 0xCC6016B8
	.4byte 0x025C658C
	.4byte 0xC01F11DC
	.4byte 0x23A2FE99
	.4byte 0xF771C628
	.4byte 0xEC8FDAFB
	.4byte 0x0430094C
	.4byte 0x017340A3
	.4byte 0x1F531E32
	.4byte 0x68746338
	.4byte 0x1F831D71
	.4byte 0xF83BAE6E
	.4byte 0x60F66160
	.4byte 0x0418051A
	.4byte 0x3FCFE1F3
	.4byte 0x79E825A0
	.4byte 0x9F40BC12
	.4byte 0xF6FB08DE
	.4byte 0xC78159BC
	.4byte 0xCFF37E01
	.4byte 0xE716C05F
	.4byte 0xA045DE27
	.4byte 0xF13E09BB
	.4byte 0x92D04D82
	.4byte 0x97846E12
	.4byte 0x7991846E
	.4byte 0x0AE75238
	.4byte 0x97C2B914
	.4byte 0xCEA52802
	.4byte 0x8C02E780
	.4byte 0x099CCB00
	.4byte 0x2DBD3CD0
	.4byte 0xDC7B11FA
	.4byte 0x8BD05B04
	.4byte 0x6F09FE4E
	.4byte 0xE3F334EA
	.4byte 0x200D3FA5
	.4byte 0x71FF34F4
	.4byte 0x33B02F03
	.4byte 0x9D8CFD3E
	.4byte 0x8BBDF14F
	.4byte 0x167A59E8
	.4byte 0x65C1CFE1
	.4byte 0x7C0EF7CB
	.4byte 0xD9EFA340
	.4byte 0x739F1C65
	.4byte 0xB037715E
	.4byte 0x86DE32F8
	.4byte 0xCBB02B8F
	.4byte 0xF779E457
	.4byte 0x1EEF57F0
	.4byte 0xBD2BB8C7
	.4byte 0xAAC1FF01
	.4byte 0xCBC9BAB0

# CRasterFont
.global lbl_803CB9F0
lbl_803CB9F0:
	# ROM: 0x3C89F0
	.4byte 0x78DAED59
	.4byte 0xDB921431
	.4byte 0x0805CB07
	.4byte 0x1FC31FF9
	.4byte 0xAB7EA94E
	.4byte 0x377702E9
	.4byte 0x99D237B7
	.4byte 0xB770A777
	.4byte 0x12420807
	.4byte 0x0E1100BE
	.4byte 0x23C04F00
	.4byte 0x78FD826F
	.4byte 0xAF7F17C0
	.4byte 0xEFDFBF7E
	.4byte 0xC0F92122
	.4byte 0xBC05B08A
	.4byte 0x7CBDE87A
	.4byte 0x0037E1F9
	.4byte 0x6B16FE9A
	.4byte 0x26B9BEBF
	.4byte 0x3FE22D50
	.4byte 0x45D6E767
	.4byte 0x980FCDBC
	.4byte 0x34FF697D
	.4byte 0x94F59B1D
	.4byte 0xF0FA3C78
	.4byte 0xDDB666E1
	.4byte 0xE5D97FE2
	.4byte 0x77BA0D82
	.4byte 0xEB9D1DC0
	.4byte 0x2FECAF25
	.4byte 0x0226F7FE
	.4byte 0x6E1F4F0E
	.4byte 0x443F1FA8
	.4byte 0x62FA6D13
	.4byte 0x59C2F9AD
	.4byte 0xB0BCCBA8
	.4byte 0xDFF624FE
	.4byte 0xEBF4C368
	.4byte 0xBFAD99E3
	.4byte 0x0BEA1A6C
	.4byte 0x3FBE67FF
	.4byte 0xA0FFD93F
	.4byte 0xEFEA8F90
	.4byte 0xE0333FD8
	.4byte 0x7FBD27FB
	.4byte 0xD3CE82FE
	.4byte 0xEE5CCB9A
	.4byte 0x789083FF
	.4byte 0xDF8B9FD3
	.4byte 0x3361DE80
	.4byte 0x37615EF6
	.4byte 0x9D979321
	.4byte 0x3E3D634F
	.4byte 0x9EB87EC2
	.4byte 0x6B30CA9C
	.4byte 0x5CB1EEEE
	.4byte 0xC44B64EE
	.4byte 0x3D24ACEB
	.4byte 0xF96A58D7
	.4byte 0x063ACEA3
	.4byte 0x58DE9830
	.4byte 0xCF790B49
	.4byte 0xA1CE70E2
	.4byte 0x83D83CCC
	.4byte 0x3ED3C5D2
	.4byte 0x1A3916EC
	.4byte 0x7399BDC7
	.4byte 0x9FCF9658
	.4byte 0x483AD3F2
	.4byte 0xABC5FFEE
	.4byte 0xEA84793B
	.4byte 0xFF144D31
	.4byte 0xA6E5FCF7
	.4byte 0x988ED3A1
	.4byte 0xC32584BC
	.4byte 0x39C5B4E6
	.4byte 0xB567FDB3
	.4byte 0xFD6C5DD1
	.4byte 0x1FE37721
	.4byte 0xD570C879
	.4byte 0x6043753A
	.4byte 0xDFF7F43F
	.4byte 0x607245EC
	.4byte 0xEDF15375
	.4byte 0x7FACFF11
	.4byte 0xFF7DDE54
	.4byte 0x690A63DE
	.4byte 0x6F9F973F
	.4byte 0x31A013A9
	.4byte 0x9F60388F
	.4byte 0xA28BB303
	.4byte 0x9046E9F0
	.4byte 0x88354771
	.4byte 0x1E579119
	.4byte 0xFA0E5DD1
	.4byte 0xF47C1267
	.4byte 0x943CE8B5
	.4byte 0x1303E6C9
	.4byte 0x4A8BADC7
	.4byte 0x3E8BF945
	.4byte 0xF3D78AFA
	.4byte 0x27EAB6D8
	.4byte 0x53D3F9FD
	.4byte 0x9BF33F08
	.4byte 0x8DB56DD0
	.4byte 0x9F735987
	.4byte 0x1F2DBDEA
	.4byte 0xCA82D154
	.4byte 0xEB4EB6BF
	.4byte 0x63FF89BC
	.4byte 0xBEBE0EFA
	.4byte 0xAF780BE1
	.4byte 0x75EF8147
	.4byte 0xA828AF5B
	.4byte 0xA55676FC
	.4byte 0x2513E499
	.4byte 0xBF3CDBFF
	.4byte 0xD7F57FAF
	.4byte 0x5B48A8E7
	.4byte 0xD4E63510
	.4byte 0x764B53DE
	.4byte 0x7C843B3A
	.4byte 0x7F8A9A62
	.4byte 0x5A542C2C
	.4byte 0x68A35FEA
	.4byte 0x2E770579
	.4byte 0xABD7A15C
	.4byte 0x65EF9218
	.4byte 0x34B16E69
	.4byte 0xC5CE4C1D
	.4byte 0x76BA36A0
	.4byte 0x4993410D
	.4byte 0x4C5FE35A
	.4byte 0xFC3E21CF
	.4byte 0x2B71BCA8
	.4byte 0x2C39658D
	.4byte 0xFA2BEE45
	.4byte 0x06BC6F5C
	.4byte 0xA6F3ED82
	.4byte 0xB1AE594D
	.4byte 0xEACF1F43
	.4byte 0xD2EBDA49
	.4byte 0x2E1297AA
	.4byte 0x96B30442
	.4byte 0xD6F18A9C
	.4byte 0xA39BBACF
	.4byte 0x00B31C5D
	.4byte 0xED8FCE94
	.4byte 0x5C920F2F
	.4byte 0x98AF0793
	.4byte 0xAB3EE76C
	.4byte 0xD7BFD96F
	.4byte 0xF9B9E32D
	.4byte 0xD93DADFD
	.4byte 0xF460FF47
	.4byte 0xFA2BD63F
	.4byte 0x62012F08
	.4byte 0xA8187FD2
	.4byte 0xBF954052
	.4byte 0xA48E81D5
	.4byte 0xC354F6D9
	.4byte 0xE738C3B9
	.4byte 0xEF420B2D
	.4byte 0x73FED031
	.4byte 0x47B2EE5C
	.4byte 0xDC33A542
	.4byte 0xFA3593B9
	.4byte 0x8272F4A6
	.4byte 0x2FB3CC6E
	.4byte 0xA4468EA0
	.4byte 0x36797DD7
	.4byte 0x7C031699
	.4byte 0x60AC221A
	.4byte 0xBC9766DC
	.4byte 0x133A594E
	.4byte 0x238B05B2
	.4byte 0x3A6FACC5
	.4byte 0xB79D7CBD
	.4byte 0x7670D349
	.4byte 0xBAFE25F2
	.4byte 0x8CDCFBA9
	.4byte 0x13422D2F
	.4byte 0xB20AD139
	.4byte 0xF5AE1AB4
	.4byte 0x1E3F8285
	.4byte 0x9A9CB072
	.4byte 0x28C77FC3
	.4byte 0xC9F41D61
	.4byte 0xDE97F77B
	.4byte 0x918F4DFA
	.4byte 0xBDBFA4D0
	.4byte 0xFA93C6CF
	.4byte 0x24F3DD57
	.4byte 0xD68F1DC7
	.4byte 0x4CFA61BC
	.4byte 0x5BEAFAEA
	.4byte 0xADD6140E
	.4byte 0xB8D5B3B7
	.4byte 0x382051BA
	.4byte 0xBB422FBC
	.4byte 0xF5FEAADC
	.4byte 0x59485EA8
	.4byte 0xFC9CCDA9
	.4byte 0x265767D4
	.4byte 0xDEABFE3C
	.4byte 0xF4091079
	.4byte 0x3C5177BF
	.4byte 0x271C896B
	.4byte 0xB2394EDF
	.4byte 0xBBA219DF
	.4byte 0x6D79F371
	.4byte 0x4E547580
	.4byte 0xBACDC696
	.4byte 0xA46C5C69
	.4byte 0xE32C7B9C
	.4byte 0xE8FD52E4
	.4byte 0x1355328C
	.4byte 0xF69A9538
	.4byte 0x85EC7FEF
	.4byte 0x204A6542
	.4byte 0xF9CD296C
	.4byte 0x8F3BE555
	.4byte 0x005AE723
	.4byte 0xAF48E596
	.4byte 0x1AEEB1D5
	.4byte 0x0E5C6129
	.4byte 0x4A2F21D6
	.4byte 0x42DA709E
	.4byte 0xAD18EAEF
	.4byte 0x5673ACEE
	.4byte 0xB71F6693
	.4byte 0xC1A6BB1F
	.4byte 0x0ED90397
	.4byte 0xB393FBB3
	.4byte 0xE3A317F5
	.4byte 0xD125AB91
	.4byte 0x1336C8EF
	.4byte 0xBF5B6C28
	.4byte 0x3E6C5373
	.4byte 0x7B31CE9F
	.4byte 0xEFAD229D
	.4byte 0x365586F9
	.4byte 0x70BE58FC
	.4byte 0x9BA3AB24
	.4byte 0xEDBD7F95
	.4byte 0x9FA98768
	.4byte 0x30AFA77D
	.4byte 0xBCDBB703
	.4byte 0xC878AF56
	.4byte 0xA4CF4D27
	.4byte 0x72E3781D
	.4byte 0xFFEFE461
	.4byte 0xC0AE9F08
	.4byte 0x4EB8CF74
	.4byte 0x61C37B4E
	.4byte 0x1CE52E1A
	.4byte 0xD38D63C1
	.4byte 0xFD7ADBC0
	.4byte 0xD51B8DFB
	.4byte 0x5EC7BBD5
	.4byte 0x36A71234
	.4byte 0xCEA22EAE
	.4byte 0xE21D6BE8
	.4byte 0xA5A3600D
	.4byte 0x10450195
	.4byte 0x7BDAA6A7
	.4byte 0xA27CB71E
	.4byte 0xA4CC57CC
	.4byte 0x2FCF5254
	.4byte 0x8C770F35
	.4byte 0xF1B3E27D
	.4byte 0x5567D3C3
	.4byte 0x15CF111B
	.4byte 0x03FF8840
	.4byte 0x7C9CFFF5
	.4byte 0x7C3D5FCF
	.4byte 0x7FFBFC01
	.4byte 0x92D9BE26

# CGameArchitectureSupport
.global lbl_803CBE4C
lbl_803CBE4C:
	# ROM: 0x3C8E4C
	.4byte s_Misc_AGSC
	.4byte 0x27000000
	.4byte s_MiscSamus_AGSC
	.4byte 0x29000000
	.4byte s_UI_AGSC
	.4byte 0x28000000
	.4byte s_Weapons_AGSC
	.4byte 0x2B000000
	.4byte s_ZZZ_AGSC
	.float 8.0

# CMain
.global lbl_803CBE74
lbl_803CBE74:
	# ROM: 0x3C8E74
s_Misc_AGSC:
	.asciz "Misc_AGSC"
s_MiscSamus_AGSC:
	.asciz "MiscSamus_AGSC"
s_UI_AGSC:
	.asciz "UI_AGSC"
s_Weapons_AGSC:
	.asciz "Weapons_AGSC"
s_ZZZ_AGSC:
	.asciz "ZZZ_AGSC"
	.asciz "??(??)"
	.asciz ""
	.asciz "%d"
	.asciz ".pak"
	.asciz "AudioTweaks"
	.asciz "Loaded audio tweaks from memory card\n"
	.asciz "FAILED to load audio tweaks from memory card\n"
	.asciz "aram:Tweaks"
	.asciz "NoARAM"
	.asciz "AudioGrp"
	.asciz "aram:MiscData"
	.asciz "aram:SamusGun"
	.asciz "aram:TestAnim"
	.asciz "aram:SamGunFx"
	.asciz "aram:MidiData"
	.asciz "aram:GGuiSys"
	.asciz "sound_lookup"
	.asciz "INFINITE LOOP"
	.asciz "STRG_Main"
	.asciz "Initializing renderer...\n"
	.asciz "Stack usage: %d bytes (%dk)\n"
	.asciz "Protecting stack...  "
	.asciz "Stack: 0x%8.8x down to 0x%8.8x\n"
	.asciz "Metaforce"
	.balign 4


.section .sdata, "wa"
.balign 8
.global lbl_805A6BC0
lbl_805A6BC0:
	# ROM: 0x3F4560
	.byte 1
  .balign 4

.global lbl_805A6BC4
lbl_805A6BC4:
	# ROM: 0x3F4564
	.4byte 0x000F4240

.global lbl_805A6BC8
lbl_805A6BC8:
	# ROM: 0x3F4568
	.float 0.3

.global lbl_805A6BCC
lbl_805A6BCC:
	# ROM: 0x3F456C
	.float 0.2


.section .sbss, "wa"
.balign 8
.global gpResourceFactory
gpResourceFactory:
	.skip 0x4
.global gpSimplePool
gpSimplePool:
	.skip 0x4
.global gpRender
gpRender:
	.skip 0x4
.global gpCharacterFactoryBuilder
gpCharacterFactoryBuilder:
	.skip 0x4
.global gGuiSystem
gGuiSystem:
	.skip 0x4
.global gpStringTable
gpStringTable:
	.skip 0x4
.global gpMain
gpMain:
	.skip 0x4
.global gpController
gpController:
	.skip 0x4
.global gpGameState
gpGameState:
	.skip 0x4
.global gpMemoryCard
gpMemoryCard:
	.skip 0x4
.global gpTweakManager
gpTweakManager:
	.skip 0x4
.global gpDefaultFont
gpDefaultFont:
	.skip 0x4
.global lbl_805A8C50
lbl_805A8C50:
	.skip 0x4
.global lbl_805A8C54
lbl_805A8C54:
	.skip 0x4
.global lbl_805A8C58
lbl_805A8C58:
	.skip 0x4
.global sARAMMemArray
sARAMMemArray:
	.skip 0x8

# CGameArchitectureSupport
.global lbl_805A8C64
lbl_805A8C64:
	.skip 0x4

# TOneStatic<CGameArchitectureSupport>
.global lbl_805A8C68
lbl_805A8C68:
	.skip 0x4
.global lbl_805A8C6C
lbl_805A8C6C:
	.skip 0x4

# TOneStatic<CGameGlobalObjects>
.global lbl_805A8C70
lbl_805A8C70:
	.skip 0x4
.global lbl_805A8C74
lbl_805A8C74:
	.skip 0x4

.section .sdata2, "a"
.balign 8
.global lbl_805A9D20
lbl_805A9D20:
	# ROM: 0x3F65C0
	.4byte 0x3C888889

.global lbl_805A9D24
lbl_805A9D24:
	# ROM: 0x3F65C4
	.float 0.3

.global lbl_805A9D28
lbl_805A9D28:
	# ROM: 0x3F65C8
	.float 0.2
	.4byte 0

.global lbl_805A9D30
lbl_805A9D30:
	# ROM: 0x3F65D0
	.4byte 0x3F911111
	.4byte 0x20000000

.global lbl_805A9D38
lbl_805A9D38:
	# ROM: 0x3F65D8
	.4byte 0x3F489374
	.4byte 0xBC6A7EFA

.global lbl_805A9D40
lbl_805A9D40:
	# ROM: 0x3F65E0
	.4byte 0x412E8480
	.4byte 0

.global lbl_805A9D48
lbl_805A9D48:
	# ROM: 0x3F65E8
	.4byte 0
	.4byte 0

.global lbl_805A9D50
lbl_805A9D50:
	# ROM: 0x3F65F0
	.float 0.5

.global lbl_805A9D54
lbl_805A9D54:
	# ROM: 0x3F65F4
	.4byte 0

.global lbl_805A9D58
lbl_805A9D58:
	# ROM: 0x3F65F8
	.4byte 0x3C888889

.global lbl_805A9D5C
lbl_805A9D5C:
	# ROM: 0x3F65FC
	.4byte 0x3D0F5C29

.global lbl_805A9D60
lbl_805A9D60:
	# ROM: 0x3F6600
	.4byte 0x3F0A36E2
	.4byte 0xE0000000

.global lbl_805A9D68
lbl_805A9D68:
	# ROM: 0x3F6608
	.float 5.0

.global lbl_805A9D6C
lbl_805A9D6C:
	# ROM: 0x3F660C
	.float 0.75

.global lbl_805A9D70
lbl_805A9D70:
	# ROM: 0x3F6610
	.4byte 0x43300000
	.4byte 0

.global lbl_805A9D78
lbl_805A9D78:
	# ROM: 0x3F6618
	.4byte 0x41200000

.global lbl_805A9D7C
lbl_805A9D7C:
	# ROM: 0x3F661C
	.float 1.0

.global lbl_805A9D80
lbl_805A9D80:
	# ROM: 0x3F6620
	.double 4.503601774854144E15

.section .text, "ax"

.global UpdateStreamedAudio__5CMainFv
UpdateStreamedAudio__5CMainFv:
/* 80003658 000005B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000365C 000005BC  7C 08 02 A6 */	mflr r0
/* 80003660 000005C0  C0 22 80 00 */	lfs f1, lbl_805A9D20@sda21(r2)
/* 80003664 000005C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003668 000005C8  48 36 25 C1 */	bl Update__19CStreamAudioManagerFf
/* 8000366C 000005CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80003670 000005D0  7C 08 03 A6 */	mtlr r0
/* 80003674 000005D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80003678 000005D8  4E 80 00 20 */	blr

.global RegisterResourceTweaks__5CMainFv
RegisterResourceTweaks__5CMainFv:
/* 8000367C 000005DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80003680 000005E0  7C 08 02 A6 */	mflr r0
/* 80003684 000005E4  38 63 00 70 */	addi r3, r3, 0x70
/* 80003688 000005E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000368C 000005EC  48 03 22 FD */	bl RegisterResourceTweaks__7CTweaksFv
/* 80003690 000005F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80003694 000005F4  7C 08 03 A6 */	mtlr r0
/* 80003698 000005F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8000369C 000005FC  4E 80 00 20 */	blr

.global ResetGameState__5CMainFv
ResetGameState__5CMainFv:
/* 800036A0 00000600  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 800036A4 00000604  7C 08 02 A6 */	mflr r0
/* 800036A8 00000608  90 01 01 64 */	stw r0, 0x164(r1)
/* 800036AC 0000060C  93 E1 01 5C */	stw r31, 0x15c(r1)
/* 800036B0 00000610  7C 7F 1B 78 */	mr r31, r3
/* 800036B4 00000614  38 61 00 84 */	addi r3, r1, 0x84
/* 800036B8 00000618  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 800036BC 0000061C  38 84 00 A8 */	addi r4, r4, 0xa8
/* 800036C0 00000620  48 00 0C 65 */	bl __ct__14CSystemOptionsFRC14CSystemOptions
/* 800036C4 00000624  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 800036C8 00000628  38 61 00 08 */	addi r3, r1, 8
/* 800036CC 0000062C  38 84 01 7C */	addi r4, r4, 0x17c
/* 800036D0 00000630  48 00 09 A5 */	bl __ct__12CGameOptionsFRC12CGameOptions
/* 800036D4 00000634  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 800036D8 00000638  38 80 00 00 */	li r4, 0
/* 800036DC 0000063C  38 63 01 34 */	addi r3, r3, 0x134
/* 800036E0 00000640  48 00 05 A9 */	bl "__as__Q24rstl24single_ptr<10CGameState>FP10CGameState"
/* 800036E4 00000644  38 00 00 00 */	li r0, 0
/* 800036E8 00000648  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 800036EC 0000064C  38 63 BE 74 */	addi r3, r3, lbl_803CBE74@l
/* 800036F0 00000650  90 0D A0 80 */	stw r0, gpGameState@sda21(r13)
/* 800036F4 00000654  38 83 00 37 */	addi r4, r3, 0x37
/* 800036F8 00000658  38 60 02 30 */	li r3, 0x230
/* 800036FC 0000065C  38 A0 00 00 */	li r5, 0
/* 80003700 00000660  48 31 21 6D */	bl __nw__FUlPCcPCc
/* 80003704 00000664  7C 64 1B 79 */	or. r4, r3, r3
/* 80003708 00000668  41 82 00 0C */	beq lbl_80003714
/* 8000370C 0000066C  48 1D 14 2D */	bl __ct__10CGameStateFv
/* 80003710 00000670  7C 64 1B 78 */	mr r4, r3
lbl_80003714:
/* 80003714 00000674  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 80003718 00000678  38 63 01 34 */	addi r3, r3, 0x134
/* 8000371C 0000067C  48 00 05 6D */	bl "__as__Q24rstl24single_ptr<10CGameState>FP10CGameState"
/* 80003720 00000680  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 80003724 00000684  38 81 00 84 */	addi r4, r1, 0x84
/* 80003728 00000688  80 63 01 34 */	lwz r3, 0x134(r3)
/* 8000372C 0000068C  90 6D A0 80 */	stw r3, gpGameState@sda21(r13)
/* 80003730 00000690  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80003734 00000694  48 00 02 99 */	bl __as__14CSystemOptionsFRC14CSystemOptions
/* 80003738 00000698  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8000373C 0000069C  38 81 00 08 */	addi r4, r1, 8
/* 80003740 000006A0  38 63 01 7C */	addi r3, r3, 0x17c
/* 80003744 000006A4  48 00 00 5D */	bl __as__12CGameOptionsFRC12CGameOptions
/* 80003748 000006A8  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8000374C 000006AC  38 63 01 7C */	addi r3, r3, 0x17c
/* 80003750 000006B0  48 20 B9 AD */	bl EnsureOptions__12CGameOptionsFv
/* 80003754 000006B4  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80003758 000006B8  88 03 01 78 */	lbz r0, 0x178(r3)
/* 8000375C 000006BC  54 1F EF FE */	rlwinm r31, r0, 0x1d, 0x1f, 0x1f
/* 80003760 000006C0  48 1D 01 DD */	bl PlayerState__10CGameStateFv
/* 80003764 000006C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80003768 000006C8  7F E4 FB 78 */	mr r4, r31
/* 8000376C 000006CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80003770 000006D0  48 08 DD 45 */	bl SetIsFusionEnabled__12CPlayerStateFb
/* 80003774 000006D4  38 61 00 08 */	addi r3, r1, 8
/* 80003778 000006D8  38 80 FF FF */	li r4, -1
/* 8000377C 000006DC  48 00 08 09 */	bl __dt__12CGameOptionsFv
/* 80003780 000006E0  38 61 00 84 */	addi r3, r1, 0x84
/* 80003784 000006E4  38 80 FF FF */	li r4, -1
/* 80003788 000006E8  48 00 0A 51 */	bl __dt__14CSystemOptionsFv
/* 8000378C 000006EC  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80003790 000006F0  83 E1 01 5C */	lwz r31, 0x15c(r1)
/* 80003794 000006F4  7C 08 03 A6 */	mtlr r0
/* 80003798 000006F8  38 21 01 60 */	addi r1, r1, 0x160
/* 8000379C 000006FC  4E 80 00 20 */	blr

.global __as__12CGameOptionsFRC12CGameOptions
__as__12CGameOptionsFRC12CGameOptions:
/* 800037A0 00000700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800037A4 00000704  7C 08 02 A6 */	mflr r0
/* 800037A8 00000708  7C 86 23 78 */	mr r6, r4
/* 800037AC 0000070C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800037B0 00000710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800037B4 00000714  7C 7F 1B 78 */	mr r31, r3
/* 800037B8 00000718  7C 1F 30 40 */	cmplw r31, r6
/* 800037BC 0000071C  41 82 00 A0 */	beq lbl_8000385C
/* 800037C0 00000720  80 BF 00 00 */	lwz r5, 0(r31)
/* 800037C4 00000724  38 60 00 00 */	li r3, 0
/* 800037C8 00000728  2C 05 00 00 */	cmpwi r5, 0
/* 800037CC 0000072C  40 81 00 40 */	ble lbl_8000380C
/* 800037D0 00000730  2C 05 00 08 */	cmpwi r5, 8
/* 800037D4 00000734  38 85 FF F8 */	addi r4, r5, -8
/* 800037D8 00000738  40 81 00 20 */	ble lbl_800037F8
/* 800037DC 0000073C  38 04 00 07 */	addi r0, r4, 7
/* 800037E0 00000740  54 00 E8 FE */	srwi r0, r0, 3
/* 800037E4 00000744  7C 09 03 A6 */	mtctr r0
/* 800037E8 00000748  2C 04 00 00 */	cmpwi r4, 0
/* 800037EC 0000074C  40 81 00 0C */	ble lbl_800037F8
lbl_800037F0:
/* 800037F0 00000750  38 63 00 08 */	addi r3, r3, 8
/* 800037F4 00000754  42 00 FF FC */	bdnz lbl_800037F0
lbl_800037F8:
/* 800037F8 00000758  7C 03 28 50 */	subf r0, r3, r5
/* 800037FC 0000075C  7C 09 03 A6 */	mtctr r0
/* 80003800 00000760  7C 03 28 00 */	cmpw r3, r5
/* 80003804 00000764  40 80 00 08 */	bge lbl_8000380C
lbl_80003808:
/* 80003808 00000768  42 00 00 00 */	bdnz lbl_80003808
lbl_8000380C:
/* 8000380C 0000076C  38 00 00 00 */	li r0, 0
/* 80003810 00000770  38 66 00 04 */	addi r3, r6, 4
/* 80003814 00000774  90 1F 00 00 */	stw r0, 0(r31)
/* 80003818 00000778  38 9F 00 04 */	addi r4, r31, 4
/* 8000381C 0000077C  80 06 00 00 */	lwz r0, 0(r6)
/* 80003820 00000780  7C A6 02 14 */	add r5, r6, r0
/* 80003824 00000784  38 A5 00 04 */	addi r5, r5, 4
/* 80003828 00000788  7C 03 28 50 */	subf r0, r3, r5
/* 8000382C 0000078C  7C 09 03 A6 */	mtctr r0
/* 80003830 00000790  7C 03 28 40 */	cmplw r3, r5
/* 80003834 00000794  41 82 00 20 */	beq lbl_80003854
lbl_80003838:
/* 80003838 00000798  28 04 00 00 */	cmplwi r4, 0
/* 8000383C 0000079C  41 82 00 0C */	beq lbl_80003848
/* 80003840 000007A0  88 03 00 00 */	lbz r0, 0(r3)
/* 80003844 000007A4  98 04 00 00 */	stb r0, 0(r4)
lbl_80003848:
/* 80003848 000007A8  38 84 00 01 */	addi r4, r4, 1
/* 8000384C 000007AC  38 63 00 01 */	addi r3, r3, 1
/* 80003850 000007B0  42 00 FF E8 */	bdnz lbl_80003838
lbl_80003854:
/* 80003854 000007B4  80 06 00 00 */	lwz r0, 0(r6)
/* 80003858 000007B8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8000385C:
/* 8000385C 000007BC  80 06 00 44 */	lwz r0, 0x44(r6)
/* 80003860 000007C0  38 7F 00 6C */	addi r3, r31, 0x6c
/* 80003864 000007C4  38 86 00 6C */	addi r4, r6, 0x6c
/* 80003868 000007C8  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8000386C 000007CC  80 06 00 48 */	lwz r0, 0x48(r6)
/* 80003870 000007D0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80003874 000007D4  80 06 00 4C */	lwz r0, 0x4c(r6)
/* 80003878 000007D8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8000387C 000007DC  80 06 00 50 */	lwz r0, 0x50(r6)
/* 80003880 000007E0  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80003884 000007E4  80 06 00 54 */	lwz r0, 0x54(r6)
/* 80003888 000007E8  90 1F 00 54 */	stw r0, 0x54(r31)
/* 8000388C 000007EC  80 06 00 58 */	lwz r0, 0x58(r6)
/* 80003890 000007F0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80003894 000007F4  80 06 00 5C */	lwz r0, 0x5c(r6)
/* 80003898 000007F8  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8000389C 000007FC  80 06 00 60 */	lwz r0, 0x60(r6)
/* 800038A0 00000800  90 1F 00 60 */	stw r0, 0x60(r31)
/* 800038A4 00000804  80 06 00 64 */	lwz r0, 0x64(r6)
/* 800038A8 00000808  90 1F 00 64 */	stw r0, 0x64(r31)
/* 800038AC 0000080C  88 06 00 68 */	lbz r0, 0x68(r6)
/* 800038B0 00000810  98 1F 00 68 */	stb r0, 0x68(r31)
/* 800038B4 00000814  48 00 00 1D */	bl "__as__Q24rstl55vector<Q24rstl11pair<Ui,Ui>,Q24rstl17rmemory_allocator>FRCQ24rstl55vector<Q24rstl11pair<Ui,Ui>,Q24rstl17rmemory_allocator>"
/* 800038B8 00000818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800038BC 0000081C  7F E3 FB 78 */	mr r3, r31
/* 800038C0 00000820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800038C4 00000824  7C 08 03 A6 */	mtlr r0
/* 800038C8 00000828  38 21 00 10 */	addi r1, r1, 0x10
/* 800038CC 0000082C  4E 80 00 20 */	blr

.global "__as__Q24rstl55vector<Q24rstl11pair<Ui,Ui>,Q24rstl17rmemory_allocator>FRCQ24rstl55vector<Q24rstl11pair<Ui,Ui>,Q24rstl17rmemory_allocator>" # vector<SScanState,rstl::rmemory_allocator>
"__as__Q24rstl55vector<Q24rstl11pair<Ui,Ui>,Q24rstl17rmemory_allocator>FRCQ24rstl55vector<Q24rstl11pair<Ui,Ui>,Q24rstl17rmemory_allocator>":
/* 800038D0 00000830  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800038D4 00000834  7C 08 02 A6 */	mflr r0
/* 800038D8 00000838  90 01 00 24 */	stw r0, 0x24(r1)
/* 800038DC 0000083C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800038E0 00000840  7C 7F 1B 78 */	mr r31, r3
/* 800038E4 00000844  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800038E8 00000848  7C 9E 23 78 */	mr r30, r4
/* 800038EC 0000084C  7C 1F F0 40 */	cmplw r31, r30
/* 800038F0 00000850  40 82 00 08 */	bne lbl_800038F8
/* 800038F4 00000854  48 00 00 C0 */	b lbl_800039B4
lbl_800038F8:
/* 800038F8 00000858  80 1F 00 04 */	lwz r0, 4(r31)
/* 800038FC 0000085C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80003900 00000860  54 00 18 38 */	slwi r0, r0, 3
/* 80003904 00000864  7C 03 02 14 */	add r0, r3, r0
/* 80003908 00000868  90 61 00 0C */	stw r3, 0xc(r1)
/* 8000390C 0000086C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003910 00000870  90 01 00 10 */	stw r0, 0x10(r1)
/* 80003914 00000874  90 61 00 08 */	stw r3, 8(r1)
/* 80003918 00000878  48 00 00 08 */	b lbl_80003920
lbl_8000391C:
/* 8000391C 0000087C  38 63 00 08 */	addi r3, r3, 8
lbl_80003920:
/* 80003920 00000880  7C 03 00 40 */	cmplw r3, r0
/* 80003924 00000884  40 82 FF F8 */	bne lbl_8000391C
/* 80003928 00000888  38 00 00 00 */	li r0, 0
/* 8000392C 0000088C  90 1F 00 04 */	stw r0, 4(r31)
/* 80003930 00000890  80 9E 00 04 */	lwz r4, 4(r30)
/* 80003934 00000894  2C 04 00 00 */	cmpwi r4, 0
/* 80003938 00000898  40 82 00 28 */	bne lbl_80003960
/* 8000393C 0000089C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80003940 000008A0  28 03 00 00 */	cmplwi r3, 0
/* 80003944 000008A4  41 82 00 08 */	beq lbl_8000394C
/* 80003948 000008A8  48 31 1F E9 */	bl Free__7CMemoryFPCv
lbl_8000394C:
/* 8000394C 000008AC  38 00 00 00 */	li r0, 0
/* 80003950 000008B0  90 1F 00 04 */	stw r0, 4(r31)
/* 80003954 000008B4  90 1F 00 08 */	stw r0, 8(r31)
/* 80003958 000008B8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8000395C 000008BC  48 00 00 54 */	b lbl_800039B0
lbl_80003960:
/* 80003960 000008C0  7F E3 FB 78 */	mr r3, r31
/* 80003964 000008C4  48 00 50 E9 */	bl "reserve__Q24rstl55vector<Q24rstl11pair<Ui,Ui>,Q24rstl17rmemory_allocator>Fi"
/* 80003968 000008C8  80 1E 00 04 */	lwz r0, 4(r30)
/* 8000396C 000008CC  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80003970 000008D0  54 00 18 38 */	slwi r0, r0, 3
/* 80003974 000008D4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80003978 000008D8  7C 85 02 14 */	add r4, r5, r0
/* 8000397C 000008DC  48 00 00 24 */	b lbl_800039A0
lbl_80003980:
/* 80003980 000008E0  28 03 00 00 */	cmplwi r3, 0
/* 80003984 000008E4  41 82 00 14 */	beq lbl_80003998
/* 80003988 000008E8  80 05 00 00 */	lwz r0, 0(r5)
/* 8000398C 000008EC  90 03 00 00 */	stw r0, 0(r3)
/* 80003990 000008F0  80 05 00 04 */	lwz r0, 4(r5)
/* 80003994 000008F4  90 03 00 04 */	stw r0, 4(r3)
lbl_80003998:
/* 80003998 000008F8  38 63 00 08 */	addi r3, r3, 8
/* 8000399C 000008FC  38 A5 00 08 */	addi r5, r5, 8
lbl_800039A0:
/* 800039A0 00000900  7C 05 20 40 */	cmplw r5, r4
/* 800039A4 00000904  40 82 FF DC */	bne lbl_80003980
/* 800039A8 00000908  80 1E 00 04 */	lwz r0, 4(r30)
/* 800039AC 0000090C  90 1F 00 04 */	stw r0, 4(r31)
lbl_800039B0:
/* 800039B0 00000910  7F E3 FB 78 */	mr r3, r31
lbl_800039B4:
/* 800039B4 00000914  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800039B8 00000918  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800039BC 0000091C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800039C0 00000920  7C 08 03 A6 */	mtlr r0
/* 800039C4 00000924  38 21 00 20 */	addi r1, r1, 0x20
/* 800039C8 00000928  4E 80 00 20 */	blr

.global __as__14CSystemOptionsFRC14CSystemOptions
__as__14CSystemOptionsFRC14CSystemOptions:
/* 800039CC 0000092C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800039D0 00000930  7C 08 02 A6 */	mflr r0
/* 800039D4 00000934  90 01 00 14 */	stw r0, 0x14(r1)
/* 800039D8 00000938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800039DC 0000093C  7C 9F 23 78 */	mr r31, r4
/* 800039E0 00000940  93 C1 00 08 */	stw r30, 8(r1)
/* 800039E4 00000944  7C 7E 1B 78 */	mr r30, r3
/* 800039E8 00000948  7C 1E F8 40 */	cmplw r30, r31
/* 800039EC 0000094C  41 82 00 A0 */	beq lbl_80003A8C
/* 800039F0 00000950  80 BE 00 00 */	lwz r5, 0(r30)
/* 800039F4 00000954  38 60 00 00 */	li r3, 0
/* 800039F8 00000958  2C 05 00 00 */	cmpwi r5, 0
/* 800039FC 0000095C  40 81 00 40 */	ble lbl_80003A3C
/* 80003A00 00000960  2C 05 00 08 */	cmpwi r5, 8
/* 80003A04 00000964  38 85 FF F8 */	addi r4, r5, -8
/* 80003A08 00000968  40 81 00 20 */	ble lbl_80003A28
/* 80003A0C 0000096C  38 04 00 07 */	addi r0, r4, 7
/* 80003A10 00000970  54 00 E8 FE */	srwi r0, r0, 3
/* 80003A14 00000974  7C 09 03 A6 */	mtctr r0
/* 80003A18 00000978  2C 04 00 00 */	cmpwi r4, 0
/* 80003A1C 0000097C  40 81 00 0C */	ble lbl_80003A28
lbl_80003A20:
/* 80003A20 00000980  38 63 00 08 */	addi r3, r3, 8
/* 80003A24 00000984  42 00 FF FC */	bdnz lbl_80003A20
lbl_80003A28:
/* 80003A28 00000988  7C 03 28 50 */	subf r0, r3, r5
/* 80003A2C 0000098C  7C 09 03 A6 */	mtctr r0
/* 80003A30 00000990  7C 03 28 00 */	cmpw r3, r5
/* 80003A34 00000994  40 80 00 08 */	bge lbl_80003A3C
lbl_80003A38:
/* 80003A38 00000998  42 00 00 00 */	bdnz lbl_80003A38
lbl_80003A3C:
/* 80003A3C 0000099C  38 00 00 00 */	li r0, 0
/* 80003A40 000009A0  38 7F 00 04 */	addi r3, r31, 4
/* 80003A44 000009A4  90 1E 00 00 */	stw r0, 0(r30)
/* 80003A48 000009A8  38 9E 00 04 */	addi r4, r30, 4
/* 80003A4C 000009AC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80003A50 000009B0  7C BF 02 14 */	add r5, r31, r0
/* 80003A54 000009B4  38 A5 00 04 */	addi r5, r5, 4
/* 80003A58 000009B8  7C 03 28 50 */	subf r0, r3, r5
/* 80003A5C 000009BC  7C 09 03 A6 */	mtctr r0
/* 80003A60 000009C0  7C 03 28 40 */	cmplw r3, r5
/* 80003A64 000009C4  41 82 00 20 */	beq lbl_80003A84
lbl_80003A68:
/* 80003A68 000009C8  28 04 00 00 */	cmplwi r4, 0
/* 80003A6C 000009CC  41 82 00 0C */	beq lbl_80003A78
/* 80003A70 000009D0  88 03 00 00 */	lbz r0, 0(r3)
/* 80003A74 000009D4  98 04 00 00 */	stb r0, 0(r4)
lbl_80003A78:
/* 80003A78 000009D8  38 84 00 01 */	addi r4, r4, 1
/* 80003A7C 000009DC  38 63 00 01 */	addi r3, r3, 1
/* 80003A80 000009E0  42 00 FF E8 */	bdnz lbl_80003A68
lbl_80003A84:
/* 80003A84 000009E4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80003A88 000009E8  90 1E 00 00 */	stw r0, 0(r30)
lbl_80003A8C:
/* 80003A8C 000009EC  38 7E 00 68 */	addi r3, r30, 0x68
/* 80003A90 000009F0  38 1F 00 68 */	addi r0, r31, 0x68
/* 80003A94 000009F4  7C 03 00 40 */	cmplw r3, r0
/* 80003A98 000009F8  41 82 00 9C */	beq lbl_80003B34
/* 80003A9C 000009FC  80 BE 00 68 */	lwz r5, 0x68(r30)
/* 80003AA0 00000A00  38 DE 00 6C */	addi r6, r30, 0x6c
/* 80003AA4 00000A04  38 60 00 00 */	li r3, 0
/* 80003AA8 00000A08  2C 05 00 00 */	cmpwi r5, 0
/* 80003AAC 00000A0C  40 81 00 40 */	ble lbl_80003AEC
/* 80003AB0 00000A10  2C 05 00 08 */	cmpwi r5, 8
/* 80003AB4 00000A14  38 85 FF F8 */	addi r4, r5, -8
/* 80003AB8 00000A18  40 81 00 20 */	ble lbl_80003AD8
/* 80003ABC 00000A1C  38 04 00 07 */	addi r0, r4, 7
/* 80003AC0 00000A20  54 00 E8 FE */	srwi r0, r0, 3
/* 80003AC4 00000A24  7C 09 03 A6 */	mtctr r0
/* 80003AC8 00000A28  2C 04 00 00 */	cmpwi r4, 0
/* 80003ACC 00000A2C  40 81 00 0C */	ble lbl_80003AD8
lbl_80003AD0:
/* 80003AD0 00000A30  38 63 00 08 */	addi r3, r3, 8
/* 80003AD4 00000A34  42 00 FF FC */	bdnz lbl_80003AD0
lbl_80003AD8:
/* 80003AD8 00000A38  7C 03 28 50 */	subf r0, r3, r5
/* 80003ADC 00000A3C  7C 09 03 A6 */	mtctr r0
/* 80003AE0 00000A40  7C 03 28 00 */	cmpw r3, r5
/* 80003AE4 00000A44  40 80 00 08 */	bge lbl_80003AEC
lbl_80003AE8:
/* 80003AE8 00000A48  42 00 00 00 */	bdnz lbl_80003AE8
lbl_80003AEC:
/* 80003AEC 00000A4C  38 00 00 00 */	li r0, 0
/* 80003AF0 00000A50  38 9F 00 6C */	addi r4, r31, 0x6c
/* 80003AF4 00000A54  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80003AF8 00000A58  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80003AFC 00000A5C  7C 64 02 14 */	add r3, r4, r0
/* 80003B00 00000A60  7C 04 18 50 */	subf r0, r4, r3
/* 80003B04 00000A64  7C 09 03 A6 */	mtctr r0
/* 80003B08 00000A68  7C 04 18 40 */	cmplw r4, r3
/* 80003B0C 00000A6C  41 82 00 20 */	beq lbl_80003B2C
lbl_80003B10:
/* 80003B10 00000A70  28 06 00 00 */	cmplwi r6, 0
/* 80003B14 00000A74  41 82 00 0C */	beq lbl_80003B20
/* 80003B18 00000A78  88 04 00 00 */	lbz r0, 0(r4)
/* 80003B1C 00000A7C  98 06 00 00 */	stb r0, 0(r6)
lbl_80003B20:
/* 80003B20 00000A80  38 C6 00 01 */	addi r6, r6, 1
/* 80003B24 00000A84  38 84 00 01 */	addi r4, r4, 1
/* 80003B28 00000A88  42 00 FF E8 */	bdnz lbl_80003B10
lbl_80003B2C:
/* 80003B2C 00000A8C  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80003B30 00000A90  90 1E 00 68 */	stw r0, 0x68(r30)
lbl_80003B34:
/* 80003B34 00000A94  38 7E 00 AC */	addi r3, r30, 0xac
/* 80003B38 00000A98  38 9F 00 AC */	addi r4, r31, 0xac
/* 80003B3C 00000A9C  48 00 00 51 */	bl sub_80003b8c
/* 80003B40 00000AA0  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 80003B44 00000AA4  7F C3 F3 78 */	mr r3, r30
/* 80003B48 00000AA8  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 80003B4C 00000AAC  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80003B50 00000AB0  90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 80003B54 00000AB4  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80003B58 00000AB8  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 80003B5C 00000ABC  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80003B60 00000AC0  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 80003B64 00000AC4  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80003B68 00000AC8  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 80003B6C 00000ACC  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 80003B70 00000AD0  98 1E 00 D0 */	stb r0, 0xd0(r30)
/* 80003B74 00000AD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80003B78 00000AD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80003B7C 00000ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80003B80 00000AE0  7C 08 03 A6 */	mtlr r0
/* 80003B84 00000AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80003B88 00000AE8  4E 80 00 20 */	blr

.global sub_80003b8c # __dt__?
sub_80003b8c:
/* 80003B8C 00000AEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80003B90 00000AF0  7C 08 02 A6 */	mflr r0
/* 80003B94 00000AF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80003B98 00000AF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80003B9C 00000AFC  7C 7F 1B 78 */	mr r31, r3
/* 80003BA0 00000B00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80003BA4 00000B04  7C 9E 23 78 */	mr r30, r4
/* 80003BA8 00000B08  7C 1F F0 40 */	cmplw r31, r30
/* 80003BAC 00000B0C  40 82 00 08 */	bne lbl_80003BB4
/* 80003BB0 00000B10  48 00 00 C0 */	b lbl_80003C70
lbl_80003BB4:
/* 80003BB4 00000B14  80 1F 00 04 */	lwz r0, 4(r31)
/* 80003BB8 00000B18  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80003BBC 00000B1C  54 00 18 38 */	slwi r0, r0, 3
/* 80003BC0 00000B20  7C 03 02 14 */	add r0, r3, r0
/* 80003BC4 00000B24  90 61 00 0C */	stw r3, 0xc(r1)
/* 80003BC8 00000B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003BCC 00000B2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80003BD0 00000B30  90 61 00 08 */	stw r3, 8(r1)
/* 80003BD4 00000B34  48 00 00 08 */	b lbl_80003BDC
lbl_80003BD8:
/* 80003BD8 00000B38  38 63 00 08 */	addi r3, r3, 8
lbl_80003BDC:
/* 80003BDC 00000B3C  7C 03 00 40 */	cmplw r3, r0
/* 80003BE0 00000B40  40 82 FF F8 */	bne lbl_80003BD8
/* 80003BE4 00000B44  38 00 00 00 */	li r0, 0
/* 80003BE8 00000B48  90 1F 00 04 */	stw r0, 4(r31)
/* 80003BEC 00000B4C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80003BF0 00000B50  2C 04 00 00 */	cmpwi r4, 0
/* 80003BF4 00000B54  40 82 00 28 */	bne lbl_80003C1C
/* 80003BF8 00000B58  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80003BFC 00000B5C  28 03 00 00 */	cmplwi r3, 0
/* 80003C00 00000B60  41 82 00 08 */	beq lbl_80003C08
/* 80003C04 00000B64  48 31 1D 2D */	bl Free__7CMemoryFPCv
lbl_80003C08:
/* 80003C08 00000B68  38 00 00 00 */	li r0, 0
/* 80003C0C 00000B6C  90 1F 00 04 */	stw r0, 4(r31)
/* 80003C10 00000B70  90 1F 00 08 */	stw r0, 8(r31)
/* 80003C14 00000B74  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80003C18 00000B78  48 00 00 54 */	b lbl_80003C6C
lbl_80003C1C:
/* 80003C1C 00000B7C  7F E3 FB 78 */	mr r3, r31
/* 80003C20 00000B80  48 00 4F 25 */	bl sub_80008b44
/* 80003C24 00000B84  80 1E 00 04 */	lwz r0, 4(r30)
/* 80003C28 00000B88  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80003C2C 00000B8C  54 00 18 38 */	slwi r0, r0, 3
/* 80003C30 00000B90  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80003C34 00000B94  7C 85 02 14 */	add r4, r5, r0
/* 80003C38 00000B98  48 00 00 24 */	b lbl_80003C5C
lbl_80003C3C:
/* 80003C3C 00000B9C  28 03 00 00 */	cmplwi r3, 0
/* 80003C40 00000BA0  41 82 00 14 */	beq lbl_80003C54
/* 80003C44 00000BA4  80 05 00 00 */	lwz r0, 0(r5)
/* 80003C48 00000BA8  90 03 00 00 */	stw r0, 0(r3)
/* 80003C4C 00000BAC  80 05 00 04 */	lwz r0, 4(r5)
/* 80003C50 00000BB0  90 03 00 04 */	stw r0, 4(r3)
lbl_80003C54:
/* 80003C54 00000BB4  38 63 00 08 */	addi r3, r3, 8
/* 80003C58 00000BB8  38 A5 00 08 */	addi r5, r5, 8
lbl_80003C5C:
/* 80003C5C 00000BBC  7C 05 20 40 */	cmplw r5, r4
/* 80003C60 00000BC0  40 82 FF DC */	bne lbl_80003C3C
/* 80003C64 00000BC4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80003C68 00000BC8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80003C6C:
/* 80003C6C 00000BCC  7F E3 FB 78 */	mr r3, r31
lbl_80003C70:
/* 80003C70 00000BD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80003C74 00000BD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80003C78 00000BD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80003C7C 00000BDC  7C 08 03 A6 */	mtlr r0
/* 80003C80 00000BE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80003C84 00000BE4  4E 80 00 20 */	blr

.global "__as__Q24rstl24single_ptr<10CGameState>FP10CGameState"
"__as__Q24rstl24single_ptr<10CGameState>FP10CGameState":
/* 80003C88 00000BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80003C8C 00000BEC  7C 08 02 A6 */	mflr r0
/* 80003C90 00000BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003C94 00000BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80003C98 00000BF8  7C 9F 23 78 */	mr r31, r4
/* 80003C9C 00000BFC  38 80 00 01 */	li r4, 1
/* 80003CA0 00000C00  93 C1 00 08 */	stw r30, 8(r1)
/* 80003CA4 00000C04  7C 7E 1B 78 */	mr r30, r3
/* 80003CA8 00000C08  80 63 00 00 */	lwz r3, 0(r3)
/* 80003CAC 00000C0C  48 00 00 25 */	bl __dt__10CGameStateFv
/* 80003CB0 00000C10  93 FE 00 00 */	stw r31, 0(r30)
/* 80003CB4 00000C14  7F C3 F3 78 */	mr r3, r30
/* 80003CB8 00000C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80003CBC 00000C1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80003CC0 00000C20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80003CC4 00000C24  7C 08 03 A6 */	mtlr r0
/* 80003CC8 00000C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80003CCC 00000C2C  4E 80 00 20 */	blr

.global __dt__10CGameStateFv
__dt__10CGameStateFv:
/* 80003CD0 00000C30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80003CD4 00000C34  7C 08 02 A6 */	mflr r0
/* 80003CD8 00000C38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80003CDC 00000C3C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80003CE0 00000C40  7C 9F 23 78 */	mr r31, r4
/* 80003CE4 00000C44  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80003CE8 00000C48  7C 7E 1B 79 */	or. r30, r3, r3
/* 80003CEC 00000C4C  41 82 01 58 */	beq lbl_80003E44
/* 80003CF0 00000C50  34 1E 02 18 */	addic. r0, r30, 0x218
/* 80003CF4 00000C54  41 82 00 40 */	beq lbl_80003D34
/* 80003CF8 00000C58  80 7E 02 24 */	lwz r3, 0x224(r30)
/* 80003CFC 00000C5C  80 1E 02 1C */	lwz r0, 0x21c(r30)
/* 80003D00 00000C60  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80003D04 00000C64  7C 83 02 14 */	add r4, r3, r0
/* 80003D08 00000C68  7C 03 20 50 */	subf r0, r3, r4
/* 80003D0C 00000C6C  90 81 00 24 */	stw r4, 0x24(r1)
/* 80003D10 00000C70  90 81 00 20 */	stw r4, 0x20(r1)
/* 80003D14 00000C74  90 61 00 18 */	stw r3, 0x18(r1)
/* 80003D18 00000C78  7C 09 03 A6 */	mtctr r0
/* 80003D1C 00000C7C  7C 03 20 40 */	cmplw r3, r4
/* 80003D20 00000C80  41 82 00 08 */	beq lbl_80003D28
lbl_80003D24:
/* 80003D24 00000C84  42 00 00 00 */	bdnz lbl_80003D24
lbl_80003D28:
/* 80003D28 00000C88  28 03 00 00 */	cmplwi r3, 0
/* 80003D2C 00000C8C  41 82 00 08 */	beq lbl_80003D34
/* 80003D30 00000C90  48 31 1C 01 */	bl Free__7CMemoryFPCv
lbl_80003D34:
/* 80003D34 00000C94  34 1E 01 F8 */	addic. r0, r30, 0x1f8
/* 80003D38 00000C98  41 82 00 4C */	beq lbl_80003D84
/* 80003D3C 00000C9C  34 1E 01 F8 */	addic. r0, r30, 0x1f8
/* 80003D40 00000CA0  41 82 00 44 */	beq lbl_80003D84
/* 80003D44 00000CA4  80 1E 01 FC */	lwz r0, 0x1fc(r30)
/* 80003D48 00000CA8  80 7E 02 04 */	lwz r3, 0x204(r30)
/* 80003D4C 00000CAC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80003D50 00000CB0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80003D54 00000CB4  7C 64 1B 78 */	mr r4, r3
/* 80003D58 00000CB8  7C 03 02 14 */	add r0, r3, r0
/* 80003D5C 00000CBC  90 61 00 08 */	stw r3, 8(r1)
/* 80003D60 00000CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003D64 00000CC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80003D68 00000CC8  48 00 00 08 */	b lbl_80003D70
lbl_80003D6C:
/* 80003D6C 00000CCC  38 84 00 0C */	addi r4, r4, 0xc
lbl_80003D70:
/* 80003D70 00000CD0  7C 04 00 40 */	cmplw r4, r0
/* 80003D74 00000CD4  40 82 FF F8 */	bne lbl_80003D6C
/* 80003D78 00000CD8  28 03 00 00 */	cmplwi r3, 0
/* 80003D7C 00000CDC  41 82 00 08 */	beq lbl_80003D84
/* 80003D80 00000CE0  48 31 1B B1 */	bl Free__7CMemoryFPCv
lbl_80003D84:
/* 80003D84 00000CE4  38 7E 01 7C */	addi r3, r30, 0x17c
/* 80003D88 00000CE8  38 80 FF FF */	li r4, -1
/* 80003D8C 00000CEC  48 00 01 F9 */	bl __dt__12CGameOptionsFv
/* 80003D90 00000CF0  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80003D94 00000CF4  38 80 FF FF */	li r4, -1
/* 80003D98 00000CF8  48 00 04 41 */	bl __dt__14CSystemOptionsFv
/* 80003D9C 00000CFC  34 1E 00 9C */	addic. r0, r30, 0x9c
/* 80003DA0 00000D00  41 82 00 14 */	beq lbl_80003DB4
/* 80003DA4 00000D04  34 1E 00 9C */	addic. r0, r30, 0x9c
/* 80003DA8 00000D08  41 82 00 0C */	beq lbl_80003DB4
/* 80003DAC 00000D0C  38 7E 00 9C */	addi r3, r30, 0x9c
/* 80003DB0 00000D10  48 00 48 35 */	bl sub_800085e4
lbl_80003DB4:
/* 80003DB4 00000D14  34 1E 00 98 */	addic. r0, r30, 0x98
/* 80003DB8 00000D18  41 82 00 14 */	beq lbl_80003DCC
/* 80003DBC 00000D1C  34 1E 00 98 */	addic. r0, r30, 0x98
/* 80003DC0 00000D20  41 82 00 0C */	beq lbl_80003DCC
/* 80003DC4 00000D24  38 7E 00 98 */	addi r3, r30, 0x98
/* 80003DC8 00000D28  48 00 51 45 */	bl sub_80008f0c
lbl_80003DCC:
/* 80003DCC 00000D2C  38 7E 00 88 */	addi r3, r30, 0x88
/* 80003DD0 00000D30  38 80 FF FF */	li r4, -1
/* 80003DD4 00000D34  48 00 00 8D */	bl sub_80003e60
/* 80003DD8 00000D38  28 1E 00 00 */	cmplwi r30, 0
/* 80003DDC 00000D3C  41 82 00 58 */	beq lbl_80003E34
/* 80003DE0 00000D40  80 BE 00 00 */	lwz r5, 0(r30)
/* 80003DE4 00000D44  38 60 00 00 */	li r3, 0
/* 80003DE8 00000D48  2C 05 00 00 */	cmpwi r5, 0
/* 80003DEC 00000D4C  40 81 00 40 */	ble lbl_80003E2C
/* 80003DF0 00000D50  2C 05 00 08 */	cmpwi r5, 8
/* 80003DF4 00000D54  38 85 FF F8 */	addi r4, r5, -8
/* 80003DF8 00000D58  40 81 00 20 */	ble lbl_80003E18
/* 80003DFC 00000D5C  38 04 00 07 */	addi r0, r4, 7
/* 80003E00 00000D60  54 00 E8 FE */	srwi r0, r0, 3
/* 80003E04 00000D64  7C 09 03 A6 */	mtctr r0
/* 80003E08 00000D68  2C 04 00 00 */	cmpwi r4, 0
/* 80003E0C 00000D6C  40 81 00 0C */	ble lbl_80003E18
lbl_80003E10:
/* 80003E10 00000D70  38 63 00 08 */	addi r3, r3, 8
/* 80003E14 00000D74  42 00 FF FC */	bdnz lbl_80003E10
lbl_80003E18:
/* 80003E18 00000D78  7C 03 28 50 */	subf r0, r3, r5
/* 80003E1C 00000D7C  7C 09 03 A6 */	mtctr r0
/* 80003E20 00000D80  7C 03 28 00 */	cmpw r3, r5
/* 80003E24 00000D84  40 80 00 08 */	bge lbl_80003E2C
lbl_80003E28:
/* 80003E28 00000D88  42 00 00 00 */	bdnz lbl_80003E28
lbl_80003E2C:
/* 80003E2C 00000D8C  38 00 00 00 */	li r0, 0
/* 80003E30 00000D90  90 1E 00 00 */	stw r0, 0(r30)
lbl_80003E34:
/* 80003E34 00000D94  7F E0 07 35 */	extsh. r0, r31
/* 80003E38 00000D98  40 81 00 0C */	ble lbl_80003E44
/* 80003E3C 00000D9C  7F C3 F3 78 */	mr r3, r30
/* 80003E40 00000DA0  48 31 1A F1 */	bl Free__7CMemoryFPCv
lbl_80003E44:
/* 80003E44 00000DA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80003E48 00000DA8  7F C3 F3 78 */	mr r3, r30
/* 80003E4C 00000DAC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80003E50 00000DB0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80003E54 00000DB4  7C 08 03 A6 */	mtlr r0
/* 80003E58 00000DB8  38 21 00 30 */	addi r1, r1, 0x30
/* 80003E5C 00000DBC  4E 80 00 20 */	blr

.global sub_80003e60 # __dt__?
sub_80003e60:
/* 80003E60 00000DC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80003E64 00000DC4  7C 08 02 A6 */	mflr r0
/* 80003E68 00000DC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80003E6C 00000DCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80003E70 00000DD0  7C 9F 23 78 */	mr r31, r4
/* 80003E74 00000DD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80003E78 00000DD8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80003E7C 00000DDC  41 82 00 54 */	beq lbl_80003ED0
/* 80003E80 00000DE0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80003E84 00000DE4  38 61 00 14 */	addi r3, r1, 0x14
/* 80003E88 00000DE8  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80003E8C 00000DEC  38 81 00 0C */	addi r4, r1, 0xc
/* 80003E90 00000DF0  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80003E94 00000DF4  7C A5 02 14 */	add r5, r5, r0
/* 80003E98 00000DF8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80003E9C 00000DFC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80003EA0 00000E00  90 A1 00 08 */	stw r5, 8(r1)
/* 80003EA4 00000E04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80003EA8 00000E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003EAC 00000E0C  48 00 00 41 */	bl sub_80003eec
/* 80003EB0 00000E10  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80003EB4 00000E14  28 03 00 00 */	cmplwi r3, 0
/* 80003EB8 00000E18  41 82 00 08 */	beq lbl_80003EC0
/* 80003EBC 00000E1C  48 31 1A 75 */	bl Free__7CMemoryFPCv
lbl_80003EC0:
/* 80003EC0 00000E20  7F E0 07 35 */	extsh. r0, r31
/* 80003EC4 00000E24  40 81 00 0C */	ble lbl_80003ED0
/* 80003EC8 00000E28  7F C3 F3 78 */	mr r3, r30
/* 80003ECC 00000E2C  48 31 1A 65 */	bl Free__7CMemoryFPCv
lbl_80003ED0:
/* 80003ED0 00000E30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80003ED4 00000E34  7F C3 F3 78 */	mr r3, r30
/* 80003ED8 00000E38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80003EDC 00000E3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80003EE0 00000E40  7C 08 03 A6 */	mtlr r0
/* 80003EE4 00000E44  38 21 00 20 */	addi r1, r1, 0x20
/* 80003EE8 00000E48  4E 80 00 20 */	blr

.global sub_80003eec # __dt__
sub_80003eec:
/* 80003EEC 00000E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80003EF0 00000E50  7C 08 02 A6 */	mflr r0
/* 80003EF4 00000E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003EF8 00000E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80003EFC 00000E5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80003F00 00000E60  7C 9E 23 78 */	mr r30, r4
/* 80003F04 00000E64  83 E3 00 00 */	lwz r31, 0(r3)
/* 80003F08 00000E68  48 00 00 58 */	b lbl_80003F60
lbl_80003F0C:
/* 80003F0C 00000E6C  28 1F 00 00 */	cmplwi r31, 0
/* 80003F10 00000E70  41 82 00 4C */	beq lbl_80003F5C
/* 80003F14 00000E74  34 1F 00 14 */	addic. r0, r31, 0x14
/* 80003F18 00000E78  41 82 00 14 */	beq lbl_80003F2C
/* 80003F1C 00000E7C  34 1F 00 14 */	addic. r0, r31, 0x14
/* 80003F20 00000E80  41 82 00 0C */	beq lbl_80003F2C
/* 80003F24 00000E84  38 7F 00 14 */	addi r3, r31, 0x14
/* 80003F28 00000E88  48 00 4E A5 */	bl sub_80008dcc
lbl_80003F2C:
/* 80003F2C 00000E8C  34 1F 00 0C */	addic. r0, r31, 0xc
/* 80003F30 00000E90  41 82 00 14 */	beq lbl_80003F44
/* 80003F34 00000E94  34 1F 00 0C */	addic. r0, r31, 0xc
/* 80003F38 00000E98  41 82 00 0C */	beq lbl_80003F44
/* 80003F3C 00000E9C  38 7F 00 0C */	addi r3, r31, 0xc
/* 80003F40 00000EA0  48 00 4C FD */	bl sub_80008c3c
lbl_80003F44:
/* 80003F44 00000EA4  34 1F 00 08 */	addic. r0, r31, 8
/* 80003F48 00000EA8  41 82 00 14 */	beq lbl_80003F5C
/* 80003F4C 00000EAC  34 1F 00 08 */	addic. r0, r31, 8
/* 80003F50 00000EB0  41 82 00 0C */	beq lbl_80003F5C
/* 80003F54 00000EB4  38 7F 00 08 */	addi r3, r31, 8
/* 80003F58 00000EB8  48 00 46 E9 */	bl __dt__11CWorldStateFv
lbl_80003F5C:
/* 80003F5C 00000EBC  3B FF 00 18 */	addi r31, r31, 0x18
lbl_80003F60:
/* 80003F60 00000EC0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80003F64 00000EC4  7C 1F 00 40 */	cmplw r31, r0
/* 80003F68 00000EC8  40 82 FF A4 */	bne lbl_80003F0C
/* 80003F6C 00000ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80003F70 00000ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80003F74 00000ED4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80003F78 00000ED8  7C 08 03 A6 */	mtlr r0
/* 80003F7C 00000EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80003F80 00000EE0  4E 80 00 20 */	blr

.global __dt__12CGameOptionsFv
__dt__12CGameOptionsFv:
/* 80003F84 00000EE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80003F88 00000EE8  7C 08 02 A6 */	mflr r0
/* 80003F8C 00000EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80003F90 00000EF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80003F94 00000EF4  7C 9F 23 78 */	mr r31, r4
/* 80003F98 00000EF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80003F9C 00000EFC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80003FA0 00000F00  41 82 00 B8 */	beq lbl_80004058
/* 80003FA4 00000F04  34 1E 00 6C */	addic. r0, r30, 0x6c
/* 80003FA8 00000F08  41 82 00 44 */	beq lbl_80003FEC
/* 80003FAC 00000F0C  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 80003FB0 00000F10  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 80003FB4 00000F14  54 00 18 38 */	slwi r0, r0, 3
/* 80003FB8 00000F18  7C 03 02 14 */	add r0, r3, r0
/* 80003FBC 00000F1C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80003FC0 00000F20  7C 64 1B 78 */	mr r4, r3
/* 80003FC4 00000F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003FC8 00000F28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80003FCC 00000F2C  90 61 00 08 */	stw r3, 8(r1)
/* 80003FD0 00000F30  48 00 00 08 */	b lbl_80003FD8
lbl_80003FD4:
/* 80003FD4 00000F34  38 84 00 08 */	addi r4, r4, 8
lbl_80003FD8:
/* 80003FD8 00000F38  7C 04 00 40 */	cmplw r4, r0
/* 80003FDC 00000F3C  40 82 FF F8 */	bne lbl_80003FD4
/* 80003FE0 00000F40  28 03 00 00 */	cmplwi r3, 0
/* 80003FE4 00000F44  41 82 00 08 */	beq lbl_80003FEC
/* 80003FE8 00000F48  48 31 19 49 */	bl Free__7CMemoryFPCv
lbl_80003FEC:
/* 80003FEC 00000F4C  28 1E 00 00 */	cmplwi r30, 0
/* 80003FF0 00000F50  41 82 00 58 */	beq lbl_80004048
/* 80003FF4 00000F54  80 BE 00 00 */	lwz r5, 0(r30)
/* 80003FF8 00000F58  38 60 00 00 */	li r3, 0
/* 80003FFC 00000F5C  2C 05 00 00 */	cmpwi r5, 0
/* 80004000 00000F60  40 81 00 40 */	ble lbl_80004040
/* 80004004 00000F64  2C 05 00 08 */	cmpwi r5, 8
/* 80004008 00000F68  38 85 FF F8 */	addi r4, r5, -8
/* 8000400C 00000F6C  40 81 00 20 */	ble lbl_8000402C
/* 80004010 00000F70  38 04 00 07 */	addi r0, r4, 7
/* 80004014 00000F74  54 00 E8 FE */	srwi r0, r0, 3
/* 80004018 00000F78  7C 09 03 A6 */	mtctr r0
/* 8000401C 00000F7C  2C 04 00 00 */	cmpwi r4, 0
/* 80004020 00000F80  40 81 00 0C */	ble lbl_8000402C
lbl_80004024:
/* 80004024 00000F84  38 63 00 08 */	addi r3, r3, 8
/* 80004028 00000F88  42 00 FF FC */	bdnz lbl_80004024
lbl_8000402C:
/* 8000402C 00000F8C  7C 03 28 50 */	subf r0, r3, r5
/* 80004030 00000F90  7C 09 03 A6 */	mtctr r0
/* 80004034 00000F94  7C 03 28 00 */	cmpw r3, r5
/* 80004038 00000F98  40 80 00 08 */	bge lbl_80004040
lbl_8000403C:
/* 8000403C 00000F9C  42 00 00 00 */	bdnz lbl_8000403C
lbl_80004040:
/* 80004040 00000FA0  38 00 00 00 */	li r0, 0
/* 80004044 00000FA4  90 1E 00 00 */	stw r0, 0(r30)
lbl_80004048:
/* 80004048 00000FA8  7F E0 07 35 */	extsh. r0, r31
/* 8000404C 00000FAC  40 81 00 0C */	ble lbl_80004058
/* 80004050 00000FB0  7F C3 F3 78 */	mr r3, r30
/* 80004054 00000FB4  48 31 18 DD */	bl Free__7CMemoryFPCv
lbl_80004058:
/* 80004058 00000FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000405C 00000FBC  7F C3 F3 78 */	mr r3, r30
/* 80004060 00000FC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80004064 00000FC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80004068 00000FC8  7C 08 03 A6 */	mtlr r0
/* 8000406C 00000FCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80004070 00000FD0  4E 80 00 20 */	blr

.global __ct__12CGameOptionsFRC12CGameOptions
__ct__12CGameOptionsFRC12CGameOptions:
/* 80004074 00000FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80004078 00000FD8  7C 08 02 A6 */	mflr r0
/* 8000407C 00000FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80004080 00000FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80004084 00000FE4  7C 9F 23 78 */	mr r31, r4
/* 80004088 00000FE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8000408C 00000FEC  7C 7E 1B 78 */	mr r30, r3
/* 80004090 00000FF0  38 7F 00 04 */	addi r3, r31, 4
/* 80004094 00000FF4  80 04 00 00 */	lwz r0, 0(r4)
/* 80004098 00000FF8  38 9E 00 04 */	addi r4, r30, 4
/* 8000409C 00000FFC  90 1E 00 00 */	stw r0, 0(r30)
/* 800040A0 00001000  80 1E 00 00 */	lwz r0, 0(r30)
/* 800040A4 00001004  7C 09 03 A6 */	mtctr r0
/* 800040A8 00001008  2C 00 00 00 */	cmpwi r0, 0
/* 800040AC 0000100C  40 81 00 20 */	ble lbl_800040CC
lbl_800040B0:
/* 800040B0 00001010  28 04 00 00 */	cmplwi r4, 0
/* 800040B4 00001014  41 82 00 0C */	beq lbl_800040C0
/* 800040B8 00001018  88 03 00 00 */	lbz r0, 0(r3)
/* 800040BC 0000101C  98 04 00 00 */	stb r0, 0(r4)
lbl_800040C0:
/* 800040C0 00001020  38 84 00 01 */	addi r4, r4, 1
/* 800040C4 00001024  38 63 00 01 */	addi r3, r3, 1
/* 800040C8 00001028  42 00 FF E8 */	bdnz lbl_800040B0
lbl_800040CC:
/* 800040CC 0000102C  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 800040D0 00001030  90 1E 00 44 */	stw r0, 0x44(r30)
/* 800040D4 00001034  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 800040D8 00001038  90 1E 00 48 */	stw r0, 0x48(r30)
/* 800040DC 0000103C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 800040E0 00001040  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 800040E4 00001044  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 800040E8 00001048  90 1E 00 50 */	stw r0, 0x50(r30)
/* 800040EC 0000104C  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 800040F0 00001050  90 1E 00 54 */	stw r0, 0x54(r30)
/* 800040F4 00001054  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 800040F8 00001058  90 1E 00 58 */	stw r0, 0x58(r30)
/* 800040FC 0000105C  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 80004100 00001060  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 80004104 00001064  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 80004108 00001068  90 1E 00 60 */	stw r0, 0x60(r30)
/* 8000410C 0000106C  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 80004110 00001070  90 1E 00 64 */	stw r0, 0x64(r30)
/* 80004114 00001074  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 80004118 00001078  98 1E 00 68 */	stb r0, 0x68(r30)
/* 8000411C 0000107C  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80004120 00001080  90 1E 00 70 */	stw r0, 0x70(r30)
/* 80004124 00001084  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80004128 00001088  90 1E 00 74 */	stw r0, 0x74(r30)
/* 8000412C 0000108C  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80004130 00001090  2C 00 00 00 */	cmpwi r0, 0
/* 80004134 00001094  40 82 00 1C */	bne lbl_80004150
/* 80004138 00001098  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 8000413C 0000109C  2C 00 00 00 */	cmpwi r0, 0
/* 80004140 000010A0  40 82 00 10 */	bne lbl_80004150
/* 80004144 000010A4  38 00 00 00 */	li r0, 0
/* 80004148 000010A8  90 1E 00 78 */	stw r0, 0x78(r30)
/* 8000414C 000010AC  48 00 00 70 */	b lbl_800041BC
lbl_80004150:
/* 80004150 000010B0  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 80004154 000010B4  54 03 18 39 */	rlwinm. r3, r0, 3, 0, 0x1c
/* 80004158 000010B8  40 82 00 10 */	bne lbl_80004168
/* 8000415C 000010BC  38 00 00 00 */	li r0, 0
/* 80004160 000010C0  90 1E 00 78 */	stw r0, 0x78(r30)
/* 80004164 000010C4  48 00 00 1C */	b lbl_80004180
lbl_80004168:
/* 80004168 000010C8  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 8000416C 000010CC  38 A0 00 00 */	li r5, 0
/* 80004170 000010D0  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80004174 000010D4  38 84 00 37 */	addi r4, r4, 0x37
/* 80004178 000010D8  48 31 16 A1 */	bl __nwa__FUlPCcPCc
/* 8000417C 000010DC  90 7E 00 78 */	stw r3, 0x78(r30)
lbl_80004180:
/* 80004180 000010E0  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 80004184 000010E4  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80004188 000010E8  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 8000418C 000010EC  7C 09 03 A6 */	mtctr r0
/* 80004190 000010F0  2C 00 00 00 */	cmpwi r0, 0
/* 80004194 000010F4  40 81 00 28 */	ble lbl_800041BC
lbl_80004198:
/* 80004198 000010F8  28 03 00 00 */	cmplwi r3, 0
/* 8000419C 000010FC  41 82 00 14 */	beq lbl_800041B0
/* 800041A0 00001100  80 04 00 00 */	lwz r0, 0(r4)
/* 800041A4 00001104  90 03 00 00 */	stw r0, 0(r3)
/* 800041A8 00001108  80 04 00 04 */	lwz r0, 4(r4)
/* 800041AC 0000110C  90 03 00 04 */	stw r0, 4(r3)
lbl_800041B0:
/* 800041B0 00001110  38 63 00 08 */	addi r3, r3, 8
/* 800041B4 00001114  38 84 00 08 */	addi r4, r4, 8
/* 800041B8 00001118  42 00 FF E0 */	bdnz lbl_80004198
lbl_800041BC:
/* 800041BC 0000111C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800041C0 00001120  7F C3 F3 78 */	mr r3, r30
/* 800041C4 00001124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800041C8 00001128  83 C1 00 08 */	lwz r30, 8(r1)
/* 800041CC 0000112C  7C 08 03 A6 */	mtlr r0
/* 800041D0 00001130  38 21 00 10 */	addi r1, r1, 0x10
/* 800041D4 00001134  4E 80 00 20 */	blr

.global __dt__14CSystemOptionsFv
__dt__14CSystemOptionsFv:
/* 800041D8 00001138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800041DC 0000113C  7C 08 02 A6 */	mflr r0
/* 800041E0 00001140  90 01 00 24 */	stw r0, 0x24(r1)
/* 800041E4 00001144  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800041E8 00001148  7C 9F 23 78 */	mr r31, r4
/* 800041EC 0000114C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800041F0 00001150  7C 7E 1B 79 */	or. r30, r3, r3
/* 800041F4 00001154  41 82 01 14 */	beq lbl_80004308
/* 800041F8 00001158  34 1E 00 AC */	addic. r0, r30, 0xac
/* 800041FC 0000115C  41 82 00 44 */	beq lbl_80004240
/* 80004200 00001160  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80004204 00001164  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 80004208 00001168  54 00 18 38 */	slwi r0, r0, 3
/* 8000420C 0000116C  7C 03 02 14 */	add r0, r3, r0
/* 80004210 00001170  90 61 00 0C */	stw r3, 0xc(r1)
/* 80004214 00001174  7C 64 1B 78 */	mr r4, r3
/* 80004218 00001178  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000421C 0000117C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80004220 00001180  90 61 00 08 */	stw r3, 8(r1)
/* 80004224 00001184  48 00 00 08 */	b lbl_8000422C
lbl_80004228:
/* 80004228 00001188  38 84 00 08 */	addi r4, r4, 8
lbl_8000422C:
/* 8000422C 0000118C  7C 04 00 40 */	cmplw r4, r0
/* 80004230 00001190  40 82 FF F8 */	bne lbl_80004228
/* 80004234 00001194  28 03 00 00 */	cmplwi r3, 0
/* 80004238 00001198  41 82 00 08 */	beq lbl_80004240
/* 8000423C 0000119C  48 31 16 F5 */	bl Free__7CMemoryFPCv
lbl_80004240:
/* 80004240 000011A0  34 1E 00 68 */	addic. r0, r30, 0x68
/* 80004244 000011A4  41 82 00 58 */	beq lbl_8000429C
/* 80004248 000011A8  80 BE 00 68 */	lwz r5, 0x68(r30)
/* 8000424C 000011AC  38 60 00 00 */	li r3, 0
/* 80004250 000011B0  2C 05 00 00 */	cmpwi r5, 0
/* 80004254 000011B4  40 81 00 40 */	ble lbl_80004294
/* 80004258 000011B8  2C 05 00 08 */	cmpwi r5, 8
/* 8000425C 000011BC  38 85 FF F8 */	addi r4, r5, -8
/* 80004260 000011C0  40 81 00 20 */	ble lbl_80004280
/* 80004264 000011C4  38 04 00 07 */	addi r0, r4, 7
/* 80004268 000011C8  54 00 E8 FE */	srwi r0, r0, 3
/* 8000426C 000011CC  7C 09 03 A6 */	mtctr r0
/* 80004270 000011D0  2C 04 00 00 */	cmpwi r4, 0
/* 80004274 000011D4  40 81 00 0C */	ble lbl_80004280
lbl_80004278:
/* 80004278 000011D8  38 63 00 08 */	addi r3, r3, 8
/* 8000427C 000011DC  42 00 FF FC */	bdnz lbl_80004278
lbl_80004280:
/* 80004280 000011E0  7C 03 28 50 */	subf r0, r3, r5
/* 80004284 000011E4  7C 09 03 A6 */	mtctr r0
/* 80004288 000011E8  7C 03 28 00 */	cmpw r3, r5
/* 8000428C 000011EC  40 80 00 08 */	bge lbl_80004294
lbl_80004290:
/* 80004290 000011F0  42 00 00 00 */	bdnz lbl_80004290
lbl_80004294:
/* 80004294 000011F4  38 00 00 00 */	li r0, 0
/* 80004298 000011F8  90 1E 00 68 */	stw r0, 0x68(r30)
lbl_8000429C:
/* 8000429C 000011FC  28 1E 00 00 */	cmplwi r30, 0
/* 800042A0 00001200  41 82 00 58 */	beq lbl_800042F8
/* 800042A4 00001204  80 BE 00 00 */	lwz r5, 0(r30)
/* 800042A8 00001208  38 60 00 00 */	li r3, 0
/* 800042AC 0000120C  2C 05 00 00 */	cmpwi r5, 0
/* 800042B0 00001210  40 81 00 40 */	ble lbl_800042F0
/* 800042B4 00001214  2C 05 00 08 */	cmpwi r5, 8
/* 800042B8 00001218  38 85 FF F8 */	addi r4, r5, -8
/* 800042BC 0000121C  40 81 00 20 */	ble lbl_800042DC
/* 800042C0 00001220  38 04 00 07 */	addi r0, r4, 7
/* 800042C4 00001224  54 00 E8 FE */	srwi r0, r0, 3
/* 800042C8 00001228  7C 09 03 A6 */	mtctr r0
/* 800042CC 0000122C  2C 04 00 00 */	cmpwi r4, 0
/* 800042D0 00001230  40 81 00 0C */	ble lbl_800042DC
lbl_800042D4:
/* 800042D4 00001234  38 63 00 08 */	addi r3, r3, 8
/* 800042D8 00001238  42 00 FF FC */	bdnz lbl_800042D4
lbl_800042DC:
/* 800042DC 0000123C  7C 03 28 50 */	subf r0, r3, r5
/* 800042E0 00001240  7C 09 03 A6 */	mtctr r0
/* 800042E4 00001244  7C 03 28 00 */	cmpw r3, r5
/* 800042E8 00001248  40 80 00 08 */	bge lbl_800042F0
lbl_800042EC:
/* 800042EC 0000124C  42 00 00 00 */	bdnz lbl_800042EC
lbl_800042F0:
/* 800042F0 00001250  38 00 00 00 */	li r0, 0
/* 800042F4 00001254  90 1E 00 00 */	stw r0, 0(r30)
lbl_800042F8:
/* 800042F8 00001258  7F E0 07 35 */	extsh. r0, r31
/* 800042FC 0000125C  40 81 00 0C */	ble lbl_80004308
/* 80004300 00001260  7F C3 F3 78 */	mr r3, r30
/* 80004304 00001264  48 31 16 2D */	bl Free__7CMemoryFPCv
lbl_80004308:
/* 80004308 00001268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000430C 0000126C  7F C3 F3 78 */	mr r3, r30
/* 80004310 00001270  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80004314 00001274  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80004318 00001278  7C 08 03 A6 */	mtlr r0
/* 8000431C 0000127C  38 21 00 20 */	addi r1, r1, 0x20
/* 80004320 00001280  4E 80 00 20 */	blr

.global __ct__14CSystemOptionsFRC14CSystemOptions
__ct__14CSystemOptionsFRC14CSystemOptions:
/* 80004324 00001284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80004328 00001288  7C 08 02 A6 */	mflr r0
/* 8000432C 0000128C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80004330 00001290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80004334 00001294  7C 9F 23 78 */	mr r31, r4
/* 80004338 00001298  93 C1 00 08 */	stw r30, 8(r1)
/* 8000433C 0000129C  7C 7E 1B 78 */	mr r30, r3
/* 80004340 000012A0  38 7F 00 04 */	addi r3, r31, 4
/* 80004344 000012A4  80 04 00 00 */	lwz r0, 0(r4)
/* 80004348 000012A8  38 9E 00 04 */	addi r4, r30, 4
/* 8000434C 000012AC  90 1E 00 00 */	stw r0, 0(r30)
/* 80004350 000012B0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80004354 000012B4  7C 09 03 A6 */	mtctr r0
/* 80004358 000012B8  2C 00 00 00 */	cmpwi r0, 0
/* 8000435C 000012BC  40 81 00 20 */	ble lbl_8000437C
lbl_80004360:
/* 80004360 000012C0  28 04 00 00 */	cmplwi r4, 0
/* 80004364 000012C4  41 82 00 0C */	beq lbl_80004370
/* 80004368 000012C8  88 03 00 00 */	lbz r0, 0(r3)
/* 8000436C 000012CC  98 04 00 00 */	stb r0, 0(r4)
lbl_80004370:
/* 80004370 000012D0  38 84 00 01 */	addi r4, r4, 1
/* 80004374 000012D4  38 63 00 01 */	addi r3, r3, 1
/* 80004378 000012D8  42 00 FF E8 */	bdnz lbl_80004360
lbl_8000437C:
/* 8000437C 000012DC  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80004380 000012E0  38 9E 00 6C */	addi r4, r30, 0x6c
/* 80004384 000012E4  38 7F 00 6C */	addi r3, r31, 0x6c
/* 80004388 000012E8  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8000438C 000012EC  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 80004390 000012F0  7C 09 03 A6 */	mtctr r0
/* 80004394 000012F4  2C 00 00 00 */	cmpwi r0, 0
/* 80004398 000012F8  40 81 00 20 */	ble lbl_800043B8
lbl_8000439C:
/* 8000439C 000012FC  28 04 00 00 */	cmplwi r4, 0
/* 800043A0 00001300  41 82 00 0C */	beq lbl_800043AC
/* 800043A4 00001304  88 03 00 00 */	lbz r0, 0(r3)
/* 800043A8 00001308  98 04 00 00 */	stb r0, 0(r4)
lbl_800043AC:
/* 800043AC 0000130C  38 84 00 01 */	addi r4, r4, 1
/* 800043B0 00001310  38 63 00 01 */	addi r3, r3, 1
/* 800043B4 00001314  42 00 FF E8 */	bdnz lbl_8000439C
lbl_800043B8:
/* 800043B8 00001318  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 800043BC 0000131C  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 800043C0 00001320  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 800043C4 00001324  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 800043C8 00001328  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 800043CC 0000132C  2C 00 00 00 */	cmpwi r0, 0
/* 800043D0 00001330  40 82 00 1C */	bne lbl_800043EC
/* 800043D4 00001334  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 800043D8 00001338  2C 00 00 00 */	cmpwi r0, 0
/* 800043DC 0000133C  40 82 00 10 */	bne lbl_800043EC
/* 800043E0 00001340  38 00 00 00 */	li r0, 0
/* 800043E4 00001344  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 800043E8 00001348  48 00 00 70 */	b lbl_80004458
lbl_800043EC:
/* 800043EC 0000134C  80 1E 00 B4 */	lwz r0, 0xb4(r30)
/* 800043F0 00001350  54 03 18 39 */	rlwinm. r3, r0, 3, 0, 0x1c
/* 800043F4 00001354  40 82 00 10 */	bne lbl_80004404
/* 800043F8 00001358  38 00 00 00 */	li r0, 0
/* 800043FC 0000135C  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 80004400 00001360  48 00 00 1C */	b lbl_8000441C
lbl_80004404:
/* 80004404 00001364  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80004408 00001368  38 A0 00 00 */	li r5, 0
/* 8000440C 0000136C  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80004410 00001370  38 84 00 37 */	addi r4, r4, 0x37
/* 80004414 00001374  48 31 14 05 */	bl __nwa__FUlPCcPCc
/* 80004418 00001378  90 7E 00 B8 */	stw r3, 0xb8(r30)
lbl_8000441C:
/* 8000441C 0000137C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80004420 00001380  80 9F 00 B8 */	lwz r4, 0xb8(r31)
/* 80004424 00001384  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 80004428 00001388  7C 09 03 A6 */	mtctr r0
/* 8000442C 0000138C  2C 00 00 00 */	cmpwi r0, 0
/* 80004430 00001390  40 81 00 28 */	ble lbl_80004458
lbl_80004434:
/* 80004434 00001394  28 03 00 00 */	cmplwi r3, 0
/* 80004438 00001398  41 82 00 14 */	beq lbl_8000444C
/* 8000443C 0000139C  80 04 00 00 */	lwz r0, 0(r4)
/* 80004440 000013A0  90 03 00 00 */	stw r0, 0(r3)
/* 80004444 000013A4  80 04 00 04 */	lwz r0, 4(r4)
/* 80004448 000013A8  90 03 00 04 */	stw r0, 4(r3)
lbl_8000444C:
/* 8000444C 000013AC  38 63 00 08 */	addi r3, r3, 8
/* 80004450 000013B0  38 84 00 08 */	addi r4, r4, 8
/* 80004454 000013B4  42 00 FF E0 */	bdnz lbl_80004434
lbl_80004458:
/* 80004458 000013B8  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 8000445C 000013BC  7F C3 F3 78 */	mr r3, r30
/* 80004460 000013C0  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 80004464 000013C4  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80004468 000013C8  90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 8000446C 000013CC  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80004470 000013D0  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 80004474 000013D4  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80004478 000013D8  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 8000447C 000013DC  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80004480 000013E0  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 80004484 000013E4  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 80004488 000013E8  98 1E 00 D0 */	stb r0, 0xd0(r30)
/* 8000448C 000013EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80004490 000013F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80004494 000013F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80004498 000013F8  7C 08 03 A6 */	mtlr r0
/* 8000449C 000013FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800044A0 00001400  4E 80 00 20 */	blr

.global StreamNewGameState__5CMainFR12CInputStreami
StreamNewGameState__5CMainFR12CInputStreami:
/* 800044A4 00001404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800044A8 00001408  7C 08 02 A6 */	mflr r0
/* 800044AC 0000140C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800044B0 00001410  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800044B4 00001414  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800044B8 00001418  7C BE 2B 78 */	mr r30, r5
/* 800044BC 0000141C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800044C0 00001420  7C 9D 23 78 */	mr r29, r4
/* 800044C4 00001424  38 80 00 00 */	li r4, 0
/* 800044C8 00001428  93 81 00 10 */	stw r28, 0x10(r1)
/* 800044CC 0000142C  7C 7C 1B 78 */	mr r28, r3
/* 800044D0 00001430  80 CD A0 80 */	lwz r6, gpGameState@sda21(r13)
/* 800044D4 00001434  80 63 01 28 */	lwz r3, 0x128(r3)
/* 800044D8 00001438  88 06 01 78 */	lbz r0, 0x178(r6)
/* 800044DC 0000143C  38 63 01 34 */	addi r3, r3, 0x134
/* 800044E0 00001440  54 1F EF FE */	rlwinm r31, r0, 0x1d, 0x1f, 0x1f
/* 800044E4 00001444  4B FF F7 A5 */	bl "__as__Q24rstl24single_ptr<10CGameState>FP10CGameState"
/* 800044E8 00001448  38 00 00 00 */	li r0, 0
/* 800044EC 0000144C  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 800044F0 00001450  38 63 BE 74 */	addi r3, r3, lbl_803CBE74@l
/* 800044F4 00001454  90 0D A0 80 */	stw r0, gpGameState@sda21(r13)
/* 800044F8 00001458  38 83 00 37 */	addi r4, r3, 0x37
/* 800044FC 0000145C  38 60 02 30 */	li r3, 0x230
/* 80004500 00001460  38 A0 00 00 */	li r5, 0
/* 80004504 00001464  48 31 13 69 */	bl __nw__FUlPCcPCc
/* 80004508 00001468  7C 64 1B 79 */	or. r4, r3, r3
/* 8000450C 0000146C  41 82 00 14 */	beq lbl_80004520
/* 80004510 00001470  7F A4 EB 78 */	mr r4, r29
/* 80004514 00001474  7F C5 F3 78 */	mr r5, r30
/* 80004518 00001478  48 1D 00 4D */	bl __ct__10CGameStateFR12CInputStreami
/* 8000451C 0000147C  7C 64 1B 78 */	mr r4, r3
lbl_80004520:
/* 80004520 00001480  80 7C 01 28 */	lwz r3, 0x128(r28)
/* 80004524 00001484  38 63 01 34 */	addi r3, r3, 0x134
/* 80004528 00001488  4B FF F7 61 */	bl "__as__Q24rstl24single_ptr<10CGameState>FP10CGameState"
/* 8000452C 0000148C  80 7C 01 28 */	lwz r3, 0x128(r28)
/* 80004530 00001490  7F E4 FB 78 */	mr r4, r31
/* 80004534 00001494  80 63 01 34 */	lwz r3, 0x134(r3)
/* 80004538 00001498  90 6D A0 80 */	stw r3, gpGameState@sda21(r13)
/* 8000453C 0000149C  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80004540 000014A0  48 1D 0C 81 */	bl SetHasFusion__14CSystemOptionsFb
/* 80004544 000014A4  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80004548 000014A8  88 03 01 78 */	lbz r0, 0x178(r3)
/* 8000454C 000014AC  54 1F EF FE */	rlwinm r31, r0, 0x1d, 0x1f, 0x1f
/* 80004550 000014B0  48 1C F3 ED */	bl PlayerState__10CGameStateFv
/* 80004554 000014B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80004558 000014B8  7F E4 FB 78 */	mr r4, r31
/* 8000455C 000014BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80004560 000014C0  48 08 CF 55 */	bl SetIsFusionEnabled__12CPlayerStateFb
/* 80004564 000014C4  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80004568 000014C8  38 63 01 F8 */	addi r3, r3, 0x1f8
/* 8000456C 000014CC  48 26 37 15 */	bl SetHintNextTime__12CHintOptionsFv
/* 80004570 000014D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80004574 000014D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80004578 000014D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8000457C 000014DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80004580 000014E0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80004584 000014E4  7C 08 03 A6 */	mtlr r0
/* 80004588 000014E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8000458C 000014EC  4E 80 00 20 */	blr

.global RefreshGameState__5CMainFv
RefreshGameState__5CMainFv:
/* 80004590 000014F0  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 80004594 000014F4  7C 08 02 A6 */	mflr r0
/* 80004598 000014F8  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 8000459C 000014FC  BF 61 01 AC */	stmw r27, 0x1ac(r1)
/* 800045A0 00001500  7C 7C 1B 78 */	mr r28, r3
/* 800045A4 00001504  38 61 00 C8 */	addi r3, r1, 0xc8
/* 800045A8 00001508  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 800045AC 0000150C  38 84 00 A8 */	addi r4, r4, 0xa8
/* 800045B0 00001510  4B FF FD 75 */	bl __ct__14CSystemOptionsFRC14CSystemOptions
/* 800045B4 00001514  83 6D A0 80 */	lwz r27, gpGameState@sda21(r13)
/* 800045B8 00001518  80 7B 02 1C */	lwz r3, 0x21c(r27)
/* 800045BC 0000151C  80 1B 02 20 */	lwz r0, 0x220(r27)
/* 800045C0 00001520  2C 03 00 00 */	cmpwi r3, 0
/* 800045C4 00001524  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800045C8 00001528  83 FB 02 0C */	lwz r31, 0x20c(r27)
/* 800045CC 0000152C  90 01 00 20 */	stw r0, 0x20(r1)
/* 800045D0 00001530  83 DB 02 10 */	lwz r30, 0x210(r27)
/* 800045D4 00001534  83 BB 02 14 */	lwz r29, 0x214(r27)
/* 800045D8 00001538  40 82 00 18 */	bne lbl_800045F0
/* 800045DC 0000153C  2C 00 00 00 */	cmpwi r0, 0
/* 800045E0 00001540  40 82 00 10 */	bne lbl_800045F0
/* 800045E4 00001544  38 00 00 00 */	li r0, 0
/* 800045E8 00001548  90 01 00 24 */	stw r0, 0x24(r1)
/* 800045EC 0000154C  48 00 00 68 */	b lbl_80004654
lbl_800045F0:
/* 800045F0 00001550  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800045F4 00001554  2C 03 00 00 */	cmpwi r3, 0
/* 800045F8 00001558  40 82 00 10 */	bne lbl_80004608
/* 800045FC 0000155C  38 00 00 00 */	li r0, 0
/* 80004600 00001560  90 01 00 24 */	stw r0, 0x24(r1)
/* 80004604 00001564  48 00 00 1C */	b lbl_80004620
lbl_80004608:
/* 80004608 00001568  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 8000460C 0000156C  38 A0 00 00 */	li r5, 0
/* 80004610 00001570  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80004614 00001574  38 84 00 37 */	addi r4, r4, 0x37
/* 80004618 00001578  48 31 12 01 */	bl __nwa__FUlPCcPCc
/* 8000461C 0000157C  90 61 00 24 */	stw r3, 0x24(r1)
lbl_80004620:
/* 80004620 00001580  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80004624 00001584  80 9B 02 24 */	lwz r4, 0x224(r27)
/* 80004628 00001588  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8000462C 0000158C  7C 09 03 A6 */	mtctr r0
/* 80004630 00001590  2C 00 00 00 */	cmpwi r0, 0
/* 80004634 00001594  40 81 00 20 */	ble lbl_80004654
lbl_80004638:
/* 80004638 00001598  28 03 00 00 */	cmplwi r3, 0
/* 8000463C 0000159C  41 82 00 0C */	beq lbl_80004648
/* 80004640 000015A0  88 04 00 00 */	lbz r0, 0(r4)
/* 80004644 000015A4  98 03 00 00 */	stb r0, 0(r3)
lbl_80004648:
/* 80004648 000015A8  38 63 00 01 */	addi r3, r3, 1
/* 8000464C 000015AC  38 84 00 01 */	addi r4, r4, 1
/* 80004650 000015B0  42 00 FF E8 */	bdnz lbl_80004638
lbl_80004654:
/* 80004654 000015B4  80 8D A0 80 */	lwz r4, gpGameState@sda21(r13)
/* 80004658 000015B8  38 61 00 4C */	addi r3, r1, 0x4c
/* 8000465C 000015BC  38 84 01 7C */	addi r4, r4, 0x17c
/* 80004660 000015C0  4B FF FA 15 */	bl __ct__12CGameOptionsFRC12CGameOptions
/* 80004664 000015C4  80 7C 01 28 */	lwz r3, 0x128(r28)
/* 80004668 000015C8  38 80 00 00 */	li r4, 0
/* 8000466C 000015CC  38 63 01 34 */	addi r3, r3, 0x134
/* 80004670 000015D0  4B FF F6 19 */	bl "__as__Q24rstl24single_ptr<10CGameState>FP10CGameState"
/* 80004674 000015D4  38 00 00 00 */	li r0, 0
/* 80004678 000015D8  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8000467C 000015DC  90 0D A0 80 */	stw r0, gpGameState@sda21(r13)
/* 80004680 000015E0  38 61 00 28 */	addi r3, r1, 0x28
/* 80004684 000015E4  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80004688 000015E8  38 C0 00 01 */	li r6, 1
/* 8000468C 000015EC  48 33 AB 81 */	bl __ct__15CMemoryInStreamFPCvUlQ215CMemoryInStream10EOwnerShip
/* 80004690 000015F0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80004694 000015F4  38 60 02 30 */	li r3, 0x230
/* 80004698 000015F8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000469C 000015FC  38 A0 00 00 */	li r5, 0
/* 800046A0 00001600  38 84 00 37 */	addi r4, r4, 0x37
/* 800046A4 00001604  48 31 11 C9 */	bl __nw__FUlPCcPCc
/* 800046A8 00001608  7C 64 1B 79 */	or. r4, r3, r3
/* 800046AC 0000160C  41 82 00 14 */	beq lbl_800046C0
/* 800046B0 00001610  7F E5 FB 78 */	mr r5, r31
/* 800046B4 00001614  38 81 00 28 */	addi r4, r1, 0x28
/* 800046B8 00001618  48 1C FE AD */	bl __ct__10CGameStateFR12CInputStreami
/* 800046BC 0000161C  7C 64 1B 78 */	mr r4, r3
lbl_800046C0:
/* 800046C0 00001620  80 7C 01 28 */	lwz r3, 0x128(r28)
/* 800046C4 00001624  38 63 01 34 */	addi r3, r3, 0x134
/* 800046C8 00001628  4B FF F5 C1 */	bl "__as__Q24rstl24single_ptr<10CGameState>FP10CGameState"
/* 800046CC 0000162C  3C 80 80 3F */	lis r4, __vt__15CMemoryInStream@ha
/* 800046D0 00001630  38 61 00 28 */	addi r3, r1, 0x28
/* 800046D4 00001634  38 04 E3 98 */	addi r0, r4, __vt__15CMemoryInStream@l
/* 800046D8 00001638  38 80 00 00 */	li r4, 0
/* 800046DC 0000163C  90 01 00 28 */	stw r0, 0x28(r1)
/* 800046E0 00001640  48 33 A9 CD */	bl __dt__12CInputStreamFv
/* 800046E4 00001644  80 7C 01 28 */	lwz r3, 0x128(r28)
/* 800046E8 00001648  38 81 00 C8 */	addi r4, r1, 0xc8
/* 800046EC 0000164C  80 63 01 34 */	lwz r3, 0x134(r3)
/* 800046F0 00001650  90 6D A0 80 */	stw r3, gpGameState@sda21(r13)
/* 800046F4 00001654  38 63 00 A8 */	addi r3, r3, 0xa8
/* 800046F8 00001658  4B FF F2 D5 */	bl __as__14CSystemOptionsFRC14CSystemOptions
/* 800046FC 0000165C  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80004700 00001660  38 81 00 4C */	addi r4, r1, 0x4c
/* 80004704 00001664  38 63 01 7C */	addi r3, r3, 0x17c
/* 80004708 00001668  4B FF F0 99 */	bl __as__12CGameOptionsFRC12CGameOptions
/* 8000470C 0000166C  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80004710 00001670  38 63 01 7C */	addi r3, r3, 0x17c
/* 80004714 00001674  48 20 A9 E9 */	bl EnsureOptions__12CGameOptionsFv
/* 80004718 00001678  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 8000471C 0000167C  93 A3 02 14 */	stw r29, 0x214(r3)
/* 80004720 00001680  93 C3 02 10 */	stw r30, 0x210(r3)
/* 80004724 00001684  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80004728 00001688  88 03 01 78 */	lbz r0, 0x178(r3)
/* 8000472C 0000168C  54 1C EF FE */	rlwinm r28, r0, 0x1d, 0x1f, 0x1f
/* 80004730 00001690  48 1C F2 0D */	bl PlayerState__10CGameStateFv
/* 80004734 00001694  80 63 00 00 */	lwz r3, 0(r3)
/* 80004738 00001698  7F 84 E3 78 */	mr r4, r28
/* 8000473C 0000169C  80 63 00 00 */	lwz r3, 0(r3)
/* 80004740 000016A0  48 08 CD 75 */	bl SetIsFusionEnabled__12CPlayerStateFb
/* 80004744 000016A4  38 61 00 4C */	addi r3, r1, 0x4c
/* 80004748 000016A8  38 80 FF FF */	li r4, -1
/* 8000474C 000016AC  4B FF F8 39 */	bl __dt__12CGameOptionsFv
/* 80004750 000016B0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80004754 000016B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80004758 000016B8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8000475C 000016BC  7C 83 02 14 */	add r4, r3, r0
/* 80004760 000016C0  7C 03 20 50 */	subf r0, r3, r4
/* 80004764 000016C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80004768 000016C8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8000476C 000016CC  90 61 00 08 */	stw r3, 8(r1)
/* 80004770 000016D0  7C 09 03 A6 */	mtctr r0
/* 80004774 000016D4  7C 03 20 40 */	cmplw r3, r4
/* 80004778 000016D8  41 82 00 08 */	beq lbl_80004780
lbl_8000477C:
/* 8000477C 000016DC  42 00 00 00 */	bdnz lbl_8000477C
lbl_80004780:
/* 80004780 000016E0  28 03 00 00 */	cmplwi r3, 0
/* 80004784 000016E4  41 82 00 08 */	beq lbl_8000478C
/* 80004788 000016E8  48 31 11 A9 */	bl Free__7CMemoryFPCv
lbl_8000478C:
/* 8000478C 000016EC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80004790 000016F0  38 80 FF FF */	li r4, -1
/* 80004794 000016F4  4B FF FA 45 */	bl __dt__14CSystemOptionsFv
/* 80004798 000016F8  BB 61 01 AC */	lmw r27, 0x1ac(r1)
/* 8000479C 000016FC  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 800047A0 00001700  7C 08 03 A6 */	mtlr r0
/* 800047A4 00001704  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 800047A8 00001708  4E 80 00 20 */	blr

.global __dt__15CMemoryInStreamFv
__dt__15CMemoryInStreamFv:
/* 800047AC 0000170C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800047B0 00001710  7C 08 02 A6 */	mflr r0
/* 800047B4 00001714  90 01 00 14 */	stw r0, 0x14(r1)
/* 800047B8 00001718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800047BC 0000171C  7C 9F 23 78 */	mr r31, r4
/* 800047C0 00001720  93 C1 00 08 */	stw r30, 8(r1)
/* 800047C4 00001724  7C 7E 1B 79 */	or. r30, r3, r3
/* 800047C8 00001728  41 82 00 28 */	beq lbl_800047F0
/* 800047CC 0000172C  3C A0 80 3F */	lis r5, __vt__15CMemoryInStream@ha
/* 800047D0 00001730  38 80 00 00 */	li r4, 0
/* 800047D4 00001734  38 05 E3 98 */	addi r0, r5, __vt__15CMemoryInStream@l
/* 800047D8 00001738  90 1E 00 00 */	stw r0, 0(r30)
/* 800047DC 0000173C  48 33 A8 D1 */	bl __dt__12CInputStreamFv
/* 800047E0 00001740  7F E0 07 35 */	extsh. r0, r31
/* 800047E4 00001744  40 81 00 0C */	ble lbl_800047F0
/* 800047E8 00001748  7F C3 F3 78 */	mr r3, r30
/* 800047EC 0000174C  48 31 11 45 */	bl Free__7CMemoryFPCv
lbl_800047F0:
/* 800047F0 00001750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800047F4 00001754  7F C3 F3 78 */	mr r3, r30
/* 800047F8 00001758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800047FC 0000175C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80004800 00001760  7C 08 03 A6 */	mtlr r0
/* 80004804 00001764  38 21 00 10 */	addi r1, r1, 0x10
/* 80004808 00001768  4E 80 00 20 */	blr

.global nullsub_2
nullsub_2:
/* 8000480C 0000176C  4E 80 00 20 */	blr

.global EnsureWorldPaksReady__5CMainFv
EnsureWorldPaksReady__5CMainFv:
/* 80004810 00001770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80004814 00001774  7C 08 02 A6 */	mflr r0
/* 80004818 00001778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000481C 0000177C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80004820 00001780  93 C1 00 08 */	stw r30, 8(r1)
/* 80004824 00001784  3B C0 00 00 */	li r30, 0
/* 80004828 00001788  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 8000482C 0000178C  3B E3 00 04 */	addi r31, r3, 4
/* 80004830 00001790  48 00 00 24 */	b lbl_80004854
lbl_80004834:
/* 80004834 00001794  7F E3 FB 78 */	mr r3, r31
/* 80004838 00001798  7F C4 F3 78 */	mr r4, r30
/* 8000483C 0000179C  48 33 64 75 */	bl GetPakFile__10CResLoaderCFi
/* 80004840 000017A0  88 03 00 28 */	lbz r0, 0x28(r3)
/* 80004844 000017A4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80004848 000017A8  41 82 00 08 */	beq lbl_80004850
/* 8000484C 000017AC  48 36 29 F1 */	bl EnsureWorldPakReady__8CPakFileFv
lbl_80004850:
/* 80004850 000017B0  3B DE 00 01 */	addi r30, r30, 1
lbl_80004854:
/* 80004854 000017B4  7F E3 FB 78 */	mr r3, r31
/* 80004858 000017B8  48 33 65 55 */	bl GetPakCount__10CResLoaderCFv
/* 8000485C 000017BC  7C 1E 18 00 */	cmpw r30, r3
/* 80004860 000017C0  41 80 FF D4 */	blt lbl_80004834
/* 80004864 000017C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80004868 000017C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000486C 000017CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80004870 000017D0  7C 08 03 A6 */	mtlr r0
/* 80004874 000017D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80004878 000017D8  4E 80 00 20 */	blr

.global EnsureWorldPakReady__5CMainFUi
EnsureWorldPakReady__5CMainFUi:
/* 8000487C 000017DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80004880 000017E0  7C 08 02 A6 */	mflr r0
/* 80004884 000017E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80004888 000017E8  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 8000488C 000017EC  7C 7B 1B 78 */	mr r27, r3
/* 80004890 000017F0  3B C0 00 00 */	li r30, 0
/* 80004894 000017F4  80 8D A0 60 */	lwz r4, gpResourceFactory@sda21(r13)
/* 80004898 000017F8  3B E4 00 04 */	addi r31, r4, 4
/* 8000489C 000017FC  48 00 01 2C */	b lbl_800049C8
lbl_800048A0:
/* 800048A0 00001800  7F E3 FB 78 */	mr r3, r31
/* 800048A4 00001804  7F C4 F3 78 */	mr r4, r30
/* 800048A8 00001808  3B A0 00 01 */	li r29, 1
/* 800048AC 0000180C  48 33 64 05 */	bl GetPakFile__10CResLoaderCFi
/* 800048B0 00001810  88 03 00 28 */	lbz r0, 0x28(r3)
/* 800048B4 00001814  7C 7C 1B 78 */	mr r28, r3
/* 800048B8 00001818  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 800048BC 0000181C  41 82 01 08 */	beq lbl_800049C4
/* 800048C0 00001820  80 1C 00 58 */	lwz r0, 0x58(r28)
/* 800048C4 00001824  90 01 00 0C */	stw r0, 0xc(r1)
/* 800048C8 00001828  2C 00 00 00 */	cmpwi r0, 0
/* 800048CC 0000182C  80 1C 00 5C */	lwz r0, 0x5c(r28)
/* 800048D0 00001830  90 01 00 10 */	stw r0, 0x10(r1)
/* 800048D4 00001834  40 82 00 18 */	bne lbl_800048EC
/* 800048D8 00001838  2C 00 00 00 */	cmpwi r0, 0
/* 800048DC 0000183C  40 82 00 10 */	bne lbl_800048EC
/* 800048E0 00001840  38 00 00 00 */	li r0, 0
/* 800048E4 00001844  90 01 00 14 */	stw r0, 0x14(r1)
/* 800048E8 00001848  48 00 00 84 */	b lbl_8000496C
lbl_800048EC:
/* 800048EC 0000184C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800048F0 00001850  1C 60 00 18 */	mulli r3, r0, 0x18
/* 800048F4 00001854  2C 03 00 00 */	cmpwi r3, 0
/* 800048F8 00001858  40 82 00 10 */	bne lbl_80004908
/* 800048FC 0000185C  38 00 00 00 */	li r0, 0
/* 80004900 00001860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80004904 00001864  48 00 00 1C */	b lbl_80004920
lbl_80004908:
/* 80004908 00001868  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 8000490C 0000186C  38 A0 00 00 */	li r5, 0
/* 80004910 00001870  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80004914 00001874  38 84 00 37 */	addi r4, r4, 0x37
/* 80004918 00001878  48 31 0F 01 */	bl __nwa__FUlPCcPCc
/* 8000491C 0000187C  90 61 00 14 */	stw r3, 0x14(r1)
lbl_80004920:
/* 80004920 00001880  82 E1 00 0C */	lwz r23, 0xc(r1)
/* 80004924 00001884  3B 40 00 00 */	li r26, 0
/* 80004928 00001888  83 1C 00 60 */	lwz r24, 0x60(r28)
/* 8000492C 0000188C  83 21 00 14 */	lwz r25, 0x14(r1)
/* 80004930 00001890  48 00 00 34 */	b lbl_80004964
lbl_80004934:
/* 80004934 00001894  28 19 00 00 */	cmplwi r25, 0
/* 80004938 00001898  41 82 00 20 */	beq lbl_80004958
/* 8000493C 0000189C  7F 23 CB 78 */	mr r3, r25
/* 80004940 000018A0  7F 04 C3 78 */	mr r4, r24
/* 80004944 000018A4  48 33 98 1D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80004948 000018A8  80 18 00 10 */	lwz r0, 0x10(r24)
/* 8000494C 000018AC  90 19 00 10 */	stw r0, 0x10(r25)
/* 80004950 000018B0  80 18 00 14 */	lwz r0, 0x14(r24)
/* 80004954 000018B4  90 19 00 14 */	stw r0, 0x14(r25)
lbl_80004958:
/* 80004958 000018B8  3B 39 00 18 */	addi r25, r25, 0x18
/* 8000495C 000018BC  3B 5A 00 01 */	addi r26, r26, 1
/* 80004960 000018C0  3B 18 00 18 */	addi r24, r24, 0x18
lbl_80004964:
/* 80004964 000018C4  7C 1A B8 00 */	cmpw r26, r23
/* 80004968 000018C8  41 80 FF CC */	blt lbl_80004934
lbl_8000496C:
/* 8000496C 000018CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80004970 000018D0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80004974 000018D4  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80004978 000018D8  7C 64 02 14 */	add r3, r4, r0
/* 8000497C 000018DC  48 00 00 18 */	b lbl_80004994
lbl_80004980:
/* 80004980 000018E0  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80004984 000018E4  7C 1B 00 40 */	cmplw r27, r0
/* 80004988 000018E8  40 82 00 08 */	bne lbl_80004990
/* 8000498C 000018EC  3B A0 00 00 */	li r29, 0
lbl_80004990:
/* 80004990 000018F0  38 84 00 18 */	addi r4, r4, 0x18
lbl_80004994:
/* 80004994 000018F4  7C 04 18 40 */	cmplw r4, r3
/* 80004998 000018F8  40 82 FF E8 */	bne lbl_80004980
/* 8000499C 000018FC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800049A0 00001900  41 82 00 10 */	beq lbl_800049B0
/* 800049A4 00001904  7F 83 E3 78 */	mr r3, r28
/* 800049A8 00001908  48 36 2A 85 */	bl sub_8036742c
/* 800049AC 0000190C  48 00 00 0C */	b lbl_800049B8
lbl_800049B0:
/* 800049B0 00001910  7F 83 E3 78 */	mr r3, r28
/* 800049B4 00001914  48 36 28 89 */	bl EnsureWorldPakReady__8CPakFileFv
lbl_800049B8:
/* 800049B8 00001918  38 61 00 08 */	addi r3, r1, 8
/* 800049BC 0000191C  38 80 FF FF */	li r4, -1
/* 800049C0 00001920  48 00 00 2D */	bl sub_800049ec
lbl_800049C4:
/* 800049C4 00001924  3B DE 00 01 */	addi r30, r30, 1
lbl_800049C8:
/* 800049C8 00001928  7F E3 FB 78 */	mr r3, r31
/* 800049CC 0000192C  48 33 63 E1 */	bl GetPakCount__10CResLoaderCFv
/* 800049D0 00001930  7C 1E 18 00 */	cmpw r30, r3
/* 800049D4 00001934  41 80 FE CC */	blt lbl_800048A0
/* 800049D8 00001938  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 800049DC 0000193C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800049E0 00001940  7C 08 03 A6 */	mtlr r0
/* 800049E4 00001944  38 21 00 40 */	addi r1, r1, 0x40
/* 800049E8 00001948  4E 80 00 20 */	blr

.global sub_800049ec
sub_800049ec:
/* 800049EC 0000194C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800049F0 00001950  7C 08 02 A6 */	mflr r0
/* 800049F4 00001954  90 01 00 34 */	stw r0, 0x34(r1)
/* 800049F8 00001958  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800049FC 0000195C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80004A00 00001960  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80004A04 00001964  7C 9D 23 78 */	mr r29, r4
/* 80004A08 00001968  93 81 00 20 */	stw r28, 0x20(r1)
/* 80004A0C 0000196C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80004A10 00001970  41 82 00 68 */	beq lbl_80004A78
/* 80004A14 00001974  80 1C 00 04 */	lwz r0, 4(r28)
/* 80004A18 00001978  83 DC 00 0C */	lwz r30, 0xc(r28)
/* 80004A1C 0000197C  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80004A20 00001980  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80004A24 00001984  7F FE 02 14 */	add r31, r30, r0
/* 80004A28 00001988  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80004A2C 0000198C  93 E1 00 08 */	stw r31, 8(r1)
/* 80004A30 00001990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80004A34 00001994  48 00 00 1C */	b lbl_80004A50
lbl_80004A38:
/* 80004A38 00001998  28 1E 00 00 */	cmplwi r30, 0
/* 80004A3C 0000199C  41 82 00 10 */	beq lbl_80004A4C
/* 80004A40 000019A0  41 82 00 0C */	beq lbl_80004A4C
/* 80004A44 000019A4  7F C3 F3 78 */	mr r3, r30
/* 80004A48 000019A8  48 33 90 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80004A4C:
/* 80004A4C 000019AC  3B DE 00 18 */	addi r30, r30, 0x18
lbl_80004A50:
/* 80004A50 000019B0  7C 1E F8 40 */	cmplw r30, r31
/* 80004A54 000019B4  40 82 FF E4 */	bne lbl_80004A38
/* 80004A58 000019B8  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80004A5C 000019BC  28 03 00 00 */	cmplwi r3, 0
/* 80004A60 000019C0  41 82 00 08 */	beq lbl_80004A68
/* 80004A64 000019C4  48 31 0E CD */	bl Free__7CMemoryFPCv
lbl_80004A68:
/* 80004A68 000019C8  7F A0 07 35 */	extsh. r0, r29
/* 80004A6C 000019CC  40 81 00 0C */	ble lbl_80004A78
/* 80004A70 000019D0  7F 83 E3 78 */	mr r3, r28
/* 80004A74 000019D4  48 31 0E BD */	bl Free__7CMemoryFPCv
lbl_80004A78:
/* 80004A78 000019D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80004A7C 000019DC  7F 83 E3 78 */	mr r3, r28
/* 80004A80 000019E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80004A84 000019E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80004A88 000019E8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80004A8C 000019EC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80004A90 000019F0  7C 08 03 A6 */	mtlr r0
/* 80004A94 000019F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80004A98 000019F8  4E 80 00 20 */	blr

.global sub_80004a9c
sub_80004a9c:
/* 80004A9C 000019FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80004AA0 00001A00  7C 08 02 A6 */	mflr r0
/* 80004AA4 00001A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80004AA8 00001A08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80004AAC 00001A0C  7C 9F 23 78 */	mr r31, r4
/* 80004AB0 00001A10  93 C1 00 08 */	stw r30, 8(r1)
/* 80004AB4 00001A14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80004AB8 00001A18  41 82 00 18 */	beq lbl_80004AD0
/* 80004ABC 00001A1C  48 33 90 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80004AC0 00001A20  7F E0 07 35 */	extsh. r0, r31
/* 80004AC4 00001A24  40 81 00 0C */	ble lbl_80004AD0
/* 80004AC8 00001A28  7F C3 F3 78 */	mr r3, r30
/* 80004ACC 00001A2C  48 31 0E 65 */	bl Free__7CMemoryFPCv
lbl_80004AD0:
/* 80004AD0 00001A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80004AD4 00001A34  7F C3 F3 78 */	mr r3, r30
/* 80004AD8 00001A38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80004ADC 00001A3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80004AE0 00001A40  7C 08 03 A6 */	mtlr r0
/* 80004AE4 00001A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80004AE8 00001A48  4E 80 00 20 */	blr

.global AddWorldPaks__5CMainFv
AddWorldPaks__5CMainFv:
/* 80004AEC 00001A4C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80004AF0 00001A50  7C 08 02 A6 */	mflr r0
/* 80004AF4 00001A54  90 01 00 94 */	stw r0, 0x94(r1)
/* 80004AF8 00001A58  38 61 00 6C */	addi r3, r1, 0x6c
/* 80004AFC 00001A5C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80004B00 00001A60  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80004B04 00001A64  93 A1 00 84 */	stw r29, 0x84(r1)
/* 80004B08 00001A68  93 81 00 80 */	stw r28, 0x80(r1)
/* 80004B0C 00001A6C  80 8D A1 20 */	lwz r4, gpTweakGame@sda21(r13)
/* 80004B10 00001A70  38 84 00 04 */	addi r4, r4, 4
/* 80004B14 00001A74  48 33 96 4D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80004B18 00001A78  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 80004B1C 00001A7C  3B A0 00 00 */	li r29, 0
/* 80004B20 00001A80  3B C3 BE 74 */	addi r30, r3, lbl_803CBE74@l
lbl_80004B24:
/* 80004B24 00001A84  2C 1D 00 00 */	cmpwi r29, 0
/* 80004B28 00001A88  3B E0 00 00 */	li r31, 0
/* 80004B2C 00001A8C  3B 80 00 00 */	li r28, 0
/* 80004B30 00001A90  40 82 00 24 */	bne lbl_80004B54
/* 80004B34 00001A94  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80004B38 00001A98  38 61 00 4C */	addi r3, r1, 0x4c
/* 80004B3C 00001A9C  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80004B40 00001AA0  38 84 00 3E */	addi r4, r4, 0x3e
/* 80004B44 00001AA4  48 00 01 75 */	bl string_l__4rstlFPCc
/* 80004B48 00001AA8  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80004B4C 00001AAC  3B E0 00 01 */	li r31, 1
/* 80004B50 00001AB0  48 00 00 38 */	b lbl_80004B88
lbl_80004B54:
/* 80004B54 00001AB4  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 80004B58 00001AB8  7F A4 EB 78 */	mr r4, r29
/* 80004B5C 00001ABC  38 63 BE 74 */	addi r3, r3, lbl_803CBE74@l
/* 80004B60 00001AC0  38 63 00 3F */	addi r3, r3, 0x3f
/* 80004B64 00001AC4  4C C6 31 82 */	crclr 6
/* 80004B68 00001AC8  48 2D 16 49 */	bl Stringize__7CBasicsFPCce
/* 80004B6C 00001ACC  7C 64 1B 78 */	mr r4, r3
/* 80004B70 00001AD0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80004B74 00001AD4  38 C1 00 08 */	addi r6, r1, 8
/* 80004B78 00001AD8  38 A0 FF FF */	li r5, -1
/* 80004B7C 00001ADC  48 33 96 19 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80004B80 00001AE0  3B 80 00 01 */	li r28, 1
/* 80004B84 00001AE4  38 A1 00 3C */	addi r5, r1, 0x3c
lbl_80004B88:
/* 80004B88 00001AE8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80004B8C 00001AEC  38 81 00 6C */	addi r4, r1, 0x6c
/* 80004B90 00001AF0  48 00 00 CD */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80004B94 00001AF4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80004B98 00001AF8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80004B9C 00001AFC  48 33 95 C5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80004BA0 00001B00  38 61 00 2C */	addi r3, r1, 0x2c
/* 80004BA4 00001B04  48 33 8F 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80004BA8 00001B08  7F 80 07 75 */	extsb. r0, r28
/* 80004BAC 00001B0C  41 82 00 0C */	beq lbl_80004BB8
/* 80004BB0 00001B10  38 61 00 3C */	addi r3, r1, 0x3c
/* 80004BB4 00001B14  48 33 8F 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80004BB8:
/* 80004BB8 00001B18  7F E0 07 75 */	extsb. r0, r31
/* 80004BBC 00001B1C  41 82 00 0C */	beq lbl_80004BC8
/* 80004BC0 00001B20  38 61 00 4C */	addi r3, r1, 0x4c
/* 80004BC4 00001B24  48 33 8F 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80004BC8:
/* 80004BC8 00001B28  38 61 00 1C */	addi r3, r1, 0x1c
/* 80004BCC 00001B2C  38 9E 00 42 */	addi r4, r30, 0x42
/* 80004BD0 00001B30  48 00 00 E9 */	bl string_l__4rstlFPCc
/* 80004BD4 00001B34  38 61 00 0C */	addi r3, r1, 0xc
/* 80004BD8 00001B38  38 81 00 5C */	addi r4, r1, 0x5c
/* 80004BDC 00001B3C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80004BE0 00001B40  48 00 00 7D */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80004BE4 00001B44  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80004BE8 00001B48  48 34 AD 65 */	bl FileExists__8CDvdFileFPCc
/* 80004BEC 00001B4C  7C 7F 1B 78 */	mr r31, r3
/* 80004BF0 00001B50  38 61 00 0C */	addi r3, r1, 0xc
/* 80004BF4 00001B54  48 33 8E ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80004BF8 00001B58  38 61 00 1C */	addi r3, r1, 0x1c
/* 80004BFC 00001B5C  48 33 8E E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80004C00 00001B60  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80004C04 00001B64  41 82 00 1C */	beq lbl_80004C20
/* 80004C08 00001B68  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 80004C0C 00001B6C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80004C10 00001B70  38 A0 00 00 */	li r5, 0
/* 80004C14 00001B74  38 C0 00 01 */	li r6, 1
/* 80004C18 00001B78  38 63 00 04 */	addi r3, r3, 4
/* 80004C1C 00001B7C  48 33 69 41 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
lbl_80004C20:
/* 80004C20 00001B80  38 61 00 5C */	addi r3, r1, 0x5c
/* 80004C24 00001B84  48 33 8E BD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80004C28 00001B88  3B BD 00 01 */	addi r29, r29, 1
/* 80004C2C 00001B8C  2C 1D 00 09 */	cmpwi r29, 9
/* 80004C30 00001B90  41 80 FE F4 */	blt lbl_80004B24
/* 80004C34 00001B94  38 61 00 6C */	addi r3, r1, 0x6c
/* 80004C38 00001B98  48 33 8E A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80004C3C 00001B9C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80004C40 00001BA0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80004C44 00001BA4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80004C48 00001BA8  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 80004C4C 00001BAC  83 81 00 80 */	lwz r28, 0x80(r1)
/* 80004C50 00001BB0  7C 08 03 A6 */	mtlr r0
/* 80004C54 00001BB4  38 21 00 90 */	addi r1, r1, 0x90
/* 80004C58 00001BB8  4E 80 00 20 */	blr

.global "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 80004C5C 00001BBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80004C60 00001BC0  7C 08 02 A6 */	mflr r0
/* 80004C64 00001BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80004C68 00001BC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80004C6C 00001BCC  7C BF 2B 78 */	mr r31, r5
/* 80004C70 00001BD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80004C74 00001BD4  7C 7E 1B 78 */	mr r30, r3
/* 80004C78 00001BD8  38 61 00 08 */	addi r3, r1, 8
/* 80004C7C 00001BDC  48 33 94 E5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80004C80 00001BE0  7F E4 FB 78 */	mr r4, r31
/* 80004C84 00001BE4  38 61 00 08 */	addi r3, r1, 8
/* 80004C88 00001BE8  48 33 93 B1 */	bl "append__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80004C8C 00001BEC  7F C3 F3 78 */	mr r3, r30
/* 80004C90 00001BF0  38 81 00 08 */	addi r4, r1, 8
/* 80004C94 00001BF4  48 33 94 CD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80004C98 00001BF8  38 61 00 08 */	addi r3, r1, 8
/* 80004C9C 00001BFC  48 33 8E 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80004CA0 00001C00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80004CA4 00001C04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80004CA8 00001C08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80004CAC 00001C0C  7C 08 03 A6 */	mtlr r0
/* 80004CB0 00001C10  38 21 00 20 */	addi r1, r1, 0x20
/* 80004CB4 00001C14  4E 80 00 20 */	blr

.global string_l__4rstlFPCc
string_l__4rstlFPCc:
/* 80004CB8 00001C18  90 83 00 00 */	stw r4, 0(r3)
/* 80004CBC 00001C1C  38 00 00 00 */	li r0, 0
/* 80004CC0 00001C20  7C 85 23 78 */	mr r5, r4
/* 80004CC4 00001C24  90 03 00 04 */	stw r0, 4(r3)
/* 80004CC8 00001C28  48 00 00 08 */	b lbl_80004CD0
lbl_80004CCC:
/* 80004CCC 00001C2C  38 A5 00 01 */	addi r5, r5, 1
lbl_80004CD0:
/* 80004CD0 00001C30  88 05 00 00 */	lbz r0, 0(r5)
/* 80004CD4 00001C34  7C 00 07 75 */	extsb. r0, r0
/* 80004CD8 00001C38  40 82 FF F4 */	bne lbl_80004CCC
/* 80004CDC 00001C3C  7C 04 28 50 */	subf r0, r4, r5
/* 80004CE0 00001C40  90 03 00 08 */	stw r0, 8(r3)
/* 80004CE4 00001C44  4E 80 00 20 */	blr

.global AsyncIdle__5CMainFUl
AsyncIdle__5CMainFUl:
/* 80004CE8 00001C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80004CEC 00001C4C  7C 08 02 A6 */	mflr r0
/* 80004CF0 00001C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80004CF4 00001C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80004CF8 00001C58  7C 9F 23 78 */	mr r31, r4
/* 80004CFC 00001C5C  28 1F 01 F4 */	cmplwi r31, 0x1f4
/* 80004D00 00001C60  93 C1 00 08 */	stw r30, 8(r1)
/* 80004D04 00001C64  7C 7E 1B 78 */	mr r30, r3
/* 80004D08 00001C68  40 80 00 64 */	bge lbl_80004D6C
/* 80004D0C 00001C6C  80 9E 01 34 */	lwz r4, 0x134(r30)
/* 80004D10 00001C70  80 7E 01 38 */	lwz r3, 0x138(r30)
/* 80004D14 00001C74  80 1E 01 3C */	lwz r0, 0x13c(r30)
/* 80004D18 00001C78  7C A4 1A 14 */	add r5, r4, r3
/* 80004D1C 00001C7C  80 7E 01 40 */	lwz r3, 0x140(r30)
/* 80004D20 00001C80  7C A5 02 14 */	add r5, r5, r0
/* 80004D24 00001C84  80 1E 01 44 */	lwz r0, 0x144(r30)
/* 80004D28 00001C88  7C A5 1A 14 */	add r5, r5, r3
/* 80004D2C 00001C8C  80 9E 01 48 */	lwz r4, 0x148(r30)
/* 80004D30 00001C90  7C A5 02 14 */	add r5, r5, r0
/* 80004D34 00001C94  80 7E 01 4C */	lwz r3, 0x14c(r30)
/* 80004D38 00001C98  7C A5 22 14 */	add r5, r5, r4
/* 80004D3C 00001C9C  80 1E 01 50 */	lwz r0, 0x150(r30)
/* 80004D40 00001CA0  7C A5 1A 14 */	add r5, r5, r3
/* 80004D44 00001CA4  80 7E 01 54 */	lwz r3, 0x154(r30)
/* 80004D48 00001CA8  7C A5 02 14 */	add r5, r5, r0
/* 80004D4C 00001CAC  80 1E 01 58 */	lwz r0, 0x158(r30)
/* 80004D50 00001CB0  7C A5 1A 14 */	add r5, r5, r3
/* 80004D54 00001CB4  7C A5 02 14 */	add r5, r5, r0
/* 80004D58 00001CB8  28 05 13 88 */	cmplwi r5, 0x1388
/* 80004D5C 00001CBC  40 80 00 0C */	bge lbl_80004D68
/* 80004D60 00001CC0  3B E0 01 F4 */	li r31, 0x1f4
/* 80004D64 00001CC4  48 00 00 08 */	b lbl_80004D6C
lbl_80004D68:
/* 80004D68 00001CC8  3B E0 00 00 */	li r31, 0
lbl_80004D6C:
/* 80004D6C 00001CCC  28 1F 00 00 */	cmplwi r31, 0
/* 80004D70 00001CD0  41 82 00 10 */	beq lbl_80004D80
/* 80004D74 00001CD4  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 80004D78 00001CD8  7F E4 FB 78 */	mr r4, r31
/* 80004D7C 00001CDC  48 33 4E 55 */	bl AsyncIdle__11CResFactoryFUl
lbl_80004D80:
/* 80004D80 00001CE0  80 1E 01 5C */	lwz r0, 0x15c(r30)
/* 80004D84 00001CE4  54 00 10 3A */	slwi r0, r0, 2
/* 80004D88 00001CE8  7C 7E 02 14 */	add r3, r30, r0
/* 80004D8C 00001CEC  93 E3 01 34 */	stw r31, 0x134(r3)
/* 80004D90 00001CF0  80 7E 01 5C */	lwz r3, 0x15c(r30)
/* 80004D94 00001CF4  38 03 00 01 */	addi r0, r3, 1
/* 80004D98 00001CF8  90 1E 01 5C */	stw r0, 0x15c(r30)
/* 80004D9C 00001CFC  80 1E 01 5C */	lwz r0, 0x15c(r30)
/* 80004DA0 00001D00  2C 00 00 0A */	cmpwi r0, 0xa
/* 80004DA4 00001D04  41 80 00 0C */	blt lbl_80004DB0
/* 80004DA8 00001D08  38 00 00 00 */	li r0, 0
/* 80004DAC 00001D0C  90 1E 01 5C */	stw r0, 0x15c(r30)
lbl_80004DB0:
/* 80004DB0 00001D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80004DB4 00001D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80004DB8 00001D18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80004DBC 00001D1C  7C 08 03 A6 */	mtlr r0
/* 80004DC0 00001D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80004DC4 00001D24  4E 80 00 20 */	blr

.global RsMain__5CMainFiPCPCc
RsMain__5CMainFiPCPCc:
/* 80004DC8 00001D28  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80004DCC 00001D2C  7C 08 02 A6 */	mflr r0
/* 80004DD0 00001D30  90 01 01 54 */	stw r0, 0x154(r1)
/* 80004DD4 00001D34  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80004DD8 00001D38  F3 E1 01 48 */	psq_st f31, 328(r1), 0, qr0
/* 80004DDC 00001D3C  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 80004DE0 00001D40  F3 C1 01 38 */	psq_st f30, 312(r1), 0, qr0
/* 80004DE4 00001D44  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 80004DE8 00001D48  F3 A1 01 28 */	psq_st f29, 296(r1), 0, qr0
/* 80004DEC 00001D4C  BF 41 01 08 */	stmw r26, 0x108(r1)
/* 80004DF0 00001D50  7C 7D 1B 78 */	mr r29, r3
/* 80004DF4 00001D54  48 36 AA C9 */	bl PPCSetFpIEEEMode
/* 80004DF8 00001D58  48 38 05 B1 */	bl OSGetTime
/* 80004DFC 00001D5C  7C 9A 23 78 */	mr r26, r4
/* 80004E00 00001D60  7C 7B 1B 78 */	mr r27, r3
/* 80004E04 00001D64  48 37 9E B5 */	bl LCEnable
/* 80004E08 00001D68  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80004E0C 00001D6C  38 60 01 5C */	li r3, 0x15c
/* 80004E10 00001D70  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80004E14 00001D74  38 A0 00 00 */	li r5, 0
/* 80004E18 00001D78  38 84 00 37 */	addi r4, r4, 0x37
/* 80004E1C 00001D7C  48 00 39 ED */	bl "__nw__32TOneStatic<18CGameGlobalObjects>FUlPCcPCc"
/* 80004E20 00001D80  7C 60 1B 79 */	or. r0, r3, r3
/* 80004E24 00001D84  41 82 00 14 */	beq lbl_80004E38
/* 80004E28 00001D88  7F A4 EB 78 */	mr r4, r29
/* 80004E2C 00001D8C  38 BD 00 6D */	addi r5, r29, 0x6d
/* 80004E30 00001D90  48 00 2C 8D */	bl __ct__18CGameGlobalObjectsFR10COsContextR10CMemorySys
/* 80004E34 00001D94  7C 60 1B 78 */	mr r0, r3
lbl_80004E38:
/* 80004E38 00001D98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80004E3C 00001D9C  3B DD 00 F4 */	addi r30, r29, 0xf4
/* 80004E40 00001DA0  3B FD 01 08 */	addi r31, r29, 0x108
/* 80004E44 00001DA4  38 60 00 00 */	li r3, 0
/* 80004E48 00001DA8  90 1D 01 28 */	stw r0, 0x128(r29)
lbl_80004E4C:
/* 80004E4C 00001DAC  80 1D 00 F0 */	lwz r0, 0xf0(r29)
/* 80004E50 00001DB0  2C 00 00 04 */	cmpwi r0, 4
/* 80004E54 00001DB4  40 80 00 24 */	bge lbl_80004E78
/* 80004E58 00001DB8  54 00 10 3A */	slwi r0, r0, 2
/* 80004E5C 00001DBC  7C 9E 02 15 */	add. r4, r30, r0
/* 80004E60 00001DC0  41 82 00 0C */	beq lbl_80004E6C
/* 80004E64 00001DC4  C0 0D 80 08 */	lfs f0, lbl_805A6BC8@sda21(r13)
/* 80004E68 00001DC8  D0 04 00 00 */	stfs f0, 0(r4)
lbl_80004E6C:
/* 80004E6C 00001DCC  80 9D 00 F0 */	lwz r4, 0xf0(r29)
/* 80004E70 00001DD0  38 04 00 01 */	addi r0, r4, 1
/* 80004E74 00001DD4  90 1D 00 F0 */	stw r0, 0xf0(r29)
lbl_80004E78:
/* 80004E78 00001DD8  80 9D 00 F0 */	lwz r4, 0xf0(r29)
/* 80004E7C 00001DDC  34 C4 FF FF */	addic. r6, r4, -1
/* 80004E80 00001DE0  54 C0 10 3A */	slwi r0, r6, 2
/* 80004E84 00001DE4  7C C4 33 78 */	mr r4, r6
/* 80004E88 00001DE8  7C FE 02 14 */	add r7, r30, r0
/* 80004E8C 00001DEC  40 81 00 C4 */	ble lbl_80004F50
/* 80004E90 00001DF0  54 C0 E8 FF */	rlwinm. r0, r6, 0x1d, 3, 0x1f
/* 80004E94 00001DF4  7C 09 03 A6 */	mtctr r0
/* 80004E98 00001DF8  41 82 00 98 */	beq lbl_80004F30
lbl_80004E9C:
/* 80004E9C 00001DFC  38 A6 FF FF */	addi r5, r6, -1
/* 80004EA0 00001E00  54 A0 10 3A */	slwi r0, r5, 2
/* 80004EA4 00001E04  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80004EA8 00001E08  38 A6 FF FE */	addi r5, r6, -2
/* 80004EAC 00001E0C  54 A0 10 3A */	slwi r0, r5, 2
/* 80004EB0 00001E10  D0 07 00 00 */	stfs f0, 0(r7)
/* 80004EB4 00001E14  38 A6 FF FD */	addi r5, r6, -3
/* 80004EB8 00001E18  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80004EBC 00001E1C  54 A0 10 3A */	slwi r0, r5, 2
/* 80004EC0 00001E20  38 A6 FF FC */	addi r5, r6, -4
/* 80004EC4 00001E24  D0 07 FF FC */	stfs f0, -4(r7)
/* 80004EC8 00001E28  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80004ECC 00001E2C  54 A0 10 3A */	slwi r0, r5, 2
/* 80004ED0 00001E30  38 A6 FF FB */	addi r5, r6, -5
/* 80004ED4 00001E34  D0 07 FF F8 */	stfs f0, -8(r7)
/* 80004ED8 00001E38  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80004EDC 00001E3C  54 A0 10 3A */	slwi r0, r5, 2
/* 80004EE0 00001E40  38 A6 FF FA */	addi r5, r6, -6
/* 80004EE4 00001E44  D0 07 FF F4 */	stfs f0, -0xc(r7)
/* 80004EE8 00001E48  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80004EEC 00001E4C  54 A0 10 3A */	slwi r0, r5, 2
/* 80004EF0 00001E50  38 A6 FF F9 */	addi r5, r6, -7
/* 80004EF4 00001E54  D0 07 FF F0 */	stfs f0, -0x10(r7)
/* 80004EF8 00001E58  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80004EFC 00001E5C  54 A0 10 3A */	slwi r0, r5, 2
/* 80004F00 00001E60  38 A6 FF F8 */	addi r5, r6, -8
/* 80004F04 00001E64  38 C6 FF F8 */	addi r6, r6, -8
/* 80004F08 00001E68  D0 07 FF EC */	stfs f0, -0x14(r7)
/* 80004F0C 00001E6C  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80004F10 00001E70  54 A0 10 3A */	slwi r0, r5, 2
/* 80004F14 00001E74  D0 07 FF E8 */	stfs f0, -0x18(r7)
/* 80004F18 00001E78  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80004F1C 00001E7C  D0 07 FF E4 */	stfs f0, -0x1c(r7)
/* 80004F20 00001E80  38 E7 FF E0 */	addi r7, r7, -32
/* 80004F24 00001E84  42 00 FF 78 */	bdnz lbl_80004E9C
/* 80004F28 00001E88  70 84 00 07 */	andi. r4, r4, 7
/* 80004F2C 00001E8C  41 82 00 24 */	beq lbl_80004F50
lbl_80004F30:
/* 80004F30 00001E90  7C 89 03 A6 */	mtctr r4
lbl_80004F34:
/* 80004F34 00001E94  38 A6 FF FF */	addi r5, r6, -1
/* 80004F38 00001E98  38 C6 FF FF */	addi r6, r6, -1
/* 80004F3C 00001E9C  54 A0 10 3A */	slwi r0, r5, 2
/* 80004F40 00001EA0  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80004F44 00001EA4  D0 07 00 00 */	stfs f0, 0(r7)
/* 80004F48 00001EA8  38 E7 FF FC */	addi r7, r7, -4
/* 80004F4C 00001EAC  42 00 FF E8 */	bdnz lbl_80004F34
lbl_80004F50:
/* 80004F50 00001EB0  C0 0D 80 08 */	lfs f0, lbl_805A6BC8@sda21(r13)
/* 80004F54 00001EB4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80004F58 00001EB8  80 1D 01 04 */	lwz r0, 0x104(r29)
/* 80004F5C 00001EBC  2C 00 00 04 */	cmpwi r0, 4
/* 80004F60 00001EC0  40 80 00 24 */	bge lbl_80004F84
/* 80004F64 00001EC4  54 00 10 3A */	slwi r0, r0, 2
/* 80004F68 00001EC8  7C 9F 02 15 */	add. r4, r31, r0
/* 80004F6C 00001ECC  41 82 00 0C */	beq lbl_80004F78
/* 80004F70 00001ED0  C0 0D 80 0C */	lfs f0, lbl_805A6BCC@sda21(r13)
/* 80004F74 00001ED4  D0 04 00 00 */	stfs f0, 0(r4)
lbl_80004F78:
/* 80004F78 00001ED8  80 9D 01 04 */	lwz r4, 0x104(r29)
/* 80004F7C 00001EDC  38 04 00 01 */	addi r0, r4, 1
/* 80004F80 00001EE0  90 1D 01 04 */	stw r0, 0x104(r29)
lbl_80004F84:
/* 80004F84 00001EE4  80 9D 01 04 */	lwz r4, 0x104(r29)
/* 80004F88 00001EE8  34 C4 FF FF */	addic. r6, r4, -1
/* 80004F8C 00001EEC  54 C0 10 3A */	slwi r0, r6, 2
/* 80004F90 00001EF0  7C C4 33 78 */	mr r4, r6
/* 80004F94 00001EF4  7C FF 02 14 */	add r7, r31, r0
/* 80004F98 00001EF8  40 81 00 C4 */	ble lbl_8000505C
/* 80004F9C 00001EFC  54 C0 E8 FF */	rlwinm. r0, r6, 0x1d, 3, 0x1f
/* 80004FA0 00001F00  7C 09 03 A6 */	mtctr r0
/* 80004FA4 00001F04  41 82 00 98 */	beq lbl_8000503C
lbl_80004FA8:
/* 80004FA8 00001F08  38 A6 FF FF */	addi r5, r6, -1
/* 80004FAC 00001F0C  54 A0 10 3A */	slwi r0, r5, 2
/* 80004FB0 00001F10  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80004FB4 00001F14  38 A6 FF FE */	addi r5, r6, -2
/* 80004FB8 00001F18  54 A0 10 3A */	slwi r0, r5, 2
/* 80004FBC 00001F1C  D0 07 00 00 */	stfs f0, 0(r7)
/* 80004FC0 00001F20  38 A6 FF FD */	addi r5, r6, -3
/* 80004FC4 00001F24  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80004FC8 00001F28  54 A0 10 3A */	slwi r0, r5, 2
/* 80004FCC 00001F2C  38 A6 FF FC */	addi r5, r6, -4
/* 80004FD0 00001F30  D0 07 FF FC */	stfs f0, -4(r7)
/* 80004FD4 00001F34  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80004FD8 00001F38  54 A0 10 3A */	slwi r0, r5, 2
/* 80004FDC 00001F3C  38 A6 FF FB */	addi r5, r6, -5
/* 80004FE0 00001F40  D0 07 FF F8 */	stfs f0, -8(r7)
/* 80004FE4 00001F44  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80004FE8 00001F48  54 A0 10 3A */	slwi r0, r5, 2
/* 80004FEC 00001F4C  38 A6 FF FA */	addi r5, r6, -6
/* 80004FF0 00001F50  D0 07 FF F4 */	stfs f0, -0xc(r7)
/* 80004FF4 00001F54  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80004FF8 00001F58  54 A0 10 3A */	slwi r0, r5, 2
/* 80004FFC 00001F5C  38 A6 FF F9 */	addi r5, r6, -7
/* 80005000 00001F60  D0 07 FF F0 */	stfs f0, -0x10(r7)
/* 80005004 00001F64  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80005008 00001F68  54 A0 10 3A */	slwi r0, r5, 2
/* 8000500C 00001F6C  38 A6 FF F8 */	addi r5, r6, -8
/* 80005010 00001F70  38 C6 FF F8 */	addi r6, r6, -8
/* 80005014 00001F74  D0 07 FF EC */	stfs f0, -0x14(r7)
/* 80005018 00001F78  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8000501C 00001F7C  54 A0 10 3A */	slwi r0, r5, 2
/* 80005020 00001F80  D0 07 FF E8 */	stfs f0, -0x18(r7)
/* 80005024 00001F84  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80005028 00001F88  D0 07 FF E4 */	stfs f0, -0x1c(r7)
/* 8000502C 00001F8C  38 E7 FF E0 */	addi r7, r7, -32
/* 80005030 00001F90  42 00 FF 78 */	bdnz lbl_80004FA8
/* 80005034 00001F94  70 84 00 07 */	andi. r4, r4, 7
/* 80005038 00001F98  41 82 00 24 */	beq lbl_8000505C
lbl_8000503C:
/* 8000503C 00001F9C  7C 89 03 A6 */	mtctr r4
lbl_80005040:
/* 80005040 00001FA0  38 A6 FF FF */	addi r5, r6, -1
/* 80005044 00001FA4  38 C6 FF FF */	addi r6, r6, -1
/* 80005048 00001FA8  54 A0 10 3A */	slwi r0, r5, 2
/* 8000504C 00001FAC  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80005050 00001FB0  D0 07 00 00 */	stfs f0, 0(r7)
/* 80005054 00001FB4  38 E7 FF FC */	addi r7, r7, -4
/* 80005058 00001FB8  42 00 FF E8 */	bdnz lbl_80005040
lbl_8000505C:
/* 8000505C 00001FBC  C0 0D 80 0C */	lfs f0, lbl_805A6BCC@sda21(r13)
/* 80005060 00001FC0  38 63 00 01 */	addi r3, r3, 1
/* 80005064 00001FC4  2C 03 00 04 */	cmpwi r3, 4
/* 80005068 00001FC8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8000506C 00001FCC  41 80 FD E0 */	blt lbl_80004E4C
/* 80005070 00001FD0  C0 22 80 04 */	lfs f1, lbl_805A9D24@sda21(r2)
/* 80005074 00001FD4  7F A3 EB 78 */	mr r3, r29
/* 80005078 00001FD8  C0 02 80 08 */	lfs f0, lbl_805A9D28@sda21(r2)
/* 8000507C 00001FDC  D0 3D 01 18 */	stfs f1, 0x118(r29)
/* 80005080 00001FE0  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 80005084 00001FE4  48 00 2E 81 */	bl InitializeSubsystems__5CMainFv
/* 80005088 00001FE8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8000508C 00001FEC  7F A4 EB 78 */	mr r4, r29
/* 80005090 00001FF0  38 BD 00 6D */	addi r5, r29, 0x6d
/* 80005094 00001FF4  48 00 26 49 */	bl PostInitialize__18CGameGlobalObjectsFR10COsContextR10CMemorySys
/* 80005098 00001FF8  38 7D 00 70 */	addi r3, r29, 0x70
/* 8000509C 00001FFC  48 03 0B AD */	bl RegisterTweaks__7CTweaksFv
/* 800050A0 00002000  7F A3 EB 78 */	mr r3, r29
/* 800050A4 00002004  4B FF FA 49 */	bl AddWorldPaks__5CMainFv
/* 800050A8 00002008  38 00 00 00 */	li r0, 0
/* 800050AC 0000200C  38 8D A9 18 */	addi r4, r13, "mNull__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 800050B0 00002010  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 800050B4 00002014  90 81 00 50 */	stw r4, 0x50(r1)
/* 800050B8 00002018  38 83 BE 74 */	addi r4, r3, lbl_803CBE74@l
/* 800050BC 0000201C  38 61 00 40 */	addi r3, r1, 0x40
/* 800050C0 00002020  90 01 00 54 */	stw r0, 0x54(r1)
/* 800050C4 00002024  38 84 00 47 */	addi r4, r4, 0x47
/* 800050C8 00002028  90 01 00 58 */	stw r0, 0x58(r1)
/* 800050CC 0000202C  4B FF FB ED */	bl string_l__4rstlFPCc
/* 800050D0 00002030  80 6D A0 88 */	lwz r3, gpTweakManager@sda21(r13)
/* 800050D4 00002034  38 81 00 40 */	addi r4, r1, 0x40
/* 800050D8 00002038  48 21 7B C5 */	bl "ReadFromMemoryCard__19CInGameTweakManagerFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800050DC 0000203C  7C 7C 1B 78 */	mr r28, r3
/* 800050E0 00002040  38 61 00 40 */	addi r3, r1, 0x40
/* 800050E4 00002044  48 33 89 FD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800050E8 00002048  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800050EC 0000204C  41 82 00 34 */	beq lbl_80005120
/* 800050F0 00002050  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 800050F4 00002054  38 61 00 30 */	addi r3, r1, 0x30
/* 800050F8 00002058  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 800050FC 0000205C  38 84 00 53 */	addi r4, r4, 0x53
/* 80005100 00002060  4B FF FB B9 */	bl string_l__4rstlFPCc
/* 80005104 00002064  38 61 00 50 */	addi r3, r1, 0x50
/* 80005108 00002068  38 81 00 30 */	addi r4, r1, 0x30
/* 8000510C 0000206C  48 33 8C 51 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80005110 00002070  38 61 00 30 */	addi r3, r1, 0x30
/* 80005114 00002074  48 33 89 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80005118 00002078  3B 80 00 01 */	li r28, 1
/* 8000511C 0000207C  48 00 00 30 */	b lbl_8000514C
lbl_80005120:
/* 80005120 00002080  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80005124 00002084  38 61 00 20 */	addi r3, r1, 0x20
/* 80005128 00002088  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000512C 0000208C  38 84 00 79 */	addi r4, r4, 0x79
/* 80005130 00002090  4B FF FB 89 */	bl string_l__4rstlFPCc
/* 80005134 00002094  38 61 00 50 */	addi r3, r1, 0x50
/* 80005138 00002098  38 81 00 20 */	addi r4, r1, 0x20
/* 8000513C 0000209C  48 33 8C 21 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80005140 000020A0  38 61 00 20 */	addi r3, r1, 0x20
/* 80005144 000020A4  48 33 89 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80005148 000020A8  3B 80 00 01 */	li r28, 1
lbl_8000514C:
/* 8000514C 000020AC  7F A3 EB 78 */	mr r3, r29
/* 80005150 000020B0  48 00 0E F5 */	bl FillInAssetIDs__5CMainFv
/* 80005154 000020B4  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80005158 000020B8  38 60 00 D0 */	li r3, 0xd0
/* 8000515C 000020BC  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80005160 000020C0  38 A0 00 00 */	li r5, 0
/* 80005164 000020C4  38 84 00 37 */	addi r4, r4, 0x37
/* 80005168 000020C8  48 00 36 15 */	bl "__nw__38TOneStatic<24CGameArchitectureSupport>FUlPCcPCc"
/* 8000516C 000020CC  7C 60 1B 79 */	or. r0, r3, r3
/* 80005170 000020D0  41 82 00 10 */	beq lbl_80005180
/* 80005174 000020D4  7F A4 EB 78 */	mr r4, r29
/* 80005178 000020D8  48 00 1F C1 */	bl __ct__24CGameArchitectureSupportFR10COsContext
/* 8000517C 000020DC  7C 60 1B 78 */	mr r0, r3
lbl_80005180:
/* 80005180 000020E0  90 01 00 08 */	stw r0, 8(r1)
/* 80005184 000020E4  7C 03 03 78 */	mr r3, r0
/* 80005188 000020E8  90 1D 01 64 */	stw r0, 0x164(r29)
/* 8000518C 000020EC  48 00 19 89 */	bl PreloadAudio__24CGameArchitectureSupportFv
/* 80005190 000020F0  48 38 02 19 */	bl OSGetTime
/* 80005194 000020F4  3C A0 80 5A */	lis r5, mData__10CStopwatch@ha
/* 80005198 000020F8  7C 9A 20 10 */	subfc r4, r26, r4
/* 8000519C 000020FC  38 C5 FD 30 */	addi r6, r5, mData__10CStopwatch@l
/* 800051A0 00002100  7C 7B 19 10 */	subfe r3, r27, r3
/* 800051A4 00002104  80 A6 00 08 */	lwz r5, 8(r6)
/* 800051A8 00002108  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 800051AC 0000210C  48 38 4A 21 */	bl __div2i
/* 800051B0 00002110  7C 83 23 78 */	mr r3, r4
/* 800051B4 00002114  48 38 AC C1 */	bl srand
/* 800051B8 00002118  80 8D A0 94 */	lwz r4, lbl_805A8C54@sda21(r13)
/* 800051BC 0000211C  28 04 00 00 */	cmplwi r4, 0
/* 800051C0 00002120  41 82 00 84 */	beq lbl_80005244
/* 800051C4 00002124  38 61 00 60 */	addi r3, r1, 0x60
/* 800051C8 00002128  38 A0 00 80 */	li r5, 0x80
/* 800051CC 0000212C  48 33 A0 01 */	bl __ct__15CMemoryInStreamFPCvUl
/* 800051D0 00002130  38 61 00 60 */	addi r3, r1, 0x60
/* 800051D4 00002134  38 80 00 01 */	li r4, 1
/* 800051D8 00002138  48 33 9B 61 */	bl ReadBits__12CInputStreamFUi
/* 800051DC 0000213C  38 61 00 84 */	addi r3, r1, 0x84
/* 800051E0 00002140  38 81 00 60 */	addi r4, r1, 0x60
/* 800051E4 00002144  48 20 A2 C1 */	bl __ct__12CGameOptionsFR12CInputStream
/* 800051E8 00002148  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 800051EC 0000214C  38 81 00 84 */	addi r4, r1, 0x84
/* 800051F0 00002150  38 63 01 7C */	addi r3, r3, 0x17c
/* 800051F4 00002154  4B FF E5 AD */	bl __as__12CGameOptionsFRC12CGameOptions
/* 800051F8 00002158  38 61 00 84 */	addi r3, r1, 0x84
/* 800051FC 0000215C  38 80 FF FF */	li r4, -1
/* 80005200 00002160  4B FF ED 85 */	bl __dt__12CGameOptionsFv
/* 80005204 00002164  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80005208 00002168  38 63 01 7C */	addi r3, r3, 0x17c
/* 8000520C 0000216C  48 20 9E F1 */	bl EnsureOptions__12CGameOptionsFv
/* 80005210 00002170  38 61 00 60 */	addi r3, r1, 0x60
/* 80005214 00002174  38 80 00 01 */	li r4, 1
/* 80005218 00002178  48 33 9B 21 */	bl ReadBits__12CInputStreamFUi
/* 8000521C 0000217C  7C 03 00 D0 */	neg r0, r3
/* 80005220 00002180  3C 80 80 3F */	lis r4, __vt__15CMemoryInStream@ha
/* 80005224 00002184  7C 00 1B 78 */	or r0, r0, r3
/* 80005228 00002188  38 61 00 60 */	addi r3, r1, 0x60
/* 8000522C 0000218C  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80005230 00002190  38 04 E3 98 */	addi r0, r4, __vt__15CMemoryInStream@l
/* 80005234 00002194  98 AD 80 00 */	stb r5, lbl_805A6BC0@sda21(r13)
/* 80005238 00002198  38 80 00 00 */	li r4, 0
/* 8000523C 0000219C  90 01 00 60 */	stw r0, 0x60(r1)
/* 80005240 000021A0  48 33 9E 6D */	bl __dt__12CInputStreamFv
lbl_80005244:
/* 80005244 000021A4  3C 60 80 5A */	lis r3, mData__10CStopwatch@ha
/* 80005248 000021A8  CB E2 80 10 */	lfd f31, lbl_805A9D30@sda21(r2)
/* 8000524C 000021AC  3B 63 FD 30 */	addi r27, r3, mData__10CStopwatch@l
/* 80005250 000021B0  48 00 05 50 */	b lbl_800057A0
lbl_80005254:
/* 80005254 000021B4  80 1B 00 00 */	lwz r0, 0(r27)
/* 80005258 000021B8  38 60 00 00 */	li r3, 0
/* 8000525C 000021BC  80 9B 00 04 */	lwz r4, 4(r27)
/* 80005260 000021C0  7C 00 1A 78 */	xor r0, r0, r3
/* 80005264 000021C4  83 41 00 08 */	lwz r26, 8(r1)
/* 80005268 000021C8  7C 83 1A 78 */	xor r3, r4, r3
/* 8000526C 000021CC  7C 60 03 79 */	or. r0, r3, r0
/* 80005270 000021D0  40 82 00 10 */	bne lbl_80005280
/* 80005274 000021D4  3C 60 80 5A */	lis r3, mData__10CStopwatch@ha
/* 80005278 000021D8  38 63 FD 30 */	addi r3, r3, mData__10CStopwatch@l
/* 8000527C 000021DC  48 2D 14 A1 */	bl Initialize__Q210CStopwatch7CSWDataFv
lbl_80005280:
/* 80005280 000021E0  48 38 01 29 */	bl OSGetTime
/* 80005284 000021E4  90 9A 00 2C */	stw r4, 0x2c(r26)
/* 80005288 000021E8  90 7A 00 28 */	stw r3, 0x28(r26)
/* 8000528C 000021EC  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 80005290 000021F0  38 63 00 04 */	addi r3, r3, 4
/* 80005294 000021F4  48 33 6B 2D */	bl AsyncIdlePakLoading__10CResLoaderFv
/* 80005298 000021F8  80 0D A0 84 */	lwz r0, gpMemoryCard@sda21(r13)
/* 8000529C 000021FC  28 00 00 00 */	cmplwi r0, 0
/* 800052A0 00002200  40 82 00 20 */	bne lbl_800052C0
/* 800052A4 00002204  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 800052A8 00002208  38 63 00 04 */	addi r3, r3, 4
/* 800052AC 0000220C  48 33 6B 05 */	bl AreAllPaksLoaded__10CResLoaderCFv
/* 800052B0 00002210  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800052B4 00002214  41 82 00 0C */	beq lbl_800052C0
/* 800052B8 00002218  7F A3 EB 78 */	mr r3, r29
/* 800052BC 0000221C  48 00 13 81 */	bl MemoryCardInitializePump__5CMainFv
lbl_800052C0:
/* 800052C0 00002220  48 33 F3 29 */	bl CollectGarbage__12CARAMManagerFv
/* 800052C4 00002224  48 35 32 75 */	bl UpdateAllDMAs__10CARAMTokenFv
/* 800052C8 00002228  80 61 00 08 */	lwz r3, 8(r1)
/* 800052CC 0000222C  48 00 1B 25 */	bl UpdateTicks__24CGameArchitectureSupportFv
/* 800052D0 00002230  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800052D4 00002234  40 82 00 14 */	bne lbl_800052E8
/* 800052D8 00002238  88 1D 01 60 */	lbz r0, 0x160(r29)
/* 800052DC 0000223C  38 60 00 01 */	li r3, 1
/* 800052E0 00002240  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 800052E4 00002244  98 1D 01 60 */	stb r0, 0x160(r29)
lbl_800052E8:
/* 800052E8 00002248  83 41 00 08 */	lwz r26, 8(r1)
/* 800052EC 0000224C  48 38 00 BD */	bl OSGetTime
/* 800052F0 00002250  80 BA 00 2C */	lwz r5, 0x2c(r26)
/* 800052F4 00002254  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 800052F8 00002258  7C 85 20 10 */	subfc r4, r5, r4
/* 800052FC 0000225C  7C 60 19 10 */	subfe r3, r0, r3
/* 80005300 00002260  48 38 4C 65 */	bl __cvt_sll_flt
/* 80005304 00002264  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80005308 00002268  80 1D 00 F0 */	lwz r0, 0xf0(r29)
/* 8000530C 0000226C  EF C1 00 32 */	fmuls f30, f1, f0
/* 80005310 00002270  2C 00 00 04 */	cmpwi r0, 4
/* 80005314 00002274  FC 3E F8 24 */	fdiv f1, f30, f31
/* 80005318 00002278  FC 20 08 18 */	frsp f1, f1
/* 8000531C 0000227C  40 80 00 20 */	bge lbl_8000533C
/* 80005320 00002280  54 00 10 3A */	slwi r0, r0, 2
/* 80005324 00002284  7C 7E 02 15 */	add. r3, r30, r0
/* 80005328 00002288  41 82 00 08 */	beq lbl_80005330
/* 8000532C 0000228C  D0 23 00 00 */	stfs f1, 0(r3)
lbl_80005330:
/* 80005330 00002290  80 7D 00 F0 */	lwz r3, 0xf0(r29)
/* 80005334 00002294  38 03 00 01 */	addi r0, r3, 1
/* 80005338 00002298  90 1D 00 F0 */	stw r0, 0xf0(r29)
lbl_8000533C:
/* 8000533C 0000229C  80 7D 00 F0 */	lwz r3, 0xf0(r29)
/* 80005340 000022A0  34 A3 FF FF */	addic. r5, r3, -1
/* 80005344 000022A4  54 A0 10 3A */	slwi r0, r5, 2
/* 80005348 000022A8  7C A3 2B 78 */	mr r3, r5
/* 8000534C 000022AC  7C DE 02 14 */	add r6, r30, r0
/* 80005350 000022B0  40 81 00 C4 */	ble lbl_80005414
/* 80005354 000022B4  54 A0 E8 FF */	rlwinm. r0, r5, 0x1d, 3, 0x1f
/* 80005358 000022B8  7C 09 03 A6 */	mtctr r0
/* 8000535C 000022BC  41 82 00 98 */	beq lbl_800053F4
lbl_80005360:
/* 80005360 000022C0  38 85 FF FF */	addi r4, r5, -1
/* 80005364 000022C4  54 80 10 3A */	slwi r0, r4, 2
/* 80005368 000022C8  7C 1E 04 2E */	lfsx f0, r30, r0
/* 8000536C 000022CC  38 85 FF FE */	addi r4, r5, -2
/* 80005370 000022D0  54 80 10 3A */	slwi r0, r4, 2
/* 80005374 000022D4  D0 06 00 00 */	stfs f0, 0(r6)
/* 80005378 000022D8  38 85 FF FD */	addi r4, r5, -3
/* 8000537C 000022DC  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80005380 000022E0  54 80 10 3A */	slwi r0, r4, 2
/* 80005384 000022E4  38 85 FF FC */	addi r4, r5, -4
/* 80005388 000022E8  D0 06 FF FC */	stfs f0, -4(r6)
/* 8000538C 000022EC  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80005390 000022F0  54 80 10 3A */	slwi r0, r4, 2
/* 80005394 000022F4  38 85 FF FB */	addi r4, r5, -5
/* 80005398 000022F8  D0 06 FF F8 */	stfs f0, -8(r6)
/* 8000539C 000022FC  7C 1E 04 2E */	lfsx f0, r30, r0
/* 800053A0 00002300  54 80 10 3A */	slwi r0, r4, 2
/* 800053A4 00002304  38 85 FF FA */	addi r4, r5, -6
/* 800053A8 00002308  D0 06 FF F4 */	stfs f0, -0xc(r6)
/* 800053AC 0000230C  7C 1E 04 2E */	lfsx f0, r30, r0
/* 800053B0 00002310  54 80 10 3A */	slwi r0, r4, 2
/* 800053B4 00002314  38 85 FF F9 */	addi r4, r5, -7
/* 800053B8 00002318  D0 06 FF F0 */	stfs f0, -0x10(r6)
/* 800053BC 0000231C  7C 1E 04 2E */	lfsx f0, r30, r0
/* 800053C0 00002320  54 80 10 3A */	slwi r0, r4, 2
/* 800053C4 00002324  38 85 FF F8 */	addi r4, r5, -8
/* 800053C8 00002328  38 A5 FF F8 */	addi r5, r5, -8
/* 800053CC 0000232C  D0 06 FF EC */	stfs f0, -0x14(r6)
/* 800053D0 00002330  7C 1E 04 2E */	lfsx f0, r30, r0
/* 800053D4 00002334  54 80 10 3A */	slwi r0, r4, 2
/* 800053D8 00002338  D0 06 FF E8 */	stfs f0, -0x18(r6)
/* 800053DC 0000233C  7C 1E 04 2E */	lfsx f0, r30, r0
/* 800053E0 00002340  D0 06 FF E4 */	stfs f0, -0x1c(r6)
/* 800053E4 00002344  38 C6 FF E0 */	addi r6, r6, -32
/* 800053E8 00002348  42 00 FF 78 */	bdnz lbl_80005360
/* 800053EC 0000234C  70 63 00 07 */	andi. r3, r3, 7
/* 800053F0 00002350  41 82 00 24 */	beq lbl_80005414
lbl_800053F4:
/* 800053F4 00002354  7C 69 03 A6 */	mtctr r3
lbl_800053F8:
/* 800053F8 00002358  38 85 FF FF */	addi r4, r5, -1
/* 800053FC 0000235C  38 A5 FF FF */	addi r5, r5, -1
/* 80005400 00002360  54 80 10 3A */	slwi r0, r4, 2
/* 80005404 00002364  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80005408 00002368  D0 06 00 00 */	stfs f0, 0(r6)
/* 8000540C 0000236C  38 C6 FF FC */	addi r6, r6, -4
/* 80005410 00002370  42 00 FF E8 */	bdnz lbl_800053F8
lbl_80005414:
/* 80005414 00002374  D0 3E 00 00 */	stfs f1, 0(r30)
/* 80005418 00002378  38 61 00 18 */	addi r3, r1, 0x18
/* 8000541C 0000237C  38 9D 00 F0 */	addi r4, r29, 0xf0
/* 80005420 00002380  48 00 08 25 */	bl "GetAverage__21TReservedAverage<f,4>CFv"
/* 80005424 00002384  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80005428 00002388  38 80 00 00 */	li r4, 0
/* 8000542C 0000238C  83 41 00 08 */	lwz r26, 8(r1)
/* 80005430 00002390  D0 1D 01 18 */	stfs f0, 0x118(r29)
/* 80005434 00002394  80 1B 00 00 */	lwz r0, 0(r27)
/* 80005438 00002398  80 7B 00 04 */	lwz r3, 4(r27)
/* 8000543C 0000239C  7C 00 22 78 */	xor r0, r0, r4
/* 80005440 000023A0  98 81 00 1C */	stb r4, 0x1c(r1)
/* 80005444 000023A4  7C 63 22 78 */	xor r3, r3, r4
/* 80005448 000023A8  7C 60 03 79 */	or. r0, r3, r0
/* 8000544C 000023AC  40 82 00 10 */	bne lbl_8000545C
/* 80005450 000023B0  3C 60 80 5A */	lis r3, mData__10CStopwatch@ha
/* 80005454 000023B4  38 63 FD 30 */	addi r3, r3, mData__10CStopwatch@l
/* 80005458 000023B8  48 2D 12 C5 */	bl Initialize__Q210CStopwatch7CSWDataFv
lbl_8000545C:
/* 8000545C 000023BC  48 37 FF 4D */	bl OSGetTime
/* 80005460 000023C0  90 9A 00 2C */	stw r4, 0x2c(r26)
/* 80005464 000023C4  90 7A 00 28 */	stw r3, 0x28(r26)
/* 80005468 000023C8  7F A3 EB 78 */	mr r3, r29
/* 8000546C 000023CC  48 00 0B D5 */	bl DoPredrawMetrics__5CMainFv
/* 80005470 000023D0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80005474 000023D4  41 82 00 08 */	beq lbl_8000547C
/* 80005478 000023D8  3B 80 00 00 */	li r28, 0
lbl_8000547C:
/* 8000547C 000023DC  88 1D 01 60 */	lbz r0, 0x160(r29)
/* 80005480 000023E0  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80005484 000023E4  40 82 02 04 */	bne lbl_80005688
/* 80005488 000023E8  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8000548C 000023EC  81 83 00 00 */	lwz r12, 0(r3)
/* 80005490 000023F0  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80005494 000023F4  7D 89 03 A6 */	mtctr r12
/* 80005498 000023F8  4E 80 04 21 */	bctrl
/* 8000549C 000023FC  80 61 00 08 */	lwz r3, 8(r1)
/* 800054A0 00002400  38 63 00 58 */	addi r3, r3, 0x58
/* 800054A4 00002404  48 04 CB D5 */	bl Draw__13CIOWinManagerCFv
/* 800054A8 00002408  80 81 00 08 */	lwz r4, 8(r1)
/* 800054AC 0000240C  FC 20 F0 90 */	fmr f1, f30
/* 800054B0 00002410  7F A3 EB 78 */	mr r3, r29
/* 800054B4 00002414  38 84 00 28 */	addi r4, r4, 0x28
/* 800054B8 00002418  48 00 0B 85 */	bl DrawDebugMetrics__5CMainFdR10CStopwatch
/* 800054BC 0000241C  83 41 00 08 */	lwz r26, 8(r1)
/* 800054C0 00002420  48 37 FE E9 */	bl OSGetTime
/* 800054C4 00002424  80 BA 00 2C */	lwz r5, 0x2c(r26)
/* 800054C8 00002428  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 800054CC 0000242C  7C 85 20 10 */	subfc r4, r5, r4
/* 800054D0 00002430  7C 60 19 10 */	subfe r3, r0, r3
/* 800054D4 00002434  48 38 4A 91 */	bl __cvt_sll_flt
/* 800054D8 00002438  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 800054DC 0000243C  80 1D 01 04 */	lwz r0, 0x104(r29)
/* 800054E0 00002440  EF A1 00 32 */	fmuls f29, f1, f0
/* 800054E4 00002444  C8 02 80 10 */	lfd f0, lbl_805A9D30@sda21(r2)
/* 800054E8 00002448  2C 00 00 04 */	cmpwi r0, 4
/* 800054EC 0000244C  FC 3D 00 24 */	fdiv f1, f29, f0
/* 800054F0 00002450  FC 20 08 18 */	frsp f1, f1
/* 800054F4 00002454  40 80 00 20 */	bge lbl_80005514
/* 800054F8 00002458  54 00 10 3A */	slwi r0, r0, 2
/* 800054FC 0000245C  7C 7F 02 15 */	add. r3, r31, r0
/* 80005500 00002460  41 82 00 08 */	beq lbl_80005508
/* 80005504 00002464  D0 23 00 00 */	stfs f1, 0(r3)
lbl_80005508:
/* 80005508 00002468  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 8000550C 0000246C  38 03 00 01 */	addi r0, r3, 1
/* 80005510 00002470  90 1D 01 04 */	stw r0, 0x104(r29)
lbl_80005514:
/* 80005514 00002474  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 80005518 00002478  34 A3 FF FF */	addic. r5, r3, -1
/* 8000551C 0000247C  54 A0 10 3A */	slwi r0, r5, 2
/* 80005520 00002480  7C A3 2B 78 */	mr r3, r5
/* 80005524 00002484  7C DF 02 14 */	add r6, r31, r0
/* 80005528 00002488  40 81 00 C4 */	ble lbl_800055EC
/* 8000552C 0000248C  54 A0 E8 FF */	rlwinm. r0, r5, 0x1d, 3, 0x1f
/* 80005530 00002490  7C 09 03 A6 */	mtctr r0
/* 80005534 00002494  41 82 00 98 */	beq lbl_800055CC
lbl_80005538:
/* 80005538 00002498  38 85 FF FF */	addi r4, r5, -1
/* 8000553C 0000249C  54 80 10 3A */	slwi r0, r4, 2
/* 80005540 000024A0  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80005544 000024A4  38 85 FF FE */	addi r4, r5, -2
/* 80005548 000024A8  54 80 10 3A */	slwi r0, r4, 2
/* 8000554C 000024AC  D0 06 00 00 */	stfs f0, 0(r6)
/* 80005550 000024B0  38 85 FF FD */	addi r4, r5, -3
/* 80005554 000024B4  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80005558 000024B8  54 80 10 3A */	slwi r0, r4, 2
/* 8000555C 000024BC  38 85 FF FC */	addi r4, r5, -4
/* 80005560 000024C0  D0 06 FF FC */	stfs f0, -4(r6)
/* 80005564 000024C4  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80005568 000024C8  54 80 10 3A */	slwi r0, r4, 2
/* 8000556C 000024CC  38 85 FF FB */	addi r4, r5, -5
/* 80005570 000024D0  D0 06 FF F8 */	stfs f0, -8(r6)
/* 80005574 000024D4  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80005578 000024D8  54 80 10 3A */	slwi r0, r4, 2
/* 8000557C 000024DC  38 85 FF FA */	addi r4, r5, -6
/* 80005580 000024E0  D0 06 FF F4 */	stfs f0, -0xc(r6)
/* 80005584 000024E4  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80005588 000024E8  54 80 10 3A */	slwi r0, r4, 2
/* 8000558C 000024EC  38 85 FF F9 */	addi r4, r5, -7
/* 80005590 000024F0  D0 06 FF F0 */	stfs f0, -0x10(r6)
/* 80005594 000024F4  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80005598 000024F8  54 80 10 3A */	slwi r0, r4, 2
/* 8000559C 000024FC  38 85 FF F8 */	addi r4, r5, -8
/* 800055A0 00002500  38 A5 FF F8 */	addi r5, r5, -8
/* 800055A4 00002504  D0 06 FF EC */	stfs f0, -0x14(r6)
/* 800055A8 00002508  7C 1F 04 2E */	lfsx f0, r31, r0
/* 800055AC 0000250C  54 80 10 3A */	slwi r0, r4, 2
/* 800055B0 00002510  D0 06 FF E8 */	stfs f0, -0x18(r6)
/* 800055B4 00002514  7C 1F 04 2E */	lfsx f0, r31, r0
/* 800055B8 00002518  D0 06 FF E4 */	stfs f0, -0x1c(r6)
/* 800055BC 0000251C  38 C6 FF E0 */	addi r6, r6, -32
/* 800055C0 00002520  42 00 FF 78 */	bdnz lbl_80005538
/* 800055C4 00002524  70 63 00 07 */	andi. r3, r3, 7
/* 800055C8 00002528  41 82 00 24 */	beq lbl_800055EC
lbl_800055CC:
/* 800055CC 0000252C  7C 69 03 A6 */	mtctr r3
lbl_800055D0:
/* 800055D0 00002530  38 85 FF FF */	addi r4, r5, -1
/* 800055D4 00002534  38 A5 FF FF */	addi r5, r5, -1
/* 800055D8 00002538  54 80 10 3A */	slwi r0, r4, 2
/* 800055DC 0000253C  7C 1F 04 2E */	lfsx f0, r31, r0
/* 800055E0 00002540  D0 06 00 00 */	stfs f0, 0(r6)
/* 800055E4 00002544  38 C6 FF FC */	addi r6, r6, -4
/* 800055E8 00002548  42 00 FF E8 */	bdnz lbl_800055D0
lbl_800055EC:
/* 800055EC 0000254C  D0 3F 00 00 */	stfs f1, 0(r31)
/* 800055F0 00002550  38 61 00 10 */	addi r3, r1, 0x10
/* 800055F4 00002554  38 9D 01 04 */	addi r4, r29, 0x104
/* 800055F8 00002558  48 00 06 4D */	bl "GetAverage__21TReservedAverage<f,4>CFv"
/* 800055FC 0000255C  FC 1E E8 2A */	fadd f0, f30, f29
/* 80005600 00002560  C8 42 80 10 */	lfd f2, lbl_805A9D30@sda21(r2)
/* 80005604 00002564  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80005608 00002568  38 80 00 00 */	li r4, 0
/* 8000560C 0000256C  C8 22 80 18 */	lfd f1, lbl_805A9D38@sda21(r2)
/* 80005610 00002570  FC 42 00 28 */	fsub f2, f2, f0
/* 80005614 00002574  D0 7D 01 1C */	stfs f3, 0x11c(r29)
/* 80005618 00002578  C8 02 80 28 */	lfd f0, lbl_805A9D48@sda21(r2)
/* 8000561C 0000257C  FC 22 08 28 */	fsub f1, f2, f1
/* 80005620 00002580  98 81 00 14 */	stb r4, 0x14(r1)
/* 80005624 00002584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80005628 00002588  40 81 00 14 */	ble lbl_8000563C
/* 8000562C 0000258C  C8 02 80 20 */	lfd f0, lbl_805A9D40@sda21(r2)
/* 80005630 00002590  FC 20 00 72 */	fmul f1, f0, f1
/* 80005634 00002594  48 38 43 21 */	bl __cvt_fp2unsigned
/* 80005638 00002598  7C 64 1B 78 */	mr r4, r3
lbl_8000563C:
/* 8000563C 0000259C  7F A3 EB 78 */	mr r3, r29
/* 80005640 000025A0  4B FF F6 A9 */	bl AsyncIdle__5CMainFUl
/* 80005644 000025A4  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80005648 000025A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8000564C 000025AC  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 80005650 000025B0  7D 89 03 A6 */	mtctr r12
/* 80005654 000025B4  4E 80 04 21 */	bctrl
/* 80005658 000025B8  88 1D 01 61 */	lbz r0, 0x161(r29)
/* 8000565C 000025BC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80005660 000025C0  41 82 00 38 */	beq lbl_80005698
/* 80005664 000025C4  80 A1 00 08 */	lwz r5, 8(r1)
/* 80005668 000025C8  38 60 00 00 */	li r3, 0
/* 8000566C 000025CC  80 85 00 78 */	lwz r4, 0x78(r5)
/* 80005670 000025D0  38 04 00 01 */	addi r0, r4, 1
/* 80005674 000025D4  90 05 00 78 */	stw r0, 0x78(r5)
/* 80005678 000025D8  88 1D 01 61 */	lbz r0, 0x161(r29)
/* 8000567C 000025DC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80005680 000025E0  98 1D 01 61 */	stb r0, 0x161(r29)
/* 80005684 000025E4  48 00 00 14 */	b lbl_80005698
lbl_80005688:
/* 80005688 000025E8  3C 80 00 0F */	lis r4, 0x000F4240@ha
/* 8000568C 000025EC  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 80005690 000025F0  38 84 42 40 */	addi r4, r4, 0x000F4240@l
/* 80005694 000025F4  48 33 45 3D */	bl AsyncIdle__11CResFactoryFUl
lbl_80005698:
/* 80005698 000025F8  80 61 00 08 */	lwz r3, 8(r1)
/* 8000569C 000025FC  48 00 15 F5 */	bl Update__24CGameArchitectureSupportFv
/* 800056A0 00002600  C0 22 80 00 */	lfs f1, lbl_805A9D20@sda21(r2)
/* 800056A4 00002604  48 2E 39 01 */	bl Update__11CSfxManagerFf
/* 800056A8 00002608  7F A3 EB 78 */	mr r3, r29
/* 800056AC 0000260C  4B FF DF AD */	bl UpdateStreamedAudio__5CMainFv
/* 800056B0 00002610  7F A3 EB 78 */	mr r3, r29
/* 800056B4 00002614  48 00 09 81 */	bl CheckTerminate__5CMainFv
/* 800056B8 00002618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800056BC 0000261C  40 82 00 F0 */	bne lbl_800057AC
/* 800056C0 00002620  80 81 00 08 */	lwz r4, 8(r1)
/* 800056C4 00002624  3B 40 00 00 */	li r26, 0
/* 800056C8 00002628  38 60 00 00 */	li r3, 0
/* 800056CC 0000262C  80 04 00 5C */	lwz r0, 0x5c(r4)
/* 800056D0 00002630  28 00 00 00 */	cmplwi r0, 0
/* 800056D4 00002634  40 82 00 14 */	bne lbl_800056E8
/* 800056D8 00002638  80 04 00 58 */	lwz r0, 0x58(r4)
/* 800056DC 0000263C  28 00 00 00 */	cmplwi r0, 0
/* 800056E0 00002640  40 82 00 08 */	bne lbl_800056E8
/* 800056E4 00002644  38 60 00 01 */	li r3, 1
lbl_800056E8:
/* 800056E8 00002648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800056EC 0000264C  41 82 00 0C */	beq lbl_800056F8
/* 800056F0 00002650  3B 40 00 01 */	li r26, 1
/* 800056F4 00002654  48 00 00 18 */	b lbl_8000570C
lbl_800056F8:
/* 800056F8 00002658  7F A3 EB 78 */	mr r3, r29
/* 800056FC 0000265C  48 00 06 01 */	bl CheckReset__5CMainFv
/* 80005700 00002660  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80005704 00002664  41 82 00 08 */	beq lbl_8000570C
/* 80005708 00002668  3B 40 00 01 */	li r26, 1
lbl_8000570C:
/* 8000570C 0000266C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80005710 00002670  41 82 00 88 */	beq lbl_80005798
/* 80005714 00002674  38 00 00 05 */	li r0, 5
/* 80005718 00002678  90 1D 01 2C */	stw r0, 0x12c(r29)
/* 8000571C 0000267C  48 36 01 89 */	bl StopAll__19CStreamAudioManagerFv
/* 80005720 00002680  3C 60 F0 00 */	lis r3, 0xf000
/* 80005724 00002684  48 38 0D 39 */	bl PADRecalibrate
/* 80005728 00002688  38 60 00 01 */	li r3, 1
/* 8000572C 0000268C  48 30 3D 7D */	bl SetIsBeginSceneClearFb__9CGraphicsFb
/* 80005730 00002690  48 30 67 75 */	bl BeginScene__9CGraphicsFv
/* 80005734 00002694  48 30 63 8D */	bl EndScene__9CGraphicsFv
/* 80005738 00002698  48 36 75 C5 */	bl sub_8036ccfc
/* 8000573C 0000269C  80 61 00 08 */	lwz r3, 8(r1)
/* 80005740 000026A0  38 80 00 01 */	li r4, 1
/* 80005744 000026A4  48 00 18 A9 */	bl __dt__24CGameArchitectureSupportFv
/* 80005748 000026A8  38 00 00 00 */	li r0, 0
/* 8000574C 000026AC  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 80005750 000026B0  38 63 BE 74 */	addi r3, r3, lbl_803CBE74@l
/* 80005754 000026B4  90 01 00 08 */	stw r0, 8(r1)
/* 80005758 000026B8  38 83 00 37 */	addi r4, r3, 0x37
/* 8000575C 000026BC  38 60 00 D0 */	li r3, 0xd0
/* 80005760 000026C0  38 A0 00 00 */	li r5, 0
/* 80005764 000026C4  48 00 30 19 */	bl "__nw__38TOneStatic<24CGameArchitectureSupport>FUlPCcPCc"
/* 80005768 000026C8  7C 7A 1B 79 */	or. r26, r3, r3
/* 8000576C 000026CC  41 82 00 10 */	beq lbl_8000577C
/* 80005770 000026D0  7F A4 EB 78 */	mr r4, r29
/* 80005774 000026D4  48 00 19 C5 */	bl __ct__24CGameArchitectureSupportFR10COsContext
/* 80005778 000026D8  7C 7A 1B 78 */	mr r26, r3
lbl_8000577C:
/* 8000577C 000026DC  80 61 00 08 */	lwz r3, 8(r1)
/* 80005780 000026E0  38 80 00 01 */	li r4, 1
/* 80005784 000026E4  48 00 18 69 */	bl __dt__24CGameArchitectureSupportFv
/* 80005788 000026E8  93 41 00 08 */	stw r26, 8(r1)
/* 8000578C 000026EC  7F 43 D3 78 */	mr r3, r26
/* 80005790 000026F0  93 5D 01 64 */	stw r26, 0x164(r29)
/* 80005794 000026F4  48 00 13 81 */	bl PreloadAudio__24CGameArchitectureSupportFv
lbl_80005798:
/* 80005798 000026F8  7F A3 EB 78 */	mr r3, r29
/* 8000579C 000026FC  4B FF F0 71 */	bl nullsub_2
lbl_800057A0:
/* 800057A0 00002700  88 1D 01 60 */	lbz r0, 0x160(r29)
/* 800057A4 00002704  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800057A8 00002708  41 82 FA AC */	beq lbl_80005254
lbl_800057AC:
/* 800057AC 0000270C  80 61 00 08 */	lwz r3, 8(r1)
/* 800057B0 00002710  38 80 00 01 */	li r4, 1
/* 800057B4 00002714  48 00 18 39 */	bl __dt__24CGameArchitectureSupportFv
/* 800057B8 00002718  38 61 00 50 */	addi r3, r1, 0x50
/* 800057BC 0000271C  48 33 83 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800057C0 00002720  7F A3 EB 78 */	mr r3, r29
/* 800057C4 00002724  48 00 26 A5 */	bl ShutdownSubsystems__5CMainFv
/* 800057C8 00002728  38 61 00 0C */	addi r3, r1, 0xc
/* 800057CC 0000272C  38 80 00 00 */	li r4, 0
/* 800057D0 00002730  48 00 00 45 */	bl "__as__Q24rstl32single_ptr<18CGameGlobalObjects>FP18CGameGlobalObjects"
/* 800057D4 00002734  48 33 F4 F1 */	bl Shutdown__12CARAMManagerFv
/* 800057D8 00002738  38 61 00 0C */	addi r3, r1, 0xc
/* 800057DC 0000273C  38 80 FF FF */	li r4, -1
/* 800057E0 00002740  48 00 04 C5 */	bl "__dt__Q24rstl32single_ptr<18CGameGlobalObjects>Fv"
/* 800057E4 00002744  38 60 00 00 */	li r3, 0
/* 800057E8 00002748  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 800057EC 0000274C  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 800057F0 00002750  E3 C1 01 38 */	psq_l f30, 312(r1), 0, qr0
/* 800057F4 00002754  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 800057F8 00002758  E3 A1 01 28 */	psq_l f29, 296(r1), 0, qr0
/* 800057FC 0000275C  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 80005800 00002760  BB 41 01 08 */	lmw r26, 0x108(r1)
/* 80005804 00002764  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80005808 00002768  7C 08 03 A6 */	mtlr r0
/* 8000580C 0000276C  38 21 01 50 */	addi r1, r1, 0x150
/* 80005810 00002770  4E 80 00 20 */	blr

.global "__as__Q24rstl32single_ptr<18CGameGlobalObjects>FP18CGameGlobalObjects"
"__as__Q24rstl32single_ptr<18CGameGlobalObjects>FP18CGameGlobalObjects":
/* 80005814 00002774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80005818 00002778  7C 08 02 A6 */	mflr r0
/* 8000581C 0000277C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80005820 00002780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80005824 00002784  7C 9F 23 78 */	mr r31, r4
/* 80005828 00002788  38 80 00 01 */	li r4, 1
/* 8000582C 0000278C  93 C1 00 08 */	stw r30, 8(r1)
/* 80005830 00002790  7C 7E 1B 78 */	mr r30, r3
/* 80005834 00002794  80 63 00 00 */	lwz r3, 0(r3)
/* 80005838 00002798  48 00 00 25 */	bl __dt__18CGameGlobalObjectsFv
/* 8000583C 0000279C  93 FE 00 00 */	stw r31, 0(r30)
/* 80005840 000027A0  7F C3 F3 78 */	mr r3, r30
/* 80005844 000027A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80005848 000027A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000584C 000027AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80005850 000027B0  7C 08 03 A6 */	mtlr r0
/* 80005854 000027B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80005858 000027B8  4E 80 00 20 */	blr

.global __dt__18CGameGlobalObjectsFv
__dt__18CGameGlobalObjectsFv:
/* 8000585C 000027BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80005860 000027C0  7C 08 02 A6 */	mflr r0
/* 80005864 000027C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80005868 000027C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000586C 000027CC  7C 9F 23 78 */	mr r31, r4
/* 80005870 000027D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80005874 000027D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80005878 000027D8  41 82 00 F8 */	beq lbl_80005970
/* 8000587C 000027DC  34 1E 01 54 */	addic. r0, r30, 0x154
/* 80005880 000027E0  41 82 00 10 */	beq lbl_80005890
/* 80005884 000027E4  38 7E 01 54 */	addi r3, r30, 0x154
/* 80005888 000027E8  38 80 00 00 */	li r4, 0
/* 8000588C 000027EC  48 33 B5 B5 */	bl __dt__6CTokenFv
lbl_80005890:
/* 80005890 000027F0  38 7E 01 50 */	addi r3, r30, 0x150
/* 80005894 000027F4  38 80 FF FF */	li r4, -1
/* 80005898 000027F8  48 00 02 29 */	bl sub_80005ac0
/* 8000589C 000027FC  34 1E 01 4C */	addic. r0, r30, 0x14c
/* 800058A0 00002800  41 82 00 24 */	beq lbl_800058C4
/* 800058A4 00002804  80 7E 01 4C */	lwz r3, 0x14c(r30)
/* 800058A8 00002808  28 03 00 00 */	cmplwi r3, 0
/* 800058AC 0000280C  41 82 00 18 */	beq lbl_800058C4
/* 800058B0 00002810  81 83 00 00 */	lwz r12, 0(r3)
/* 800058B4 00002814  38 80 00 01 */	li r4, 1
/* 800058B8 00002818  81 8C 00 08 */	lwz r12, 8(r12)
/* 800058BC 0000281C  7D 89 03 A6 */	mtctr r12
/* 800058C0 00002820  4E 80 04 21 */	bctrl
lbl_800058C4:
/* 800058C4 00002824  34 1E 01 3C */	addic. r0, r30, 0x13c
/* 800058C8 00002828  41 82 00 30 */	beq lbl_800058F8
/* 800058CC 0000282C  88 1E 01 48 */	lbz r0, 0x148(r30)
/* 800058D0 00002830  28 00 00 00 */	cmplwi r0, 0
/* 800058D4 00002834  41 82 00 1C */	beq lbl_800058F0
/* 800058D8 00002838  34 7E 01 3C */	addic. r3, r30, 0x13c
/* 800058DC 0000283C  41 82 00 14 */	beq lbl_800058F0
/* 800058E0 00002840  28 03 00 00 */	cmplwi r3, 0
/* 800058E4 00002844  41 82 00 0C */	beq lbl_800058F0
/* 800058E8 00002848  38 80 00 00 */	li r4, 0
/* 800058EC 0000284C  48 33 B5 55 */	bl __dt__6CTokenFv
lbl_800058F0:
/* 800058F0 00002850  38 00 00 00 */	li r0, 0
/* 800058F4 00002854  98 1E 01 48 */	stb r0, 0x148(r30)
lbl_800058F8:
/* 800058F8 00002858  34 1E 01 38 */	addic. r0, r30, 0x138
/* 800058FC 0000285C  41 82 00 10 */	beq lbl_8000590C
/* 80005900 00002860  80 7E 01 38 */	lwz r3, 0x138(r30)
/* 80005904 00002864  38 80 00 01 */	li r4, 1
/* 80005908 00002868  48 24 44 FD */	bl __dt__14CMemoryCardSysFv
lbl_8000590C:
/* 8000590C 0000286C  38 7E 01 34 */	addi r3, r30, 0x134
/* 80005910 00002870  38 80 FF FF */	li r4, -1
/* 80005914 00002874  48 00 01 55 */	bl sub_80005a68
/* 80005918 00002878  38 7E 01 30 */	addi r3, r30, 0x130
/* 8000591C 0000287C  38 80 FF FF */	li r4, -1
/* 80005920 00002880  48 30 3A D9 */	bl __dt__12CGraphicsSysFv
/* 80005924 00002884  38 7E 01 10 */	addi r3, r30, 0x110
/* 80005928 00002888  38 80 FF FF */	li r4, -1
/* 8000592C 0000288C  48 00 00 61 */	bl sub_8000598c
/* 80005930 00002890  38 7E 00 EC */	addi r3, r30, 0xec
/* 80005934 00002894  38 80 FF FF */	li r4, -1
/* 80005938 00002898  48 02 F0 39 */	bl __dt__24CCharacterFactoryBuilderFv
/* 8000593C 0000289C  38 7E 00 CC */	addi r3, r30, 0xcc
/* 80005940 000028A0  38 80 FF FF */	li r4, -1
/* 80005944 000028A4  48 33 AD C5 */	bl __dt__11CSimplePool
/* 80005948 000028A8  38 7E 00 04 */	addi r3, r30, 4
/* 8000594C 000028AC  38 80 FF FF */	li r4, -1
/* 80005950 000028B0  48 33 4C CD */	bl __dt__11CResFactoryFv
/* 80005954 000028B4  7F C3 F3 78 */	mr r3, r30
/* 80005958 000028B8  38 80 FF FF */	li r4, -1
/* 8000595C 000028BC  48 34 8B 01 */	bl sub_8034e45c
/* 80005960 000028C0  7F E0 07 35 */	extsh. r0, r31
/* 80005964 000028C4  40 81 00 0C */	ble lbl_80005970
/* 80005968 000028C8  7F C3 F3 78 */	mr r3, r30
/* 8000596C 000028CC  48 00 2E CD */	bl "__dl__32TOneStatic<18CGameGlobalObjects>FPv"
lbl_80005970:
/* 80005970 000028D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80005974 000028D4  7F C3 F3 78 */	mr r3, r30
/* 80005978 000028D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000597C 000028DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80005980 000028E0  7C 08 03 A6 */	mtlr r0
/* 80005984 000028E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80005988 000028E8  4E 80 00 20 */	blr

.global sub_8000598c
sub_8000598c:
/* 8000598C 000028EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80005990 000028F0  7C 08 02 A6 */	mflr r0
/* 80005994 000028F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80005998 000028F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8000599C 000028FC  7C 9F 23 78 */	mr r31, r4
/* 800059A0 00002900  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800059A4 00002904  7C 7E 1B 79 */	or. r30, r3, r3
/* 800059A8 00002908  41 82 00 A4 */	beq lbl_80005A4C
/* 800059AC 0000290C  34 1E 00 10 */	addic. r0, r30, 0x10
/* 800059B0 00002910  41 82 00 44 */	beq lbl_800059F4
/* 800059B4 00002914  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800059B8 00002918  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 800059BC 0000291C  54 00 20 36 */	slwi r0, r0, 4
/* 800059C0 00002920  7C 03 02 14 */	add r0, r3, r0
/* 800059C4 00002924  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800059C8 00002928  7C 64 1B 78 */	mr r4, r3
/* 800059CC 0000292C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800059D0 00002930  90 01 00 20 */	stw r0, 0x20(r1)
/* 800059D4 00002934  90 61 00 18 */	stw r3, 0x18(r1)
/* 800059D8 00002938  48 00 00 08 */	b lbl_800059E0
lbl_800059DC:
/* 800059DC 0000293C  38 84 00 10 */	addi r4, r4, 0x10
lbl_800059E0:
/* 800059E0 00002940  7C 04 00 40 */	cmplw r4, r0
/* 800059E4 00002944  40 82 FF F8 */	bne lbl_800059DC
/* 800059E8 00002948  28 03 00 00 */	cmplwi r3, 0
/* 800059EC 0000294C  41 82 00 08 */	beq lbl_800059F4
/* 800059F0 00002950  48 30 FF 41 */	bl Free__7CMemoryFPCv
lbl_800059F4:
/* 800059F4 00002954  28 1E 00 00 */	cmplwi r30, 0
/* 800059F8 00002958  41 82 00 44 */	beq lbl_80005A3C
/* 800059FC 0000295C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80005A00 00002960  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80005A04 00002964  54 00 20 36 */	slwi r0, r0, 4
/* 80005A08 00002968  7C 03 02 14 */	add r0, r3, r0
/* 80005A0C 0000296C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80005A10 00002970  7C 64 1B 78 */	mr r4, r3
/* 80005A14 00002974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80005A18 00002978  90 01 00 10 */	stw r0, 0x10(r1)
/* 80005A1C 0000297C  90 61 00 08 */	stw r3, 8(r1)
/* 80005A20 00002980  48 00 00 08 */	b lbl_80005A28
lbl_80005A24:
/* 80005A24 00002984  38 84 00 10 */	addi r4, r4, 0x10
lbl_80005A28:
/* 80005A28 00002988  7C 04 00 40 */	cmplw r4, r0
/* 80005A2C 0000298C  40 82 FF F8 */	bne lbl_80005A24
/* 80005A30 00002990  28 03 00 00 */	cmplwi r3, 0
/* 80005A34 00002994  41 82 00 08 */	beq lbl_80005A3C
/* 80005A38 00002998  48 30 FE F9 */	bl Free__7CMemoryFPCv
lbl_80005A3C:
/* 80005A3C 0000299C  7F E0 07 35 */	extsh. r0, r31
/* 80005A40 000029A0  40 81 00 0C */	ble lbl_80005A4C
/* 80005A44 000029A4  7F C3 F3 78 */	mr r3, r30
/* 80005A48 000029A8  48 30 FE E9 */	bl Free__7CMemoryFPCv
lbl_80005A4C:
/* 80005A4C 000029AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80005A50 000029B0  7F C3 F3 78 */	mr r3, r30
/* 80005A54 000029B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80005A58 000029B8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80005A5C 000029BC  7C 08 03 A6 */	mtlr r0
/* 80005A60 000029C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80005A64 000029C4  4E 80 00 20 */	blr

.global sub_80005a68
sub_80005a68:
/* 80005A68 000029C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80005A6C 000029CC  7C 08 02 A6 */	mflr r0
/* 80005A70 000029D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80005A74 000029D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80005A78 000029D8  7C 9F 23 78 */	mr r31, r4
/* 80005A7C 000029DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80005A80 000029E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80005A84 000029E4  41 82 00 20 */	beq lbl_80005AA4
/* 80005A88 000029E8  80 7E 00 00 */	lwz r3, 0(r30)
/* 80005A8C 000029EC  38 80 00 01 */	li r4, 1
/* 80005A90 000029F0  4B FF E2 41 */	bl __dt__10CGameStateFv
/* 80005A94 000029F4  7F E0 07 35 */	extsh. r0, r31
/* 80005A98 000029F8  40 81 00 0C */	ble lbl_80005AA4
/* 80005A9C 000029FC  7F C3 F3 78 */	mr r3, r30
/* 80005AA0 00002A00  48 30 FE 91 */	bl Free__7CMemoryFPCv
lbl_80005AA4:
/* 80005AA4 00002A04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80005AA8 00002A08  7F C3 F3 78 */	mr r3, r30
/* 80005AAC 00002A0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80005AB0 00002A10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80005AB4 00002A14  7C 08 03 A6 */	mtlr r0
/* 80005AB8 00002A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80005ABC 00002A1C  4E 80 00 20 */	blr

.global sub_80005ac0
sub_80005ac0:
/* 80005AC0 00002A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80005AC4 00002A24  7C 08 02 A6 */	mflr r0
/* 80005AC8 00002A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80005ACC 00002A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80005AD0 00002A30  7C 9F 23 78 */	mr r31, r4
/* 80005AD4 00002A34  93 C1 00 08 */	stw r30, 8(r1)
/* 80005AD8 00002A38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80005ADC 00002A3C  41 82 00 20 */	beq lbl_80005AFC
/* 80005AE0 00002A40  80 7E 00 00 */	lwz r3, 0(r30)
/* 80005AE4 00002A44  38 80 00 01 */	li r4, 1
/* 80005AE8 00002A48  48 00 00 31 */	bl sub_80005b18
/* 80005AEC 00002A4C  7F E0 07 35 */	extsh. r0, r31
/* 80005AF0 00002A50  40 81 00 0C */	ble lbl_80005AFC
/* 80005AF4 00002A54  7F C3 F3 78 */	mr r3, r30
/* 80005AF8 00002A58  48 30 FE 39 */	bl Free__7CMemoryFPCv
lbl_80005AFC:
/* 80005AFC 00002A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80005B00 00002A60  7F C3 F3 78 */	mr r3, r30
/* 80005B04 00002A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80005B08 00002A68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80005B0C 00002A6C  7C 08 03 A6 */	mtlr r0
/* 80005B10 00002A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80005B14 00002A74  4E 80 00 20 */	blr

.global sub_80005b18
sub_80005b18:
/* 80005B18 00002A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80005B1C 00002A7C  7C 08 02 A6 */	mflr r0
/* 80005B20 00002A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80005B24 00002A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80005B28 00002A88  7C 9F 23 78 */	mr r31, r4
/* 80005B2C 00002A8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80005B30 00002A90  7C 7E 1B 79 */	or. r30, r3, r3
/* 80005B34 00002A94  41 82 00 1C */	beq lbl_80005B50
/* 80005B38 00002A98  38 80 FF FF */	li r4, -1
/* 80005B3C 00002A9C  48 00 00 31 */	bl sub_80005b6c
/* 80005B40 00002AA0  7F E0 07 35 */	extsh. r0, r31
/* 80005B44 00002AA4  40 81 00 0C */	ble lbl_80005B50
/* 80005B48 00002AA8  7F C3 F3 78 */	mr r3, r30
/* 80005B4C 00002AAC  48 30 FD E5 */	bl Free__7CMemoryFPCv
lbl_80005B50:
/* 80005B50 00002AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80005B54 00002AB4  7F C3 F3 78 */	mr r3, r30
/* 80005B58 00002AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80005B5C 00002ABC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80005B60 00002AC0  7C 08 03 A6 */	mtlr r0
/* 80005B64 00002AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80005B68 00002AC8  4E 80 00 20 */	blr

.global sub_80005b6c
sub_80005b6c:
/* 80005B6C 00002ACC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80005B70 00002AD0  7C 08 02 A6 */	mflr r0
/* 80005B74 00002AD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80005B78 00002AD8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80005B7C 00002ADC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80005B80 00002AE0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80005B84 00002AE4  7C 9D 23 78 */	mr r29, r4
/* 80005B88 00002AE8  93 81 00 20 */	stw r28, 0x20(r1)
/* 80005B8C 00002AEC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80005B90 00002AF0  41 82 00 90 */	beq lbl_80005C20
/* 80005B94 00002AF4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80005B98 00002AF8  83 DC 00 0C */	lwz r30, 0xc(r28)
/* 80005B9C 00002AFC  1C 00 00 48 */	mulli r0, r0, 0x48
/* 80005BA0 00002B00  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80005BA4 00002B04  7F FE 02 14 */	add r31, r30, r0
/* 80005BA8 00002B08  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80005BAC 00002B0C  93 E1 00 08 */	stw r31, 8(r1)
/* 80005BB0 00002B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80005BB4 00002B14  48 00 00 44 */	b lbl_80005BF8
lbl_80005BB8:
/* 80005BB8 00002B18  28 1E 00 00 */	cmplwi r30, 0
/* 80005BBC 00002B1C  41 82 00 38 */	beq lbl_80005BF4
/* 80005BC0 00002B20  34 1E 00 24 */	addic. r0, r30, 0x24
/* 80005BC4 00002B24  41 82 00 10 */	beq lbl_80005BD4
/* 80005BC8 00002B28  34 7E 00 30 */	addic. r3, r30, 0x30
/* 80005BCC 00002B2C  41 82 00 08 */	beq lbl_80005BD4
/* 80005BD0 00002B30  48 33 7F 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80005BD4:
/* 80005BD4 00002B34  34 1E 00 14 */	addic. r0, r30, 0x14
/* 80005BD8 00002B38  41 82 00 0C */	beq lbl_80005BE4
/* 80005BDC 00002B3C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80005BE0 00002B40  48 33 7F 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80005BE4:
/* 80005BE4 00002B44  34 1E 00 04 */	addic. r0, r30, 4
/* 80005BE8 00002B48  41 82 00 0C */	beq lbl_80005BF4
/* 80005BEC 00002B4C  38 7E 00 04 */	addi r3, r30, 4
/* 80005BF0 00002B50  48 33 7E F1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80005BF4:
/* 80005BF4 00002B54  3B DE 00 48 */	addi r30, r30, 0x48
lbl_80005BF8:
/* 80005BF8 00002B58  7C 1E F8 40 */	cmplw r30, r31
/* 80005BFC 00002B5C  40 82 FF BC */	bne lbl_80005BB8
/* 80005C00 00002B60  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80005C04 00002B64  28 03 00 00 */	cmplwi r3, 0
/* 80005C08 00002B68  41 82 00 08 */	beq lbl_80005C10
/* 80005C0C 00002B6C  48 30 FD 25 */	bl Free__7CMemoryFPCv
lbl_80005C10:
/* 80005C10 00002B70  7F A0 07 35 */	extsh. r0, r29
/* 80005C14 00002B74  40 81 00 0C */	ble lbl_80005C20
/* 80005C18 00002B78  7F 83 E3 78 */	mr r3, r28
/* 80005C1C 00002B7C  48 30 FD 15 */	bl Free__7CMemoryFPCv
lbl_80005C20:
/* 80005C20 00002B80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80005C24 00002B84  7F 83 E3 78 */	mr r3, r28
/* 80005C28 00002B88  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80005C2C 00002B8C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80005C30 00002B90  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80005C34 00002B94  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80005C38 00002B98  7C 08 03 A6 */	mtlr r0
/* 80005C3C 00002B9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80005C40 00002BA0  4E 80 00 20 */	blr

.global "GetAverage__21TReservedAverage<f,4>CFv"
"GetAverage__21TReservedAverage<f,4>CFv":
/* 80005C44 00002BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80005C48 00002BA8  7C 08 02 A6 */	mflr r0
/* 80005C4C 00002BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80005C50 00002BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80005C54 00002BB4  7C 7F 1B 78 */	mr r31, r3
/* 80005C58 00002BB8  80 04 00 00 */	lwz r0, 0(r4)
/* 80005C5C 00002BBC  2C 00 00 00 */	cmpwi r0, 0
/* 80005C60 00002BC0  40 82 00 10 */	bne lbl_80005C70
/* 80005C64 00002BC4  38 00 00 00 */	li r0, 0
/* 80005C68 00002BC8  98 1F 00 04 */	stb r0, 4(r31)
/* 80005C6C 00002BCC  48 00 00 24 */	b lbl_80005C90
lbl_80005C70:
/* 80005C70 00002BD0  38 64 00 04 */	addi r3, r4, 4
/* 80005C74 00002BD4  7C 04 03 78 */	mr r4, r0
/* 80005C78 00002BD8  48 00 2C 1D */	bl "GetAverageValue<f>__FPCfi"
/* 80005C7C 00002BDC  38 00 00 01 */	li r0, 1
/* 80005C80 00002BE0  28 1F 00 00 */	cmplwi r31, 0
/* 80005C84 00002BE4  98 1F 00 04 */	stb r0, 4(r31)
/* 80005C88 00002BE8  41 82 00 08 */	beq lbl_80005C90
/* 80005C8C 00002BEC  D0 3F 00 00 */	stfs f1, 0(r31)
lbl_80005C90:
/* 80005C90 00002BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80005C94 00002BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80005C98 00002BF8  7C 08 03 A6 */	mtlr r0
/* 80005C9C 00002BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80005CA0 00002C00  4E 80 00 20 */	blr

.global "__dt__Q24rstl32single_ptr<18CGameGlobalObjects>Fv"
"__dt__Q24rstl32single_ptr<18CGameGlobalObjects>Fv":
/* 80005CA4 00002C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80005CA8 00002C08  7C 08 02 A6 */	mflr r0
/* 80005CAC 00002C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80005CB0 00002C10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80005CB4 00002C14  7C 9F 23 78 */	mr r31, r4
/* 80005CB8 00002C18  93 C1 00 08 */	stw r30, 8(r1)
/* 80005CBC 00002C1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80005CC0 00002C20  41 82 00 20 */	beq lbl_80005CE0
/* 80005CC4 00002C24  80 7E 00 00 */	lwz r3, 0(r30)
/* 80005CC8 00002C28  38 80 00 01 */	li r4, 1
/* 80005CCC 00002C2C  4B FF FB 91 */	bl __dt__18CGameGlobalObjectsFv
/* 80005CD0 00002C30  7F E0 07 35 */	extsh. r0, r31
/* 80005CD4 00002C34  40 81 00 0C */	ble lbl_80005CE0
/* 80005CD8 00002C38  7F C3 F3 78 */	mr r3, r30
/* 80005CDC 00002C3C  48 30 FC 55 */	bl Free__7CMemoryFPCv
lbl_80005CE0:
/* 80005CE0 00002C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80005CE4 00002C44  7F C3 F3 78 */	mr r3, r30
/* 80005CE8 00002C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80005CEC 00002C4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80005CF0 00002C50  7C 08 03 A6 */	mtlr r0
/* 80005CF4 00002C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80005CF8 00002C58  4E 80 00 20 */	blr

.if version >= 1

.global CheckReset__5CMainFv
CheckReset__5CMainFv:
/* 80005CFC 00002C5C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80005D00 00002C60  7C 08 02 A6 */	mflr r0
/* 80005D04 00002C64  90 01 01 54 */	stw r0, 0x154(r1)
/* 80005D08 00002C68  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 80005D0C 00002C6C  93 C1 01 48 */	stw r30, 0x148(r1)
/* 80005D10 00002C70  7C 7E 1B 78 */	mr r30, r3
/* 80005D14 00002C74  48 37 DA 59 */	bl OSGetResetButtonState
/* 80005D18 00002C78  7C 7F 1B 78 */	mr r31, r3
/* 80005D1C 00002C7C  80 6D A0 7C */	lwz r3, gpController@sda21(r13)
/* 80005D20 00002C80  38 80 00 00 */	li r4, 0x0
/* 80005D24 00002C84  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80005D28 00002C88  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80005D2C 00002C8C  7D 89 03 A6 */	mtctr r12
/* 80005D30 00002C90  4E 80 04 21 */	bctrl 
/* 80005D34 00002C94  88 03 00 37 */	lbz r0, 0x37(r3)
/* 80005D38 00002C98  28 00 00 00 */	cmplwi r0, 0x0
/* 80005D3C 00002C9C  41 82 00 60 */	beq lbl_80005D9C
/* 80005D40 00002CA0  88 03 00 3A */	lbz r0, 0x3a(r3)
/* 80005D44 00002CA4  28 00 00 00 */	cmplwi r0, 0x0
/* 80005D48 00002CA8  41 82 00 54 */	beq lbl_80005D9C
/* 80005D4C 00002CAC  88 03 00 40 */	lbz r0, 0x40(r3)
/* 80005D50 00002CB0  28 00 00 00 */	cmplwi r0, 0x0
/* 80005D54 00002CB4  41 82 00 48 */	beq lbl_80005D9C
/* 80005D58 00002CB8  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80005D5C 00002CBC  C0 42 80 30 */	lfs f2, lbl_805A9D50@sda21(r2)
/* 80005D60 00002CC0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80005D64 00002CC4  4C 41 13 82 */	cror 2, 1, 2
/* 80005D68 00002CC8  40 82 00 58 */	bne lbl_80005DC0
/* 80005D6C 00002CCC  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 80005D70 00002CD0  C0 02 80 00 */	lfs f0, lbl_805A9D20@sda21(r2)
/* 80005D74 00002CD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80005D78 00002CD8  D0 1E 01 20 */	stfs f0, 0x120(r30)
/* 80005D7C 00002CDC  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80005D80 00002CE0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80005D84 00002CE4  40 81 00 3C */	ble lbl_80005DC0
/* 80005D88 00002CE8  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005D8C 00002CEC  38 60 00 01 */	li r3, 0x1
/* 80005D90 00002CF0  50 60 26 F6 */	rlwimi r0, r3, 4, 27, 27
/* 80005D94 00002CF4  98 1E 01 60 */	stb r0, 0x160(r30)
/* 80005D98 00002CF8  48 00 00 28 */	b lbl_80005DC0
lbl_80005D9C:
/* 80005D9C 00002CFC  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 80005DA0 00002D00  C0 02 80 30 */	lfs f0, lbl_805A9D50@sda21(r2)
/* 80005DA4 00002D04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80005DA8 00002D08  40 80 00 10 */	bge lbl_80005DB8
/* 80005DAC 00002D0C  C0 02 80 00 */	lfs f0, lbl_805A9D20@sda21(r2)
/* 80005DB0 00002D10  EC 01 00 2A */	fadds f0, f1, f0
/* 80005DB4 00002D14  D0 1E 01 24 */	stfs f0, 0x124(r30)
lbl_80005DB8:
/* 80005DB8 00002D18  C0 02 80 34 */	lfs f0, lbl_805A9D54@sda21(r2)
/* 80005DBC 00002D1C  D0 1E 01 20 */	stfs f0, 0x120(r30)
lbl_80005DC0:
/* 80005DC0 00002D20  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80005DC4 00002D24  40 82 00 1C */	bne lbl_80005DE0
/* 80005DC8 00002D28  88 7E 01 60 */	lbz r3, 0x160(r30)
/* 80005DCC 00002D2C  54 60 E7 FF */	rlwinm. r0, r3, 28, 31, 31
/* 80005DD0 00002D30  41 82 00 10 */	beq lbl_80005DE0
/* 80005DD4 00002D34  38 00 00 01 */	li r0, 0x1
/* 80005DD8 00002D38  50 03 17 7A */	rlwimi r3, r0, 2, 29, 29
/* 80005DDC 00002D3C  98 7E 01 60 */	stb r3, 0x160(r30)
lbl_80005DE0:
/* 80005DE0 00002D40  88 7E 01 60 */	lbz r3, 0x160(r30)
/* 80005DE4 00002D44  54 60 07 FF */	clrlwi. r0, r3, 31
/* 80005DE8 00002D48  40 82 02 38 */	bne lbl_80006020
/* 80005DEC 00002D4C  54 60 F7 FF */	rlwinm. r0, r3, 30, 31, 31
/* 80005DF0 00002D50  40 82 00 14 */	bne lbl_80005E04
/* 80005DF4 00002D54  54 60 EF FF */	rlwinm. r0, r3, 29, 31, 31
/* 80005DF8 00002D58  40 82 00 0C */	bne lbl_80005E04
/* 80005DFC 00002D5C  54 60 FF FF */	rlwinm. r0, r3, 31, 31, 31
/* 80005E00 00002D60  41 82 02 20 */	beq lbl_80006020
lbl_80005E04:
/* 80005E04 00002D64  80 7E 01 64 */	lwz r3, 0x164(r30)
/* 80005E08 00002D68  28 03 00 00 */	cmplwi r3, 0x0
/* 80005E0C 00002D6C  41 82 00 24 */	beq lbl_80005E30
/* 80005E10 00002D70  88 03 00 C8 */	lbz r0, 0xc8(r3)
/* 80005E14 00002D74  28 00 00 00 */	cmplwi r0, 0x0
/* 80005E18 00002D78  41 82 00 18 */	beq lbl_80005E30
/* 80005E1C 00002D7C  38 63 00 A0 */	addi r3, r3, 0xa0
/* 80005E20 00002D80  48 37 87 B1 */	bl OSCancelAlarm
/* 80005E24 00002D84  80 7E 01 64 */	lwz r3, 0x164(r30)
/* 80005E28 00002D88  38 00 00 00 */	li r0, 0x0
/* 80005E2C 00002D8C  98 03 00 C8 */	stb r0, 0xc8(r3)
lbl_80005E30:
/* 80005E30 00002D90  48 37 28 91 */	bl GXDrawDone
/* 80005E34 00002D94  48 37 27 15 */	bl sub_8037836c
/* 80005E38 00002D98  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005E3C 00002D9C  54 00 FF FF */	rlwinm. r0, r0, 31, 31, 31
/* 80005E40 00002DA0  40 82 00 2C */	bne lbl_80005E6C
/* 80005E44 00002DA4  38 61 00 38 */	addi r3, r1, 0x38
/* 80005E48 00002DA8  48 20 9A 05 */	bl __ct__12CGameOptionsFv
/* 80005E4C 00002DAC  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80005E50 00002DB0  38 81 00 38 */	addi r4, r1, 0x38
/* 80005E54 00002DB4  38 63 01 7C */	addi r3, r3, 0x17c
/* 80005E58 00002DB8  4B FF D9 49 */	bl __as__12CGameOptionsFRC12CGameOptions
/* 80005E5C 00002DBC  38 61 00 38 */	addi r3, r1, 0x38
/* 80005E60 00002DC0  38 80 FF FF */	li r4, -0x1
/* 80005E64 00002DC4  4B FF E1 21 */	bl __dt__12CGameOptionsFv
/* 80005E68 00002DC8  48 00 00 4C */	b lbl_80005EB4
lbl_80005E6C:
/* 80005E6C 00002DCC  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80005E70 00002DD0  38 80 00 04 */	li r4, 0x4
/* 80005E74 00002DD4  38 A0 00 00 */	li r5, 0x0
/* 80005E78 00002DD8  3B E3 01 7C */	addi r31, r3, 0x17c
/* 80005E7C 00002DDC  7F E3 FB 78 */	mr r3, r31
/* 80005E80 00002DE0  48 20 92 95 */	bl SetScreenBrightness__12CGameOptionsFib
/* 80005E84 00002DE4  7F E3 FB 78 */	mr r3, r31
/* 80005E88 00002DE8  38 80 00 00 */	li r4, 0x0
/* 80005E8C 00002DEC  38 A0 00 00 */	li r5, 0x0
/* 80005E90 00002DF0  48 20 91 C9 */	bl SetScreenPositionX__12CGameOptionsFib
/* 80005E94 00002DF4  7F E3 FB 78 */	mr r3, r31
/* 80005E98 00002DF8  38 80 00 00 */	li r4, 0x0
/* 80005E9C 00002DFC  38 A0 00 00 */	li r5, 0x0
/* 80005EA0 00002E00  48 20 91 41 */	bl SetScreenPositionY__12CGameOptionsFib
/* 80005EA4 00002E04  7F E3 FB 78 */	mr r3, r31
/* 80005EA8 00002E08  38 80 00 00 */	li r4, 0x0
/* 80005EAC 00002E0C  38 A0 00 00 */	li r5, 0x0
/* 80005EB0 00002E10  48 20 90 B9 */	bl SetScreenStretch__12CGameOptionsFib
lbl_80005EB4:
/* 80005EB4 00002E14  80 8D A0 90 */	lwz r4, lbl_805A8C50@sda21(r13)
/* 80005EB8 00002E18  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005EBC 00002E1C  38 A0 00 80 */	li r5, 0x80
/* 80005EC0 00002E20  38 C0 00 01 */	li r6, 0x1
/* 80005EC4 00002E24  38 E0 10 00 */	li r7, 0x1000
/* 80005EC8 00002E28  48 33 95 55 */	bl __ct__16CMemoryStreamOutFPvUlQ216CMemoryStreamOut10EOwnerShipi
/* 80005ECC 00002E2C  48 30 38 05 */	bl GetProgressiveMode__9CGraphicsFv
/* 80005ED0 00002E30  54 64 06 3E */	clrlwi r4, r3, 24
/* 80005ED4 00002E34  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005ED8 00002E38  7C 04 00 D0 */	neg r0, r4
/* 80005EDC 00002E3C  38 A0 00 01 */	li r5, 0x1
/* 80005EE0 00002E40  7C 00 23 78 */	or r0, r0, r4
/* 80005EE4 00002E44  54 04 0F FE */	srwi r4, r0, 31
/* 80005EE8 00002E48  48 33 95 B5 */	bl WriteBits__13COutputStreamFii
/* 80005EEC 00002E4C  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80005EF0 00002E50  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80005EF4 00002E54  38 63 01 7C */	addi r3, r3, 0x17c
/* 80005EF8 00002E58  48 20 94 19 */	bl PutTo__12CGameOptionsFR16CMemoryStreamOut
/* 80005EFC 00002E5C  88 8D 80 00 */	lbz r4, lbl_805A6BC0@sda21(r13)
/* 80005F00 00002E60  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005F04 00002E64  38 A0 00 01 */	li r5, 0x1
/* 80005F08 00002E68  7C 04 00 D0 */	neg r0, r4
/* 80005F0C 00002E6C  7C 00 23 78 */	or r0, r0, r4
/* 80005F10 00002E70  54 04 0F FE */	srwi r4, r0, 31
/* 80005F14 00002E74  48 33 95 89 */	bl WriteBits__13COutputStreamFii
/* 80005F18 00002E78  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005F1C 00002E7C  48 33 97 39 */	bl Flush__13COutputStreamFv
/* 80005F20 00002E80  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005F24 00002E84  38 80 FF FF */	li r4, -0x1
/* 80005F28 00002E88  48 33 94 79 */	bl __dt__16CMemoryStreamOutFv
/* 80005F2C 00002E8C  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80005F30 00002E90  38 63 01 7C */	addi r3, r3, 0x17c
/* 80005F34 00002E94  48 20 92 45 */	bl EnsureOptions__12CGameOptionsFv
/* 80005F38 00002E98  80 6D A0 90 */	lwz r3, lbl_805A8C50@sda21(r13)
/* 80005F3C 00002E9C  38 80 00 80 */	li r4, 0x80
/* 80005F40 00002EA0  48 37 8D 4D */	bl DCFlushRange
/* 80005F44 00002EA4  80 6D A0 90 */	lwz r3, lbl_805A8C50@sda21(r13)
/* 80005F48 00002EA8  38 83 00 80 */	addi r4, r3, 0x80
/* 80005F4C 00002EAC  48 37 D2 9D */	bl OSSetSaveRegion
/* 80005F50 00002EB0  38 60 00 01 */	li r3, 0x1
/* 80005F54 00002EB4  48 38 35 35 */	bl VISetBlack
/* 80005F58 00002EB8  48 38 33 95 */	bl VIFlush
/* 80005F5C 00002EBC  48 38 23 0D */	bl VIWaitForRetrace
/* 80005F60 00002EC0  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005F64 00002EC4  54 00 EF FF */	rlwinm. r0, r0, 29, 31, 31
/* 80005F68 00002EC8  41 82 00 18 */	beq lbl_80005F80
/* 80005F6C 00002ECC  38 60 00 01 */	li r3, 0x1
/* 80005F70 00002ED0  38 80 00 00 */	li r4, 0x0
/* 80005F74 00002ED4  38 A0 00 01 */	li r5, 0x1
/* 80005F78 00002ED8  48 37 D4 59 */	bl OSResetSystem
/* 80005F7C 00002EDC  48 00 00 68 */	b lbl_80005FE4
lbl_80005F80:
/* 80005F80 00002EE0  48 36 E9 15 */	bl DVDCheckDisk
/* 80005F84 00002EE4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80005F88 00002EE8  41 82 00 4C */	beq lbl_80005FD4
/* 80005F8C 00002EEC  48 36 E7 9D */	bl sub_8037454c
/* 80005F90 00002EF0  38 61 00 08 */	addi r3, r1, 0x8
/* 80005F94 00002EF4  48 36 DF 3D */	bl sub_80373cf4
/* 80005F98 00002EF8  88 0D A9 D0 */	lbz r0, lbl_805A9590@sda21(r13)
/* 80005F9C 00002EFC  28 00 00 00 */	cmplwi r0, 0x0
/* 80005FA0 00002F00  41 82 00 08 */	beq lbl_80005FA8
/* 80005FA4 00002F04  48 34 54 39 */	bl TrkFlushTracks__9CAudioSysFv
lbl_80005FA8:
/* 80005FA8 00002F08  38 60 00 00 */	li r3, 0x0
/* 80005FAC 00002F0C  48 36 72 ED */	bl AISetStreamPlayState
/* 80005FB0 00002F10  88 0D A9 D0 */	lbz r0, lbl_805A9590@sda21(r13)
/* 80005FB4 00002F14  28 00 00 00 */	cmplwi r0, 0x0
/* 80005FB8 00002F18  41 82 00 08 */	beq lbl_80005FC0
/* 80005FBC 00002F1C  48 3A AE F9 */	bl sndQuit
lbl_80005FC0:
/* 80005FC0 00002F20  38 60 00 00 */	li r3, 0x0
/* 80005FC4 00002F24  38 80 00 00 */	li r4, 0x0
/* 80005FC8 00002F28  38 A0 00 00 */	li r5, 0x0
/* 80005FCC 00002F2C  48 37 D4 05 */	bl OSResetSystem
/* 80005FD0 00002F30  48 00 00 14 */	b lbl_80005FE4
lbl_80005FD4:
/* 80005FD4 00002F34  38 60 00 01 */	li r3, 0x1
/* 80005FD8 00002F38  38 80 00 00 */	li r4, 0x0
/* 80005FDC 00002F3C  38 A0 00 00 */	li r5, 0x0
/* 80005FE0 00002F40  48 37 D3 F1 */	bl OSResetSystem
lbl_80005FE4:
/* 80005FE4 00002F44  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005FE8 00002F48  38 80 00 00 */	li r4, 0x0
/* 80005FEC 00002F4C  50 80 26 F6 */	rlwimi r0, r4, 4, 27, 27
/* 80005FF0 00002F50  38 60 00 01 */	li r3, 0x1
/* 80005FF4 00002F54  98 1E 01 60 */	stb r0, 0x160(r30)
/* 80005FF8 00002F58  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005FFC 00002F5C  50 80 17 7A */	rlwimi r0, r4, 2, 29, 29
/* 80006000 00002F60  98 1E 01 60 */	stb r0, 0x160(r30)
/* 80006004 00002F64  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80006008 00002F68  50 80 0F BC */	rlwimi r0, r4, 1, 30, 30
/* 8000600C 00002F6C  98 1E 01 60 */	stb r0, 0x160(r30)
/* 80006010 00002F70  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80006014 00002F74  50 80 1F 38 */	rlwimi r0, r4, 3, 28, 28
/* 80006018 00002F78  98 1E 01 60 */	stb r0, 0x160(r30)
/* 8000601C 00002F7C  48 00 00 1C */	b lbl_80006038
lbl_80006020:
/* 80006020 00002F80  7C 7F 00 D0 */	neg r3, r31
/* 80006024 00002F84  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80006028 00002F88  7C 64 FB 78 */	or r4, r3, r31
/* 8000602C 00002F8C  50 80 2E F6 */	rlwimi r0, r4, 5, 27, 27
/* 80006030 00002F90  38 60 00 00 */	li r3, 0x0
/* 80006034 00002F94  98 1E 01 60 */	stb r0, 0x160(r30)
lbl_80006038:
/* 80006038 00002F98  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8000603C 00002F9C  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 80006040 00002FA0  83 C1 01 48 */	lwz r30, 0x148(r1)
/* 80006044 00002FA4  7C 08 03 A6 */	mtlr r0
/* 80006048 00002FA8  38 21 01 50 */	addi r1, r1, 0x150
/* 8000604C 00002FAC  4E 80 00 20 */	blr 

.else

.global CheckReset__5CMainFv
CheckReset__5CMainFv:
/* 80005CFC 00002C5C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80005D00 00002C60  7C 08 02 A6 */	mflr r0
/* 80005D04 00002C64  90 01 01 54 */	stw r0, 0x154(r1)
/* 80005D08 00002C68  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 80005D0C 00002C6C  93 C1 01 48 */	stw r30, 0x148(r1)
/* 80005D10 00002C70  7C 7E 1B 78 */	mr r30, r3
/* 80005D14 00002C74  48 37 D8 7D */	bl OSGetResetButtonState
/* 80005D18 00002C78  7C 7F 1B 78 */	mr r31, r3
/* 80005D1C 00002C7C  80 6D A0 7C */	lwz r3, gpController@sda21(r13)
/* 80005D20 00002C80  38 80 00 00 */	li r4, 0
/* 80005D24 00002C84  81 83 00 00 */	lwz r12, 0(r3)
/* 80005D28 00002C88  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80005D2C 00002C8C  7D 89 03 A6 */	mtctr r12
/* 80005D30 00002C90  4E 80 04 21 */	bctrl
/* 80005D34 00002C94  88 03 00 37 */	lbz r0, 0x37(r3)
/* 80005D38 00002C98  28 00 00 00 */	cmplwi r0, 0
/* 80005D3C 00002C9C  41 82 00 60 */	beq lbl_80005D9C
/* 80005D40 00002CA0  88 03 00 3A */	lbz r0, 0x3a(r3)
/* 80005D44 00002CA4  28 00 00 00 */	cmplwi r0, 0
/* 80005D48 00002CA8  41 82 00 54 */	beq lbl_80005D9C
/* 80005D4C 00002CAC  88 03 00 40 */	lbz r0, 0x40(r3)
/* 80005D50 00002CB0  28 00 00 00 */	cmplwi r0, 0
/* 80005D54 00002CB4  41 82 00 48 */	beq lbl_80005D9C
/* 80005D58 00002CB8  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80005D5C 00002CBC  C0 42 80 30 */	lfs f2, lbl_805A9D50@sda21(r2)
/* 80005D60 00002CC0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80005D64 00002CC4  4C 41 13 82 */	cror 2, 1, 2
/* 80005D68 00002CC8  40 82 00 58 */	bne lbl_80005DC0
/* 80005D6C 00002CCC  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 80005D70 00002CD0  C0 02 80 00 */	lfs f0, lbl_805A9D20@sda21(r2)
/* 80005D74 00002CD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80005D78 00002CD8  D0 1E 01 20 */	stfs f0, 0x120(r30)
/* 80005D7C 00002CDC  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80005D80 00002CE0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80005D84 00002CE4  40 81 00 3C */	ble lbl_80005DC0
/* 80005D88 00002CE8  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005D8C 00002CEC  38 60 00 01 */	li r3, 1
/* 80005D90 00002CF0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80005D94 00002CF4  98 1E 01 60 */	stb r0, 0x160(r30)
/* 80005D98 00002CF8  48 00 00 28 */	b lbl_80005DC0
lbl_80005D9C:
/* 80005D9C 00002CFC  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 80005DA0 00002D00  C0 02 80 30 */	lfs f0, lbl_805A9D50@sda21(r2)
/* 80005DA4 00002D04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80005DA8 00002D08  40 80 00 10 */	bge lbl_80005DB8
/* 80005DAC 00002D0C  C0 02 80 00 */	lfs f0, lbl_805A9D20@sda21(r2)
/* 80005DB0 00002D10  EC 01 00 2A */	fadds f0, f1, f0
/* 80005DB4 00002D14  D0 1E 01 24 */	stfs f0, 0x124(r30)
lbl_80005DB8:
/* 80005DB8 00002D18  C0 02 80 34 */	lfs f0, lbl_805A9D54@sda21(r2)
/* 80005DBC 00002D1C  D0 1E 01 20 */	stfs f0, 0x120(r30)
lbl_80005DC0:
/* 80005DC0 00002D20  2C 1F 00 00 */	cmpwi r31, 0
/* 80005DC4 00002D24  40 82 00 1C */	bne lbl_80005DE0
/* 80005DC8 00002D28  88 7E 01 60 */	lbz r3, 0x160(r30)
/* 80005DCC 00002D2C  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 80005DD0 00002D30  41 82 00 10 */	beq lbl_80005DE0
/* 80005DD4 00002D34  38 00 00 01 */	li r0, 1
/* 80005DD8 00002D38  50 03 17 7A */	rlwimi r3, r0, 2, 0x1d, 0x1d
/* 80005DDC 00002D3C  98 7E 01 60 */	stb r3, 0x160(r30)
lbl_80005DE0:
/* 80005DE0 00002D40  88 7E 01 60 */	lbz r3, 0x160(r30)
/* 80005DE4 00002D44  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80005DE8 00002D48  40 82 02 1C */	bne lbl_80006004
/* 80005DEC 00002D4C  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 80005DF0 00002D50  40 82 00 14 */	bne lbl_80005E04
/* 80005DF4 00002D54  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80005DF8 00002D58  40 82 00 0C */	bne lbl_80005E04
/* 80005DFC 00002D5C  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 80005E00 00002D60  41 82 02 04 */	beq lbl_80006004
lbl_80005E04:
/* 80005E04 00002D64  80 7E 01 64 */	lwz r3, 0x164(r30)
/* 80005E08 00002D68  28 03 00 00 */	cmplwi r3, 0
/* 80005E0C 00002D6C  41 82 00 24 */	beq lbl_80005E30
/* 80005E10 00002D70  88 03 00 C8 */	lbz r0, 0xc8(r3)
/* 80005E14 00002D74  28 00 00 00 */	cmplwi r0, 0
/* 80005E18 00002D78  41 82 00 18 */	beq lbl_80005E30
/* 80005E1C 00002D7C  38 63 00 A0 */	addi r3, r3, 0xa0
/* 80005E20 00002D80  48 37 85 D5 */	bl OSCancelAlarm
/* 80005E24 00002D84  80 7E 01 64 */	lwz r3, 0x164(r30)
/* 80005E28 00002D88  38 00 00 00 */	li r0, 0
/* 80005E2C 00002D8C  98 03 00 C8 */	stb r0, 0xc8(r3)
lbl_80005E30:
/* 80005E30 00002D90  48 37 26 B5 */	bl GXDrawDone
/* 80005E34 00002D94  48 37 25 39 */	bl sub_8037836c
/* 80005E38 00002D98  48 34 54 C5 */	bl TrkFlushTracks__9CAudioSysFv
/* 80005E3C 00002D9C  38 60 00 00 */	li r3, 0
/* 80005E40 00002DA0  48 36 72 7D */	bl AISetStreamPlayState
/* 80005E44 00002DA4  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005E48 00002DA8  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80005E4C 00002DAC  40 82 00 2C */	bne lbl_80005E78
/* 80005E50 00002DB0  38 61 00 38 */	addi r3, r1, 0x38
/* 80005E54 00002DB4  48 20 99 7D */	bl __ct__12CGameOptionsFv
/* 80005E58 00002DB8  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80005E5C 00002DBC  38 81 00 38 */	addi r4, r1, 0x38
/* 80005E60 00002DC0  38 63 01 7C */	addi r3, r3, 0x17c
/* 80005E64 00002DC4  4B FF D9 3D */	bl __as__12CGameOptionsFRC12CGameOptions
/* 80005E68 00002DC8  38 61 00 38 */	addi r3, r1, 0x38
/* 80005E6C 00002DCC  38 80 FF FF */	li r4, -1
/* 80005E70 00002DD0  4B FF E1 15 */	bl __dt__12CGameOptionsFv
/* 80005E74 00002DD4  48 00 00 4C */	b lbl_80005EC0
lbl_80005E78:
/* 80005E78 00002DD8  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80005E7C 00002DDC  38 80 00 04 */	li r4, 4
/* 80005E80 00002DE0  38 A0 00 00 */	li r5, 0
/* 80005E84 00002DE4  3B E3 01 7C */	addi r31, r3, 0x17c
/* 80005E88 00002DE8  7F E3 FB 78 */	mr r3, r31
/* 80005E8C 00002DEC  48 20 92 0D */	bl SetScreenBrightness__12CGameOptionsFib
/* 80005E90 00002DF0  7F E3 FB 78 */	mr r3, r31
/* 80005E94 00002DF4  38 80 00 00 */	li r4, 0
/* 80005E98 00002DF8  38 A0 00 00 */	li r5, 0
/* 80005E9C 00002DFC  48 20 91 41 */	bl SetScreenPositionX__12CGameOptionsFib
/* 80005EA0 00002E00  7F E3 FB 78 */	mr r3, r31
/* 80005EA4 00002E04  38 80 00 00 */	li r4, 0
/* 80005EA8 00002E08  38 A0 00 00 */	li r5, 0
/* 80005EAC 00002E0C  48 20 90 B9 */	bl SetScreenPositionY__12CGameOptionsFib
/* 80005EB0 00002E10  7F E3 FB 78 */	mr r3, r31
/* 80005EB4 00002E14  38 80 00 00 */	li r4, 0
/* 80005EB8 00002E18  38 A0 00 00 */	li r5, 0
/* 80005EBC 00002E1C  48 20 90 31 */	bl SetScreenStretch__12CGameOptionsFib
lbl_80005EC0:
/* 80005EC0 00002E20  80 8D A0 90 */	lwz r4, lbl_805A8C50@sda21(r13)
/* 80005EC4 00002E24  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005EC8 00002E28  38 A0 00 80 */	li r5, 0x80
/* 80005ECC 00002E2C  38 C0 00 01 */	li r6, 1
/* 80005ED0 00002E30  38 E0 10 00 */	li r7, 0x1000
/* 80005ED4 00002E34  48 33 94 69 */	bl __ct__16CMemoryStreamOutFPvUlQ216CMemoryStreamOut10EOwnerShipi
/* 80005ED8 00002E38  48 30 37 19 */	bl GetProgressiveMode__9CGraphicsFv
/* 80005EDC 00002E3C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80005EE0 00002E40  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005EE4 00002E44  7C 04 00 D0 */	neg r0, r4
/* 80005EE8 00002E48  38 A0 00 01 */	li r5, 1
/* 80005EEC 00002E4C  7C 00 23 78 */	or r0, r0, r4
/* 80005EF0 00002E50  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80005EF4 00002E54  48 33 94 C9 */	bl WriteBits__13COutputStreamFii
/* 80005EF8 00002E58  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80005EFC 00002E5C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80005F00 00002E60  38 63 01 7C */	addi r3, r3, 0x17c
/* 80005F04 00002E64  48 20 93 91 */	bl PutTo__12CGameOptionsFR16CMemoryStreamOut
/* 80005F08 00002E68  88 8D 80 00 */	lbz r4, lbl_805A6BC0@sda21(r13)
/* 80005F0C 00002E6C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005F10 00002E70  38 A0 00 01 */	li r5, 1
/* 80005F14 00002E74  7C 04 00 D0 */	neg r0, r4
/* 80005F18 00002E78  7C 00 23 78 */	or r0, r0, r4
/* 80005F1C 00002E7C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80005F20 00002E80  48 33 94 9D */	bl WriteBits__13COutputStreamFii
/* 80005F24 00002E84  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005F28 00002E88  48 33 96 4D */	bl Flush__13COutputStreamFv
/* 80005F2C 00002E8C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80005F30 00002E90  38 80 FF FF */	li r4, -1
/* 80005F34 00002E94  48 33 93 8D */	bl __dt__16CMemoryStreamOutFv
/* 80005F38 00002E98  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80005F3C 00002E9C  38 63 01 7C */	addi r3, r3, 0x17c
/* 80005F40 00002EA0  48 20 91 BD */	bl EnsureOptions__12CGameOptionsFv
/* 80005F44 00002EA4  80 6D A0 90 */	lwz r3, lbl_805A8C50@sda21(r13)
/* 80005F48 00002EA8  38 80 00 80 */	li r4, 0x80
/* 80005F4C 00002EAC  48 37 8B 65 */	bl DCFlushRange
/* 80005F50 00002EB0  80 6D A0 90 */	lwz r3, lbl_805A8C50@sda21(r13)
/* 80005F54 00002EB4  38 83 00 80 */	addi r4, r3, 0x80
/* 80005F58 00002EB8  48 37 D0 B5 */	bl OSSetSaveRegion
/* 80005F5C 00002EBC  38 60 00 01 */	li r3, 1
/* 80005F60 00002EC0  48 38 33 4D */	bl VISetBlack
/* 80005F64 00002EC4  48 38 31 AD */	bl VIFlush
/* 80005F68 00002EC8  48 38 21 25 */	bl VIWaitForRetrace
/* 80005F6C 00002ECC  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005F70 00002ED0  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80005F74 00002ED4  41 82 00 18 */	beq lbl_80005F8C
/* 80005F78 00002ED8  38 60 00 01 */	li r3, 1
/* 80005F7C 00002EDC  38 80 00 00 */	li r4, 0
/* 80005F80 00002EE0  38 A0 00 01 */	li r5, 1
/* 80005F84 00002EE4  48 37 D2 71 */	bl OSResetSystem
/* 80005F88 00002EE8  48 00 00 40 */	b lbl_80005FC8
lbl_80005F8C:
/* 80005F8C 00002EEC  48 36 E7 2D */	bl DVDCheckDisk
/* 80005F90 00002EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80005F94 00002EF4  41 82 00 24 */	beq lbl_80005FB8
/* 80005F98 00002EF8  48 36 E5 B5 */	bl sub_8037454c
/* 80005F9C 00002EFC  38 61 00 08 */	addi r3, r1, 8
/* 80005FA0 00002F00  48 36 DD 55 */	bl sub_80373cf4
/* 80005FA4 00002F04  38 60 00 00 */	li r3, 0
/* 80005FA8 00002F08  38 80 00 00 */	li r4, 0
/* 80005FAC 00002F0C  38 A0 00 00 */	li r5, 0
/* 80005FB0 00002F10  48 37 D2 45 */	bl OSResetSystem
/* 80005FB4 00002F14  48 00 00 14 */	b lbl_80005FC8
lbl_80005FB8:
/* 80005FB8 00002F18  38 60 00 01 */	li r3, 1
/* 80005FBC 00002F1C  38 80 00 00 */	li r4, 0
/* 80005FC0 00002F20  38 A0 00 00 */	li r5, 0
/* 80005FC4 00002F24  48 37 D2 31 */	bl OSResetSystem
lbl_80005FC8:
/* 80005FC8 00002F28  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005FCC 00002F2C  38 80 00 00 */	li r4, 0
/* 80005FD0 00002F30  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80005FD4 00002F34  38 60 00 01 */	li r3, 1
/* 80005FD8 00002F38  98 1E 01 60 */	stb r0, 0x160(r30)
/* 80005FDC 00002F3C  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005FE0 00002F40  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80005FE4 00002F44  98 1E 01 60 */	stb r0, 0x160(r30)
/* 80005FE8 00002F48  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005FEC 00002F4C  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 80005FF0 00002F50  98 1E 01 60 */	stb r0, 0x160(r30)
/* 80005FF4 00002F54  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 80005FF8 00002F58  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80005FFC 00002F5C  98 1E 01 60 */	stb r0, 0x160(r30)
/* 80006000 00002F60  48 00 00 1C */	b lbl_8000601C
lbl_80006004:
/* 80006004 00002F64  7C 7F 00 D0 */	neg r3, r31
/* 80006008 00002F68  88 1E 01 60 */	lbz r0, 0x160(r30)
/* 8000600C 00002F6C  7C 64 FB 78 */	or r4, r3, r31
/* 80006010 00002F70  50 80 2E F6 */	rlwimi r0, r4, 5, 0x1b, 0x1b
/* 80006014 00002F74  38 60 00 00 */	li r3, 0
/* 80006018 00002F78  98 1E 01 60 */	stb r0, 0x160(r30)
lbl_8000601C:
/* 8000601C 00002F7C  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80006020 00002F80  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 80006024 00002F84  83 C1 01 48 */	lwz r30, 0x148(r1)
/* 80006028 00002F88  7C 08 03 A6 */	mtlr r0
/* 8000602C 00002F8C  38 21 01 50 */	addi r1, r1, 0x150
/* 80006030 00002F90  4E 80 00 20 */	blr

.endif

.global CheckTerminate__5CMainFv
CheckTerminate__5CMainFv:
/* 80006034 00002F94  38 60 00 00 */	li r3, 0
/* 80006038 00002F98  4E 80 00 20 */	blr

.global DrawDebugMetrics__5CMainFdR10CStopwatch
DrawDebugMetrics__5CMainFdR10CStopwatch:
/* 8000603C 00002F9C  4E 80 00 20 */	blr

.global DoPredrawMetrics__5CMainFv
DoPredrawMetrics__5CMainFv:
/* 80006040 00002FA0  4E 80 00 20 */	blr

.global FillInAssetIDs__5CMainFv
FillInAssetIDs__5CMainFv:
/* 80006044 00002FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006048 00002FA8  7C 08 02 A6 */	mflr r0
/* 8000604C 00002FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006050 00002FB0  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 80006054 00002FB4  80 8D A1 20 */	lwz r4, gpTweakGame@sda21(r13)
/* 80006058 00002FB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8000605C 00002FBC  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80006060 00002FC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80006064 00002FC4  7D 89 03 A6 */	mtctr r12
/* 80006068 00002FC8  4E 80 04 21 */	bctrl
/* 8000606C 00002FCC  7C 64 1B 79 */	or. r4, r3, r3
/* 80006070 00002FD0  41 82 00 10 */	beq lbl_80006080
/* 80006074 00002FD4  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80006078 00002FD8  80 84 00 04 */	lwz r4, 4(r4)
/* 8000607C 00002FDC  48 1C D8 C9 */	bl SetCurrentWorldId__10CGameStateFUi
lbl_80006080:
/* 80006080 00002FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006084 00002FE4  7C 08 03 A6 */	mtlr r0
/* 80006088 00002FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8000608C 00002FEC  4E 80 00 20 */	blr

.global GetResourceIdByName__11CResFactoryCFPCc
GetResourceIdByName__11CResFactoryCFPCc:
/* 80006090 00002FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006094 00002FF4  7C 08 02 A6 */	mflr r0
/* 80006098 00002FF8  38 63 00 04 */	addi r3, r3, 4
/* 8000609C 00002FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800060A0 00003000  48 33 5C 71 */	bl GetResourceIdByName__10CResLoaderCFPCc
/* 800060A4 00003004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800060A8 00003008  7C 08 03 A6 */	mtlr r0
/* 800060AC 0000300C  38 21 00 10 */	addi r1, r1, 0x10
/* 800060B0 00003010  4E 80 00 20 */	blr

.if version >= 1

.global AddPaksAndFactories__18CGameGlobalObjectsFv
AddPaksAndFactories__18CGameGlobalObjectsFv:
/* 800060D0 00003030  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 800060D4 00003034  7C 08 02 A6 */	mflr r0
/* 800060D8 00003038  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 800060DC 0000303C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 800060E0 00003040  38 63 68 50 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 800060E4 00003044  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 800060E8 00003048  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 800060EC 0000304C  7C 9E 23 78 */	mr r30, r4
/* 800060F0 00003050  83 ED A0 60 */	lwz r31, gpResourceFactory@sda21(r13)
/* 800060F4 00003054  48 30 67 39 */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 800060F8 00003058  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 800060FC 0000305C  38 63 68 50 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 80006100 00003060  48 30 65 C1 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 80006104 00003064  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006108 00003068  38 61 00 8C */	addi r3, r1, 0x8c
/* 8000610C 0000306C  38 84 C0 54 */	addi r4, r4, lbl_803CBE74@l
/* 80006110 00003070  38 84 00 A7 */	addi r4, r4, 0xa7
/* 80006114 00003074  4B FF EB A5 */	bl string_l__4rstlFPCc
/* 80006118 00003078  38 7F 00 04 */	addi r3, r31, 0x4
/* 8000611C 0000307C  38 81 00 8C */	addi r4, r1, 0x8c
/* 80006120 00003080  38 A0 00 00 */	li r5, 0x0
/* 80006124 00003084  38 C0 00 00 */	li r6, 0x0
/* 80006128 00003088  48 33 55 15 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 8000612C 0000308C  38 61 00 8C */	addi r3, r1, 0x8c
/* 80006130 00003090  48 33 7A 91 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006134 00003094  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006138 00003098  38 61 00 7C */	addi r3, r1, 0x7c
/* 8000613C 0000309C  38 84 C0 54 */	addi r4, r4, lbl_803CBE74@l
/* 80006140 000030A0  38 84 00 B3 */	addi r4, r4, 0xb3
/* 80006144 000030A4  4B FF EB 75 */	bl string_l__4rstlFPCc
/* 80006148 000030A8  38 7F 00 04 */	addi r3, r31, 0x4
/* 8000614C 000030AC  38 81 00 7C */	addi r4, r1, 0x7c
/* 80006150 000030B0  38 A0 00 00 */	li r5, 0x0
/* 80006154 000030B4  38 C0 00 00 */	li r6, 0x0
/* 80006158 000030B8  48 33 54 E5 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 8000615C 000030BC  38 61 00 7C */	addi r3, r1, 0x7c
/* 80006160 000030C0  48 33 7A 61 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006164 000030C4  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006168 000030C8  38 61 00 6C */	addi r3, r1, 0x6c
/* 8000616C 000030CC  38 84 C0 54 */	addi r4, r4, lbl_803CBE74@l
/* 80006170 000030D0  38 84 00 BA */	addi r4, r4, 0xba
/* 80006174 000030D4  4B FF EB 45 */	bl string_l__4rstlFPCc
/* 80006178 000030D8  38 7F 00 04 */	addi r3, r31, 0x4
/* 8000617C 000030DC  38 81 00 6C */	addi r4, r1, 0x6c
/* 80006180 000030E0  38 A0 00 00 */	li r5, 0x0
/* 80006184 000030E4  38 C0 00 00 */	li r6, 0x0
/* 80006188 000030E8  48 33 54 B5 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 8000618C 000030EC  38 61 00 6C */	addi r3, r1, 0x6c
/* 80006190 000030F0  48 33 7A 31 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006194 000030F4  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006198 000030F8  38 61 00 5C */	addi r3, r1, 0x5c
/* 8000619C 000030FC  38 84 C0 54 */	addi r4, r4, lbl_803CBE74@l
/* 800061A0 00003100  38 84 00 C3 */	addi r4, r4, 0xc3
/* 800061A4 00003104  4B FF EB 15 */	bl string_l__4rstlFPCc
/* 800061A8 00003108  38 7F 00 04 */	addi r3, r31, 0x4
/* 800061AC 0000310C  38 81 00 5C */	addi r4, r1, 0x5c
/* 800061B0 00003110  38 A0 00 00 */	li r5, 0x0
/* 800061B4 00003114  38 C0 00 00 */	li r6, 0x0
/* 800061B8 00003118  48 33 54 85 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 800061BC 0000311C  38 61 00 5C */	addi r3, r1, 0x5c
/* 800061C0 00003120  48 33 7A 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800061C4 00003124  38 61 00 9C */	addi r3, r1, 0x9c
/* 800061C8 00003128  38 80 00 01 */	li r4, 0x1
/* 800061CC 0000312C  48 26 3A 71 */	bl __ct__18CErrorOutputWindowFiff
/* 800061D0 00003130  38 60 00 01 */	li r3, 0x1
/* 800061D4 00003134  48 30 33 B5 */	bl SetIsBeginSceneClearFb__9CGraphicsFb
/* 800061D8 00003138  3C 80 80 3F */	lis r4, mViewport__9CGraphics@ha
/* 800061DC 0000313C  38 60 00 00 */	li r3, 0x0
/* 800061E0 00003140  38 C4 DA F0 */	addi r6, r4, mViewport__9CGraphics@l
/* 800061E4 00003144  38 80 00 00 */	li r4, 0x0
/* 800061E8 00003148  80 A6 00 08 */	lwz r5, 0x8(r6)
/* 800061EC 0000314C  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 800061F0 00003150  48 30 5F 81 */	bl SetViewport__9CGraphicsFiiii
/* 800061F4 00003154  7F C3 F3 78 */	mr r3, r30
/* 800061F8 00003158  48 34 8E 9D */	bl Create__11IControllerFRC10COsContext
/* 800061FC 0000315C  90 61 00 08 */	stw r3, 0x8(r1)
/* 80006200 00003160  90 6D A0 7C */	stw r3, gpController@sda21(r13)
/* 80006204 00003164  48 00 00 44 */	b lbl_80006248
lbl_80006208:
/* 80006208 00003168  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 8000620C 0000316C  38 63 00 04 */	addi r3, r3, 0x4
/* 80006210 00003170  48 33 5C 91 */	bl AsyncIdlePakLoading__10CResLoaderFv
/* 80006214 00003174  38 61 00 9C */	addi r3, r1, 0x9c
/* 80006218 00003178  48 26 33 09 */	bl sub_802694a4
/* 8000621C 0000317C  48 30 5D 69 */	bl BeginScene__9CGraphicsFv
/* 80006220 00003180  38 61 00 9C */	addi r3, r1, 0x9c
/* 80006224 00003184  48 26 32 D1 */	bl sub_80269478
/* 80006228 00003188  48 30 59 79 */	bl EndScene__9CGraphicsFv
/* 8000622C 0000318C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 80006230 00003190  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80006234 00003194  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80006238 00003198  7D 89 03 A6 */	mtctr r12
/* 8000623C 0000319C  4E 80 04 21 */	bctrl 
/* 80006240 000031A0  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 80006244 000031A4  4B FF FA B9 */	bl CheckReset__5CMainFv
lbl_80006248:
/* 80006248 000031A8  38 7F 00 04 */	addi r3, r31, 0x4
/* 8000624C 000031AC  48 33 5C 45 */	bl AreAllPaksLoaded__10CResLoaderCFv
/* 80006250 000031B0  54 60 06 3F */	clrlwi. r0, r3, 24
/* 80006254 000031B4  41 82 FF B4 */	beq lbl_80006208
/* 80006258 000031B8  38 00 00 00 */	li r0, 0x0
/* 8000625C 000031BC  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 80006260 000031C0  38 83 C0 54 */	addi r4, r3, lbl_803CBE74@l
/* 80006264 000031C4  90 0D A0 7C */	stw r0, gpController@sda21(r13)
/* 80006268 000031C8  38 61 00 4C */	addi r3, r1, 0x4c
/* 8000626C 000031CC  38 84 00 D1 */	addi r4, r4, 0xd1
/* 80006270 000031D0  4B FF EA 49 */	bl string_l__4rstlFPCc
/* 80006274 000031D4  38 7F 00 04 */	addi r3, r31, 0x4
/* 80006278 000031D8  38 81 00 4C */	addi r4, r1, 0x4c
/* 8000627C 000031DC  38 A0 00 01 */	li r5, 0x1
/* 80006280 000031E0  38 C0 00 00 */	li r6, 0x0
/* 80006284 000031E4  48 33 53 B9 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006288 000031E8  38 61 00 4C */	addi r3, r1, 0x4c
/* 8000628C 000031EC  48 33 79 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006290 000031F0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006294 000031F4  38 61 00 3C */	addi r3, r1, 0x3c
/* 80006298 000031F8  38 84 C0 54 */	addi r4, r4, lbl_803CBE74@l
/* 8000629C 000031FC  38 84 00 DF */	addi r4, r4, 0xdf
/* 800062A0 00003200  4B FF EA 19 */	bl string_l__4rstlFPCc
/* 800062A4 00003204  38 7F 00 04 */	addi r3, r31, 0x4
/* 800062A8 00003208  38 81 00 3C */	addi r4, r1, 0x3c
/* 800062AC 0000320C  38 A0 00 01 */	li r5, 0x1
/* 800062B0 00003210  38 C0 00 00 */	li r6, 0x0
/* 800062B4 00003214  48 33 53 89 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 800062B8 00003218  38 61 00 3C */	addi r3, r1, 0x3c
/* 800062BC 0000321C  48 33 79 05 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800062C0 00003220  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 800062C4 00003224  38 61 00 2C */	addi r3, r1, 0x2c
/* 800062C8 00003228  38 84 C0 54 */	addi r4, r4, lbl_803CBE74@l
/* 800062CC 0000322C  38 84 00 ED */	addi r4, r4, 0xed
/* 800062D0 00003230  4B FF E9 E9 */	bl string_l__4rstlFPCc
/* 800062D4 00003234  38 7F 00 04 */	addi r3, r31, 0x4
/* 800062D8 00003238  38 81 00 2C */	addi r4, r1, 0x2c
/* 800062DC 0000323C  38 A0 00 01 */	li r5, 0x1
/* 800062E0 00003240  38 C0 00 00 */	li r6, 0x0
/* 800062E4 00003244  48 33 53 59 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 800062E8 00003248  38 61 00 2C */	addi r3, r1, 0x2c
/* 800062EC 0000324C  48 33 78 D5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800062F0 00003250  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 800062F4 00003254  38 61 00 1C */	addi r3, r1, 0x1c
/* 800062F8 00003258  38 84 C0 54 */	addi r4, r4, lbl_803CBE74@l
/* 800062FC 0000325C  38 84 00 FB */	addi r4, r4, 0xfb
/* 80006300 00003260  4B FF E9 B9 */	bl string_l__4rstlFPCc
/* 80006304 00003264  38 7F 00 04 */	addi r3, r31, 0x4
/* 80006308 00003268  38 81 00 1C */	addi r4, r1, 0x1c
/* 8000630C 0000326C  38 A0 00 00 */	li r5, 0x0
/* 80006310 00003270  38 C0 00 00 */	li r6, 0x0
/* 80006314 00003274  48 33 53 29 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006318 00003278  38 61 00 1C */	addi r3, r1, 0x1c
/* 8000631C 0000327C  48 33 78 A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006320 00003280  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006324 00003284  38 61 00 0C */	addi r3, r1, 0xc
/* 80006328 00003288  38 84 C0 54 */	addi r4, r4, lbl_803CBE74@l
/* 8000632C 0000328C  38 84 01 09 */	addi r4, r4, 0x109
/* 80006330 00003290  4B FF E9 89 */	bl string_l__4rstlFPCc
/* 80006334 00003294  38 7F 00 04 */	addi r3, r31, 0x4
/* 80006338 00003298  38 81 00 0C */	addi r4, r1, 0xc
/* 8000633C 0000329C  38 A0 00 00 */	li r5, 0x0
/* 80006340 000032A0  38 C0 00 00 */	li r6, 0x0
/* 80006344 000032A4  48 33 52 F9 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006348 000032A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8000634C 000032AC  48 33 78 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006350 000032B0  3C 60 80 35 */	lis r3, FStringTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006354 000032B4  3C 80 53 54 */	lis r4, 0x5354
/* 80006358 000032B8  38 A3 66 04 */	addi r5, r3, FStringTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000635C 000032BC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006360 000032C0  38 84 52 47 */	addi r4, r4, 0x5247
/* 80006364 000032C4  48 33 2B 1D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006368 000032C8  3C 60 80 35 */	lis r3, "FModelFactory__FRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer"@ha
/* 8000636C 000032CC  3C 80 43 4D */	lis r4, 0x434d
/* 80006370 000032D0  38 A3 57 E0 */	addi r5, r3, "FModelFactory__FRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer"@l
/* 80006374 000032D4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006378 000032D8  38 84 44 4C */	addi r4, r4, 0x444c
/* 8000637C 000032DC  48 33 2A 45 */	bl "AddFactory__11CFactoryMgrFUiPFRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer_C16CFactoryFnReturn"
/* 80006380 000032E0  3C 60 80 31 */	lis r3, FTextureFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006384 000032E4  3C 80 54 58 */	lis r4, 0x5458
/* 80006388 000032E8  38 A3 E8 4C */	addi r5, r3, FTextureFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000638C 000032EC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006390 000032F0  38 84 54 52 */	addi r4, r4, 0x5452
/* 80006394 000032F4  48 33 2A ED */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006398 000032F8  3C 60 80 35 */	lis r3, FSkinRulesFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000639C 000032FC  3C 80 43 53 */	lis r4, 0x4353
/* 800063A0 00003300  38 A3 3D 68 */	addi r5, r3, FSkinRulesFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800063A4 00003304  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800063A8 00003308  38 84 4B 52 */	addi r4, r4, 0x4b52
/* 800063AC 0000330C  48 33 2A D5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800063B0 00003310  3C 60 80 30 */	lis r3, AnimSourceFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800063B4 00003314  3C 80 41 4E */	lis r4, 0x414e
/* 800063B8 00003318  38 A3 E2 78 */	addi r5, r3, AnimSourceFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800063BC 0000331C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800063C0 00003320  38 84 49 4D */	addi r4, r4, 0x494d
/* 800063C4 00003324  48 33 2A BD */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800063C8 00003328  3C 60 80 30 */	lis r3, FCharLayoutInfo__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800063CC 0000332C  3C 80 43 49 */	lis r4, 0x4349
/* 800063D0 00003330  38 A3 82 6C */	addi r5, r3, FCharLayoutInfo__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800063D4 00003334  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800063D8 00003338  38 84 4E 46 */	addi r4, r4, 0x4e46
/* 800063DC 0000333C  48 33 2A A5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800063E0 00003340  3C 60 80 2E */	lis r3, FAnimCharacterSet__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800063E4 00003344  3C 80 41 4E */	lis r4, 0x414e
/* 800063E8 00003348  38 A3 81 98 */	addi r5, r3, FAnimCharacterSet__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800063EC 0000334C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800063F0 00003350  38 84 43 53 */	addi r4, r4, 0x4353
/* 800063F4 00003354  48 33 2A 8D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800063F8 00003358  3C 60 80 2B */	lis r3, FCollisionResponseDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800063FC 0000335C  3C 80 43 52 */	lis r4, 0x4352
/* 80006400 00003360  38 A3 22 04 */	addi r5, r3, FCollisionResponseDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006404 00003364  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006408 00003368  38 84 53 43 */	addi r4, r4, 0x5343
/* 8000640C 0000336C  48 33 2A 75 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006410 00003370  3C 60 80 33 */	lis r3, FParticleSwooshDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006414 00003374  3C 80 53 57 */	lis r4, 0x5357
/* 80006418 00003378  38 A3 00 C0 */	addi r5, r3, FParticleSwooshDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000641C 0000337C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006420 00003380  38 84 48 43 */	addi r4, r4, 0x4843
/* 80006424 00003384  48 33 2A 5D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006428 00003388  3C 60 80 33 */	lis r3, FParticleFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000642C 0000338C  3C 80 50 41 */	lis r4, 0x5041
/* 80006430 00003390  38 A3 A0 EC */	addi r5, r3, FParticleFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006434 00003394  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006438 00003398  38 84 52 54 */	addi r4, r4, 0x5254
/* 8000643C 0000339C  48 33 2A 45 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006440 000033A0  3C 60 80 36 */	lis r3, FParticleElectricDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006444 000033A4  3C 80 45 4C */	lis r4, 0x454c
/* 80006448 000033A8  38 A3 E9 10 */	addi r5, r3, FParticleElectricDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000644C 000033AC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006450 000033B0  38 84 53 43 */	addi r4, r4, 0x5343
/* 80006454 000033B4  48 33 2A 2D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006458 000033B8  3C 60 80 2B */	lis r3, FProjectileWeaponDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000645C 000033BC  3C 80 57 50 */	lis r4, 0x5750
/* 80006460 000033C0  38 A3 20 60 */	addi r5, r3, FProjectileWeaponDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006464 000033C4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006468 000033C8  38 84 53 43 */	addi r4, r4, 0x5343
/* 8000646C 000033CC  48 33 2A 15 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006470 000033D0  3C 60 80 2C */	lis r3, RGuiFrameFactoryInGame__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006474 000033D4  3C 80 46 52 */	lis r4, 0x4652
/* 80006478 000033D8  38 A3 1E A0 */	addi r5, r3, RGuiFrameFactoryInGame__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000647C 000033DC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006480 000033E0  38 84 4D 45 */	addi r4, r4, 0x4d45
/* 80006484 000033E4  48 33 29 FD */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006488 000033E8  3C 60 80 30 */	lis r3, FRasterFontFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000648C 000033EC  3C 80 46 4F */	lis r4, 0x464f
/* 80006490 000033F0  38 A3 01 60 */	addi r5, r3, FRasterFontFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006494 000033F4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006498 000033F8  38 84 4E 54 */	addi r4, r4, 0x4e54
/* 8000649C 000033FC  48 33 29 E5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800064A0 00003400  3C 60 80 17 */	lis r3, FScannableObjectInfoFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800064A4 00003404  3C 80 53 43 */	lis r4, 0x5343
/* 800064A8 00003408  38 A3 99 98 */	addi r5, r3, FScannableObjectInfoFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800064AC 0000340C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800064B0 00003410  38 84 41 4E */	addi r4, r4, 0x414e
/* 800064B4 00003414  48 33 29 CD */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800064B8 00003418  3C 60 80 2F */	lis r3, AnimPOIDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800064BC 0000341C  3C 80 45 56 */	lis r4, 0x4556
/* 800064C0 00003420  38 A3 BB D0 */	addi r5, r3, AnimPOIDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800064C4 00003424  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800064C8 00003428  38 84 4E 54 */	addi r4, r4, 0x4e54
/* 800064CC 0000342C  48 33 29 B5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800064D0 00003430  3C 60 80 0E */	lis r3, FAiFiniteStateMachineFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800064D4 00003434  3C 80 41 46 */	lis r4, 0x4146
/* 800064D8 00003438  38 A3 E8 78 */	addi r5, r3, FAiFiniteStateMachineFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800064DC 0000343C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800064E0 00003440  38 84 53 4D */	addi r4, r4, 0x534d
/* 800064E4 00003444  48 33 29 9D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800064E8 00003448  3C 60 80 35 */	lis r3, FAudioGroupSetLocDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800064EC 0000344C  3C 80 41 47 */	lis r4, 0x4147
/* 800064F0 00003450  38 A3 A1 04 */	addi r5, r3, FAudioGroupSetLocDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800064F4 00003454  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800064F8 00003458  38 84 53 43 */	addi r4, r4, 0x5343
/* 800064FC 0000345C  48 33 28 C5 */	bl "AddFactory__11CFactoryMgrFUiPFRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer_C16CFactoryFnReturn"
/* 80006500 00003460  3C 60 80 2B */	lis r3, FCollidableOBBTreeGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006504 00003464  3C 80 44 43 */	lis r4, 0x4443
/* 80006508 00003468  38 A3 DF 9C */	addi r5, r3, FCollidableOBBTreeGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000650C 0000346C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006510 00003470  38 84 4C 4E */	addi r4, r4, 0x4c4e
/* 80006514 00003474  48 33 29 6D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006518 00003478  3C 60 80 2B */	lis r3, FDecalDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000651C 0000347C  3C 80 44 50 */	lis r4, 0x4450
/* 80006520 00003480  38 A3 46 8C */	addi r5, r3, FDecalDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006524 00003484  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006528 00003488  38 84 53 43 */	addi r4, r4, 0x5343
/* 8000652C 0000348C  48 33 29 55 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006530 00003490  3C 60 80 2E */	lis r3, FAudioTranslationTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006534 00003494  3C 80 41 54 */	lis r4, 0x4154
/* 80006538 00003498  38 A3 79 C4 */	addi r5, r3, FAudioTranslationTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000653C 0000349C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006540 000034A0  38 84 42 4C */	addi r4, r4, 0x424c
/* 80006544 000034A4  48 33 29 3D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006548 000034A8  3C 60 80 1D */	lis r3, "FPathFindAreaFactory__FRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer"@ha
/* 8000654C 000034AC  3C 80 50 41 */	lis r4, 0x5041
/* 80006550 000034B0  38 A3 A1 E8 */	addi r5, r3, "FPathFindAreaFactory__FRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer"@l
/* 80006554 000034B4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006558 000034B8  38 84 54 48 */	addi r4, r4, 0x5448
/* 8000655C 000034BC  48 33 28 65 */	bl "AddFactory__11CFactoryMgrFUiPFRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer_C16CFactoryFnReturn"
/* 80006560 000034C0  3C 60 80 0A */	lis r3, FMapWorldFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006564 000034C4  3C 80 4D 41 */	lis r4, 0x4d41
/* 80006568 000034C8  38 A3 F4 70 */	addi r5, r3, FMapWorldFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000656C 000034CC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006570 000034D0  38 84 50 57 */	addi r4, r4, 0x5057
/* 80006574 000034D4  48 33 29 0D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006578 000034D8  3C 60 80 08 */	lis r3, FMapAreaFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000657C 000034DC  3C 80 4D 41 */	lis r4, 0x4d41
/* 80006580 000034E0  38 A3 02 0C */	addi r5, r3, FMapAreaFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006584 000034E4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006588 000034E8  38 84 50 41 */	addi r4, r4, 0x5041
/* 8000658C 000034EC  48 33 28 F5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006590 000034F0  3C 60 80 20 */	lis r3, FMapUniverseFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006594 000034F4  3C 80 4D 41 */	lis r4, 0x4d41
/* 80006598 000034F8  38 A3 1D 8C */	addi r5, r3, FMapUniverseFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000659C 000034FC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800065A0 00003500  38 84 50 55 */	addi r4, r4, 0x5055
/* 800065A4 00003504  48 33 28 DD */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800065A8 00003508  3C 60 80 36 */	lis r3, FMidiDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800065AC 0000350C  3C 80 43 53 */	lis r4, 0x4353
/* 800065B0 00003510  38 A3 8C 68 */	addi r5, r3, FMidiDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800065B4 00003514  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800065B8 00003518  38 84 4E 47 */	addi r4, r4, 0x4e47
/* 800065BC 0000351C  48 33 28 C5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800065C0 00003520  3C 60 80 36 */	lis r3, FDependencyGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800065C4 00003524  3C 80 44 47 */	lis r4, 0x4447
/* 800065C8 00003528  38 A3 51 30 */	addi r5, r3, FDependencyGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800065CC 0000352C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800065D0 00003530  38 84 52 50 */	addi r4, r4, 0x5250
/* 800065D4 00003534  48 33 28 AD */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800065D8 00003538  3C 60 80 27 */	lis r3, FSaveWorldFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800065DC 0000353C  3C 80 53 41 */	lis r4, 0x5341
/* 800065E0 00003540  38 A3 AD DC */	addi r5, r3, FSaveWorldFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800065E4 00003544  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800065E8 00003548  38 84 56 57 */	addi r4, r4, 0x5657
/* 800065EC 0000354C  48 33 28 95 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800065F0 00003550  3C 60 80 26 */	lis r3, FHintFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800065F4 00003554  3C 80 48 49 */	lis r4, 0x4849
/* 800065F8 00003558  38 A3 71 C0 */	addi r5, r3, FHintFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800065FC 0000355C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006600 00003560  38 84 4E 54 */	addi r4, r4, 0x4e54
/* 80006604 00003564  48 33 28 7D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006608 00003568  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8000660C 0000356C  28 03 00 00 */	cmplwi r3, 0x0
/* 80006610 00003570  41 82 00 18 */	beq lbl_80006628
/* 80006614 00003574  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80006618 00003578  38 80 00 01 */	li r4, 0x1
/* 8000661C 0000357C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80006620 00003580  7D 89 03 A6 */	mtctr r12
/* 80006624 00003584  4E 80 04 21 */	bctrl 
lbl_80006628:
/* 80006628 00003588  3C 80 80 3F */	lis r4, lbl_803EA3C0@ha
/* 8000662C 0000358C  38 61 00 9C */	addi r3, r1, 0x9c
/* 80006630 00003590  38 04 A5 A0 */	addi r0, r4, lbl_803EA3C0@l
/* 80006634 00003594  38 80 00 00 */	li r4, 0x0
/* 80006638 00003598  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8000663C 0000359C  48 04 C5 E5 */	bl __dt__6CIOWinFv
/* 80006640 000035A0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80006644 000035A4  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80006648 000035A8  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8000664C 000035AC  7C 08 03 A6 */	mtlr r0
/* 80006650 000035B0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80006654 000035B4  4E 80 00 20 */	blr 

.else

.global AddPaksAndFactories__18CGameGlobalObjectsFv
AddPaksAndFactories__18CGameGlobalObjectsFv:
/* 800060B4 00003014  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 800060B8 00003018  7C 08 02 A6 */	mflr r0
/* 800060BC 0000301C  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 800060C0 00003020  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 800060C4 00003024  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 800060C8 00003028  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 800060CC 0000302C  83 ED A0 60 */	lwz r31, gpResourceFactory@sda21(r13)
/* 800060D0 00003030  48 30 66 7D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 800060D4 00003034  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 800060D8 00003038  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 800060DC 0000303C  48 30 65 05 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 800060E0 00003040  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 800060E4 00003044  38 61 00 88 */	addi r3, r1, 0x88
/* 800060E8 00003048  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 800060EC 0000304C  38 84 00 A7 */	addi r4, r4, 0xa7
/* 800060F0 00003050  4B FF EB C9 */	bl string_l__4rstlFPCc
/* 800060F4 00003054  38 7F 00 04 */	addi r3, r31, 4
/* 800060F8 00003058  38 81 00 88 */	addi r4, r1, 0x88
/* 800060FC 0000305C  38 A0 00 00 */	li r5, 0
/* 80006100 00003060  38 C0 00 00 */	li r6, 0
/* 80006104 00003064  48 33 54 59 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006108 00003068  38 61 00 88 */	addi r3, r1, 0x88
/* 8000610C 0000306C  48 33 79 D5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006110 00003070  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006114 00003074  38 61 00 78 */	addi r3, r1, 0x78
/* 80006118 00003078  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000611C 0000307C  38 84 00 B3 */	addi r4, r4, 0xb3
/* 80006120 00003080  4B FF EB 99 */	bl string_l__4rstlFPCc
/* 80006124 00003084  38 7F 00 04 */	addi r3, r31, 4
/* 80006128 00003088  38 81 00 78 */	addi r4, r1, 0x78
/* 8000612C 0000308C  38 A0 00 00 */	li r5, 0
/* 80006130 00003090  38 C0 00 00 */	li r6, 0
/* 80006134 00003094  48 33 54 29 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006138 00003098  38 61 00 78 */	addi r3, r1, 0x78
/* 8000613C 0000309C  48 33 79 A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006140 000030A0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006144 000030A4  38 61 00 68 */	addi r3, r1, 0x68
/* 80006148 000030A8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000614C 000030AC  38 84 00 BA */	addi r4, r4, 0xba
/* 80006150 000030B0  4B FF EB 69 */	bl string_l__4rstlFPCc
/* 80006154 000030B4  38 7F 00 04 */	addi r3, r31, 4
/* 80006158 000030B8  38 81 00 68 */	addi r4, r1, 0x68
/* 8000615C 000030BC  38 A0 00 00 */	li r5, 0
/* 80006160 000030C0  38 C0 00 00 */	li r6, 0
/* 80006164 000030C4  48 33 53 F9 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006168 000030C8  38 61 00 68 */	addi r3, r1, 0x68
/* 8000616C 000030CC  48 33 79 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006170 000030D0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006174 000030D4  38 61 00 58 */	addi r3, r1, 0x58
/* 80006178 000030D8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000617C 000030DC  38 84 00 C3 */	addi r4, r4, 0xc3
/* 80006180 000030E0  4B FF EB 39 */	bl string_l__4rstlFPCc
/* 80006184 000030E4  38 7F 00 04 */	addi r3, r31, 4
/* 80006188 000030E8  38 81 00 58 */	addi r4, r1, 0x58
/* 8000618C 000030EC  38 A0 00 00 */	li r5, 0
/* 80006190 000030F0  38 C0 00 00 */	li r6, 0
/* 80006194 000030F4  48 33 53 C9 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006198 000030F8  38 61 00 58 */	addi r3, r1, 0x58
/* 8000619C 000030FC  48 33 79 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800061A0 00003100  38 61 00 98 */	addi r3, r1, 0x98
/* 800061A4 00003104  38 80 00 01 */	li r4, 1
/* 800061A8 00003108  48 26 3A 19 */	bl __ct__18CErrorOutputWindowFiff
/* 800061AC 0000310C  38 60 00 01 */	li r3, 1
/* 800061B0 00003110  48 30 32 F9 */	bl SetIsBeginSceneClearFb__9CGraphicsFb
/* 800061B4 00003114  3C 80 80 3F */	lis r4, mViewport__9CGraphics@ha
/* 800061B8 00003118  38 60 00 00 */	li r3, 0
/* 800061BC 0000311C  38 C4 D9 10 */	addi r6, r4, mViewport__9CGraphics@l
/* 800061C0 00003120  38 80 00 00 */	li r4, 0
/* 800061C4 00003124  80 A6 00 08 */	lwz r5, 8(r6)
/* 800061C8 00003128  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 800061CC 0000312C  48 30 5E C5 */	bl SetViewport__9CGraphicsFiiii
/* 800061D0 00003130  48 00 00 28 */	b lbl_800061F8
lbl_800061D4:
/* 800061D4 00003134  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 800061D8 00003138  38 63 00 04 */	addi r3, r3, 4
/* 800061DC 0000313C  48 33 5B E5 */	bl AsyncIdlePakLoading__10CResLoaderFv
/* 800061E0 00003140  38 61 00 98 */	addi r3, r1, 0x98
/* 800061E4 00003144  48 26 32 C1 */	bl sub_802694a4
/* 800061E8 00003148  48 30 5C BD */	bl BeginScene__9CGraphicsFv
/* 800061EC 0000314C  38 61 00 98 */	addi r3, r1, 0x98
/* 800061F0 00003150  48 26 32 89 */	bl sub_80269478
/* 800061F4 00003154  48 30 58 CD */	bl EndScene__9CGraphicsFv
lbl_800061F8:
/* 800061F8 00003158  38 7F 00 04 */	addi r3, r31, 4
/* 800061FC 0000315C  48 33 5B B5 */	bl AreAllPaksLoaded__10CResLoaderCFv
/* 80006200 00003160  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80006204 00003164  41 82 FF D0 */	beq lbl_800061D4
/* 80006208 00003168  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 8000620C 0000316C  38 61 00 48 */	addi r3, r1, 0x48
/* 80006210 00003170  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80006214 00003174  38 84 00 D1 */	addi r4, r4, 0xd1
/* 80006218 00003178  4B FF EA A1 */	bl string_l__4rstlFPCc
/* 8000621C 0000317C  38 7F 00 04 */	addi r3, r31, 4
/* 80006220 00003180  38 81 00 48 */	addi r4, r1, 0x48
/* 80006224 00003184  38 A0 00 01 */	li r5, 1
/* 80006228 00003188  38 C0 00 00 */	li r6, 0
/* 8000622C 0000318C  48 33 53 31 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006230 00003190  38 61 00 48 */	addi r3, r1, 0x48
/* 80006234 00003194  48 33 78 AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006238 00003198  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 8000623C 0000319C  38 61 00 38 */	addi r3, r1, 0x38
/* 80006240 000031A0  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80006244 000031A4  38 84 00 DF */	addi r4, r4, 0xdf
/* 80006248 000031A8  4B FF EA 71 */	bl string_l__4rstlFPCc
/* 8000624C 000031AC  38 7F 00 04 */	addi r3, r31, 4
/* 80006250 000031B0  38 81 00 38 */	addi r4, r1, 0x38
/* 80006254 000031B4  38 A0 00 01 */	li r5, 1
/* 80006258 000031B8  38 C0 00 00 */	li r6, 0
/* 8000625C 000031BC  48 33 53 01 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006260 000031C0  38 61 00 38 */	addi r3, r1, 0x38
/* 80006264 000031C4  48 33 78 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006268 000031C8  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 8000626C 000031CC  38 61 00 28 */	addi r3, r1, 0x28
/* 80006270 000031D0  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80006274 000031D4  38 84 00 ED */	addi r4, r4, 0xed
/* 80006278 000031D8  4B FF EA 41 */	bl string_l__4rstlFPCc
/* 8000627C 000031DC  38 7F 00 04 */	addi r3, r31, 4
/* 80006280 000031E0  38 81 00 28 */	addi r4, r1, 0x28
/* 80006284 000031E4  38 A0 00 01 */	li r5, 1
/* 80006288 000031E8  38 C0 00 00 */	li r6, 0
/* 8000628C 000031EC  48 33 52 D1 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 80006290 000031F0  38 61 00 28 */	addi r3, r1, 0x28
/* 80006294 000031F4  48 33 78 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80006298 000031F8  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 8000629C 000031FC  38 61 00 18 */	addi r3, r1, 0x18
/* 800062A0 00003200  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 800062A4 00003204  38 84 00 FB */	addi r4, r4, 0xfb
/* 800062A8 00003208  4B FF EA 11 */	bl string_l__4rstlFPCc
/* 800062AC 0000320C  38 7F 00 04 */	addi r3, r31, 4
/* 800062B0 00003210  38 81 00 18 */	addi r4, r1, 0x18
/* 800062B4 00003214  38 A0 00 00 */	li r5, 0
/* 800062B8 00003218  38 C0 00 00 */	li r6, 0
/* 800062BC 0000321C  48 33 52 A1 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 800062C0 00003220  38 61 00 18 */	addi r3, r1, 0x18
/* 800062C4 00003224  48 33 78 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800062C8 00003228  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 800062CC 0000322C  38 61 00 08 */	addi r3, r1, 8
/* 800062D0 00003230  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 800062D4 00003234  38 84 01 09 */	addi r4, r4, 0x109
/* 800062D8 00003238  4B FF E9 E1 */	bl string_l__4rstlFPCc
/* 800062DC 0000323C  38 7F 00 04 */	addi r3, r31, 4
/* 800062E0 00003240  38 81 00 08 */	addi r4, r1, 8
/* 800062E4 00003244  38 A0 00 00 */	li r5, 0
/* 800062E8 00003248  38 C0 00 00 */	li r6, 0
/* 800062EC 0000324C  48 33 52 71 */	bl "AddPakFileAsync__10CResLoaderFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>b"
/* 800062F0 00003250  38 61 00 08 */	addi r3, r1, 8
/* 800062F4 00003254  48 33 77 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800062F8 00003258  3C 60 80 35 */	lis r3, FStringTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800062FC 0000325C  3C 80 53 54 */	lis r4, 0x53545247@ha
/* 80006300 00003260  38 A3 65 00 */	addi r5, r3, FStringTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006304 00003264  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006308 00003268  38 84 52 47 */	addi r4, r4, 0x53545247@l
/* 8000630C 0000326C  48 33 2A 95 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006310 00003270  3C 60 80 35 */	lis r3, "FModelFactory__FRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer"@ha
/* 80006314 00003274  3C 80 43 4D */	lis r4, 0x434D444C@ha
/* 80006318 00003278  38 A3 56 DC */	addi r5, r3, "FModelFactory__FRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer"@l
/* 8000631C 0000327C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006320 00003280  38 84 44 4C */	addi r4, r4, 0x434D444C@l
/* 80006324 00003284  48 33 29 BD */	bl "AddFactory__11CFactoryMgrFUiPFRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer_C16CFactoryFnReturn"
/* 80006328 00003288  3C 60 80 31 */	lis r3, FTextureFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000632C 0000328C  3C 80 54 58 */	lis r4, 0x54585452@ha
/* 80006330 00003290  38 A3 E7 6C */	addi r5, r3, FTextureFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006334 00003294  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006338 00003298  38 84 54 52 */	addi r4, r4, 0x54585452@l
/* 8000633C 0000329C  48 33 2A 65 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006340 000032A0  3C 60 80 35 */	lis r3, FSkinRulesFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006344 000032A4  3C 80 43 53 */	lis r4, 0x43534B52@ha
/* 80006348 000032A8  38 A3 3C 64 */	addi r5, r3, FSkinRulesFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000634C 000032AC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006350 000032B0  38 84 4B 52 */	addi r4, r4, 0x43534B52@l
/* 80006354 000032B4  48 33 2A 4D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006358 000032B8  3C 60 80 30 */	lis r3, AnimSourceFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000635C 000032BC  3C 80 41 4E */	lis r4, 0x414E494D@ha
/* 80006360 000032C0  38 A3 E1 98 */	addi r5, r3, AnimSourceFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006364 000032C4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006368 000032C8  38 84 49 4D */	addi r4, r4, 0x414E494D@l
/* 8000636C 000032CC  48 33 2A 35 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006370 000032D0  3C 60 80 30 */	lis r3, FCharLayoutInfo__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006374 000032D4  3C 80 43 49 */	lis r4, 0x43494E46@ha
/* 80006378 000032D8  38 A3 81 8C */	addi r5, r3, FCharLayoutInfo__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000637C 000032DC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006380 000032E0  38 84 4E 46 */	addi r4, r4, 0x43494E46@l
/* 80006384 000032E4  48 33 2A 1D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006388 000032E8  3C 60 80 2E */	lis r3, FAnimCharacterSet__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000638C 000032EC  3C 80 41 4E */	lis r4, 0x414E4353@ha
/* 80006390 000032F0  38 A3 80 B8 */	addi r5, r3, FAnimCharacterSet__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006394 000032F4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006398 000032F8  38 84 43 53 */	addi r4, r4, 0x414E4353@l
/* 8000639C 000032FC  48 33 2A 05 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800063A0 00003300  3C 60 80 2B */	lis r3, FCollisionResponseDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800063A4 00003304  3C 80 43 52 */	lis r4, 0x43525343@ha
/* 800063A8 00003308  38 A3 21 58 */	addi r5, r3, FCollisionResponseDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800063AC 0000330C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800063B0 00003310  38 84 53 43 */	addi r4, r4, 0x43525343@l
/* 800063B4 00003314  48 33 29 ED */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800063B8 00003318  3C 60 80 33 */	lis r3, FParticleSwooshDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800063BC 0000331C  3C 80 53 57 */	lis r4, 0x53574843@ha
/* 800063C0 00003320  38 A3 FF E0 */	addi r5, r3, FParticleSwooshDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800063C4 00003324  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800063C8 00003328  38 84 48 43 */	addi r4, r4, 0x53574843@l
/* 800063CC 0000332C  48 33 29 D5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800063D0 00003330  3C 60 80 33 */	lis r3, FParticleFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800063D4 00003334  3C 80 50 41 */	lis r4, 0x50415254@ha
/* 800063D8 00003338  38 A3 A0 0C */	addi r5, r3, FParticleFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800063DC 0000333C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800063E0 00003340  38 84 52 54 */	addi r4, r4, 0x50415254@l
/* 800063E4 00003344  48 33 29 BD */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800063E8 00003348  3C 60 80 36 */	lis r3, FParticleElectricDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800063EC 0000334C  3C 80 45 4C */	lis r4, 0x454C5343@ha
/* 800063F0 00003350  38 A3 E7 34 */	addi r5, r3, FParticleElectricDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800063F4 00003354  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800063F8 00003358  38 84 53 43 */	addi r4, r4, 0x454C5343@l
/* 800063FC 0000335C  48 33 29 A5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006400 00003360  3C 60 80 2B */	lis r3, FProjectileWeaponDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006404 00003364  3C 80 57 50 */	lis r4, 0x57505343@ha
/* 80006408 00003368  38 A3 1F B4 */	addi r5, r3, FProjectileWeaponDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000640C 0000336C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006410 00003370  38 84 53 43 */	addi r4, r4, 0x57505343@l
/* 80006414 00003374  48 33 29 8D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006418 00003378  3C 60 80 2C */	lis r3, RGuiFrameFactoryInGame__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000641C 0000337C  3C 80 46 52 */	lis r4, 0x46524D45@ha
/* 80006420 00003380  38 A3 1D F4 */	addi r5, r3, RGuiFrameFactoryInGame__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006424 00003384  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006428 00003388  38 84 4D 45 */	addi r4, r4, 0x46524D45@l
/* 8000642C 0000338C  48 33 29 75 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006430 00003390  3C 60 80 30 */	lis r3, FRasterFontFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006434 00003394  3C 80 46 4F */	lis r4, 0x464F4E54@ha
/* 80006438 00003398  38 A3 00 80 */	addi r5, r3, FRasterFontFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000643C 0000339C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006440 000033A0  38 84 4E 54 */	addi r4, r4, 0x464F4E54@l
/* 80006444 000033A4  48 33 29 5D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006448 000033A8  3C 60 80 17 */	lis r3, FScannableObjectInfoFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000644C 000033AC  3C 80 53 43 */	lis r4, 0x5343414E@ha
/* 80006450 000033B0  38 A3 99 1C */	addi r5, r3, FScannableObjectInfoFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006454 000033B4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006458 000033B8  38 84 41 4E */	addi r4, r4, 0x5343414E@l
/* 8000645C 000033BC  48 33 29 45 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006460 000033C0  3C 60 80 2F */	lis r3, AnimPOIDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006464 000033C4  3C 80 45 56 */	lis r4, 0x45564E54@ha
/* 80006468 000033C8  38 A3 BA F0 */	addi r5, r3, AnimPOIDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000646C 000033CC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006470 000033D0  38 84 4E 54 */	addi r4, r4, 0x45564E54@l
/* 80006474 000033D4  48 33 29 2D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006478 000033D8  3C 60 80 0E */	lis r3, FAiFiniteStateMachineFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000647C 000033DC  3C 80 41 46 */	lis r4, 0x4146534D@ha
/* 80006480 000033E0  38 A3 E7 FC */	addi r5, r3, FAiFiniteStateMachineFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006484 000033E4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006488 000033E8  38 84 53 4D */	addi r4, r4, 0x4146534D@l
/* 8000648C 000033EC  48 33 29 15 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006490 000033F0  3C 60 80 35 */	lis r3, FAudioGroupSetLocDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006494 000033F4  3C 80 41 47 */	lis r4, 0x41475343@ha
/* 80006498 000033F8  38 A3 A0 24 */	addi r5, r3, FAudioGroupSetLocDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000649C 000033FC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800064A0 00003400  38 84 53 43 */	addi r4, r4, 0x41475343@l
/* 800064A4 00003404  48 33 28 3D */	bl "AddFactory__11CFactoryMgrFUiPFRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer_C16CFactoryFnReturn"
/* 800064A8 00003408  3C 60 80 2B */	lis r3, FCollidableOBBTreeGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800064AC 0000340C  3C 80 44 43 */	lis r4, 0x44434C4E@ha
/* 800064B0 00003410  38 A3 DE F0 */	addi r5, r3, FCollidableOBBTreeGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800064B4 00003414  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800064B8 00003418  38 84 4C 4E */	addi r4, r4, 0x44434C4E@l
/* 800064BC 0000341C  48 33 28 E5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800064C0 00003420  3C 60 80 2B */	lis r3, FDecalDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800064C4 00003424  3C 80 44 50 */	lis r4, 0x44505343@ha
/* 800064C8 00003428  38 A3 45 E0 */	addi r5, r3, FDecalDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800064CC 0000342C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800064D0 00003430  38 84 53 43 */	addi r4, r4, 0x44505343@l
/* 800064D4 00003434  48 33 28 CD */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800064D8 00003438  3C 60 80 2E */	lis r3, FAudioTranslationTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 800064DC 0000343C  3C 80 41 54 */	lis r4, 0x4154424C@ha
/* 800064E0 00003440  38 A3 78 E4 */	addi r5, r3, FAudioTranslationTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800064E4 00003444  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800064E8 00003448  38 84 42 4C */	addi r4, r4, 0x4154424C@l
/* 800064EC 0000344C  48 33 28 B5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800064F0 00003450  3C 60 80 1D */	lis r3, "FPathFindAreaFactory__FRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer"@ha
/* 800064F4 00003454  3C 80 50 41 */	lis r4, 0x50415448@ha
/* 800064F8 00003458  38 A3 A1 6C */	addi r5, r3, "FPathFindAreaFactory__FRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer"@l
/* 800064FC 0000345C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006500 00003460  38 84 54 48 */	addi r4, r4, 0x50415448@l
/* 80006504 00003464  48 33 27 DD */	bl "AddFactory__11CFactoryMgrFUiPFRC10SObjectTagRCQ24rstl12auto_ptr<Uc>iRC15CVParamTransfer_C16CFactoryFnReturn"
/* 80006508 00003468  3C 60 80 0A */	lis r3, FMapWorldFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000650C 0000346C  3C 80 4D 41 */	lis r4, 0x4D415057@ha
/* 80006510 00003470  38 A3 F3 F4 */	addi r5, r3, FMapWorldFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006514 00003474  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006518 00003478  38 84 50 57 */	addi r4, r4, 0x4D415057@l
/* 8000651C 0000347C  48 33 28 85 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006520 00003480  3C 60 80 08 */	lis r3, FMapAreaFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006524 00003484  3C 80 4D 41 */	lis r4, 0x4D415041@ha
/* 80006528 00003488  38 A3 01 90 */	addi r5, r3, FMapAreaFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000652C 0000348C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006530 00003490  38 84 50 41 */	addi r4, r4, 0x4D415041@l
/* 80006534 00003494  48 33 28 6D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006538 00003498  3C 60 80 20 */	lis r3, FMapUniverseFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000653C 0000349C  3C 80 4D 41 */	lis r4, 0x4D415055@ha
/* 80006540 000034A0  38 A3 1D 10 */	addi r5, r3, FMapUniverseFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006544 000034A4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006548 000034A8  38 84 50 55 */	addi r4, r4, 0x4D415055@l
/* 8000654C 000034AC  48 33 28 55 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006550 000034B0  3C 60 80 36 */	lis r3, FMidiDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006554 000034B4  3C 80 43 53 */	lis r4, 0x43534E47@ha
/* 80006558 000034B8  38 A3 8B 64 */	addi r5, r3, FMidiDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000655C 000034BC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006560 000034C0  38 84 4E 47 */	addi r4, r4, 0x43534E47@l
/* 80006564 000034C4  48 33 28 3D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006568 000034C8  3C 60 80 36 */	lis r3, FDependencyGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000656C 000034CC  3C 80 44 47 */	lis r4, 0x44475250@ha
/* 80006570 000034D0  38 A3 4F 54 */	addi r5, r3, FDependencyGroupFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 80006574 000034D4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006578 000034D8  38 84 52 50 */	addi r4, r4, 0x44475250@l
/* 8000657C 000034DC  48 33 28 25 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006580 000034E0  3C 60 80 27 */	lis r3, FSaveWorldFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 80006584 000034E4  3C 80 53 41 */	lis r4, 0x53415657@ha
/* 80006588 000034E8  38 A3 AD 60 */	addi r5, r3, FSaveWorldFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 8000658C 000034EC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80006590 000034F0  38 84 56 57 */	addi r4, r4, 0x53415657@l
/* 80006594 000034F4  48 33 28 0D */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 80006598 000034F8  3C 60 80 26 */	lis r3, FHintFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@ha
/* 8000659C 000034FC  3C 80 48 49 */	lis r4, 0x48494E54@ha
/* 800065A0 00003500  38 A3 71 44 */	addi r5, r3, FHintFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer@l
/* 800065A4 00003504  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800065A8 00003508  38 84 4E 54 */	addi r4, r4, 0x48494E54@l
/* 800065AC 0000350C  48 33 27 F5 */	bl AddFactory__11CFactoryMgrFUiPFRC10SObjectTagR12CInputStreamRC15CVParamTransfer_C16CFactoryFnReturn
/* 800065B0 00003510  3C 80 80 3F */	lis r4, lbl_803EA3C0@ha
/* 800065B4 00003514  38 61 00 98 */	addi r3, r1, 0x98
/* 800065B8 00003518  38 04 A3 C0 */	addi r0, r4, lbl_803EA3C0@l
/* 800065BC 0000351C  38 80 00 00 */	li r4, 0
/* 800065C0 00003520  90 01 00 98 */	stw r0, 0x98(r1)
/* 800065C4 00003524  48 04 C5 E1 */	bl __dt__6CIOWinFv
/* 800065C8 00003528  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 800065CC 0000352C  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 800065D0 00003530  7C 08 03 A6 */	mtlr r0
/* 800065D4 00003534  38 21 00 C0 */	addi r1, r1, 0xc0
/* 800065D8 00003538  4E 80 00 20 */	blr

.endif

.global __dt__18CErrorOutputWindowFv
__dt__18CErrorOutputWindowFv:
/* 800065DC 0000353C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800065E0 00003540  7C 08 02 A6 */	mflr r0
/* 800065E4 00003544  90 01 00 14 */	stw r0, 0x14(r1)
/* 800065E8 00003548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800065EC 0000354C  7C 9F 23 78 */	mr r31, r4
/* 800065F0 00003550  93 C1 00 08 */	stw r30, 8(r1)
/* 800065F4 00003554  7C 7E 1B 79 */	or. r30, r3, r3
/* 800065F8 00003558  41 82 00 28 */	beq lbl_80006620
/* 800065FC 0000355C  3C A0 80 3F */	lis r5, lbl_803EA3C0@ha
/* 80006600 00003560  38 80 00 00 */	li r4, 0
/* 80006604 00003564  38 05 A3 C0 */	addi r0, r5, lbl_803EA3C0@l
/* 80006608 00003568  90 1E 00 00 */	stw r0, 0(r30)
/* 8000660C 0000356C  48 04 C5 99 */	bl __dt__6CIOWinFv
/* 80006610 00003570  7F E0 07 35 */	extsh. r0, r31
/* 80006614 00003574  40 81 00 0C */	ble lbl_80006620
/* 80006618 00003578  7F C3 F3 78 */	mr r3, r30
/* 8000661C 0000357C  48 30 F3 15 */	bl Free__7CMemoryFPCv
lbl_80006620:
/* 80006620 00003580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006624 00003584  7F C3 F3 78 */	mr r3, r30
/* 80006628 00003588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000662C 0000358C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80006630 00003590  7C 08 03 A6 */	mtlr r0
/* 80006634 00003594  38 21 00 10 */	addi r1, r1, 0x10
/* 80006638 00003598  4E 80 00 20 */	blr

.global MemoryCardInitializePump__5CMainFv
MemoryCardInitializePump__5CMainFv:
/* 8000663C 0000359C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80006640 000035A0  7C 08 02 A6 */	mflr r0
/* 80006644 000035A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80006648 000035A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8000664C 000035AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80006650 000035B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80006654 000035B4  7C 7D 1B 78 */	mr r29, r3
/* 80006658 000035B8  80 0D A0 84 */	lwz r0, gpMemoryCard@sda21(r13)
/* 8000665C 000035BC  28 00 00 00 */	cmplwi r0, 0
/* 80006660 000035C0  40 82 00 74 */	bne lbl_800066D4
/* 80006664 000035C4  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80006668 000035C8  80 03 01 38 */	lwz r0, 0x138(r3)
/* 8000666C 000035CC  28 00 00 00 */	cmplwi r0, 0
/* 80006670 000035D0  40 82 00 40 */	bne lbl_800066B0
/* 80006674 000035D4  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006678 000035D8  38 60 00 4C */	li r3, 0x4c
/* 8000667C 000035DC  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80006680 000035E0  38 A0 00 00 */	li r5, 0
/* 80006684 000035E4  38 84 00 37 */	addi r4, r4, 0x37
/* 80006688 000035E8  48 30 F1 E5 */	bl __nw__FUlPCcPCc
/* 8000668C 000035EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80006690 000035F0  41 82 00 0C */	beq lbl_8000669C
/* 80006694 000035F4  48 24 3B 79 */	bl __ct__14CMemoryCardSysFv
/* 80006698 000035F8  7C 7E 1B 78 */	mr r30, r3
lbl_8000669C:
/* 8000669C 000035FC  83 FD 01 28 */	lwz r31, 0x128(r29)
/* 800066A0 00003600  38 80 00 01 */	li r4, 1
/* 800066A4 00003604  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 800066A8 00003608  48 24 37 5D */	bl __dt__14CMemoryCardSysFv
/* 800066AC 0000360C  93 DF 01 38 */	stw r30, 0x138(r31)
lbl_800066B0:
/* 800066B0 00003610  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 800066B4 00003614  83 C3 01 38 */	lwz r30, 0x138(r3)
/* 800066B8 00003618  7F C3 F3 78 */	mr r3, r30
/* 800066BC 0000361C  48 24 29 D1 */	bl InitializePump__14CMemoryCardSysFv
/* 800066C0 00003620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800066C4 00003624  41 82 00 10 */	beq lbl_800066D4
/* 800066C8 00003628  93 CD A0 84 */	stw r30, gpMemoryCard@sda21(r13)
/* 800066CC 0000362C  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 800066D0 00003630  48 1C DE 49 */	bl InitializeMemoryStates__10CGameStateFv
lbl_800066D4:
/* 800066D4 00003634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800066D8 00003638  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800066DC 0000363C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800066E0 00003640  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800066E4 00003644  7C 08 03 A6 */	mtlr r0
/* 800066E8 00003648  38 21 00 20 */	addi r1, r1, 0x20
/* 800066EC 0000364C  4E 80 00 20 */	blr

.global UnloadAudio__24CGameArchitectureSupportFv
UnloadAudio__24CGameArchitectureSupportFv:
/* 800066F0 00003650  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800066F4 00003654  7C 08 02 A6 */	mflr r0
/* 800066F8 00003658  90 01 00 54 */	stw r0, 0x54(r1)
/* 800066FC 0000365C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80006700 00003660  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80006704 00003664  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80006708 00003668  7C 7D 1B 78 */	mr r29, r3
/* 8000670C 0000366C  80 03 00 88 */	lwz r0, 0x88(r3)
/* 80006710 00003670  2C 00 00 01 */	cmpwi r0, 1
/* 80006714 00003674  40 82 00 64 */	bne lbl_80006778
/* 80006718 00003678  3C 60 80 3D */	lis r3, lbl_803CBE4C@ha
/* 8000671C 0000367C  3B C0 00 00 */	li r30, 0
/* 80006720 00003680  3B E3 BE 4C */	addi r31, r3, lbl_803CBE4C@l
lbl_80006724:
/* 80006724 00003684  48 34 51 CD */	bl SysPopGroupFromARAM__9CAudioSysFv
/* 80006728 00003688  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 8000672C 0000368C  20 1E 00 04 */	subfic r0, r30, 4
/* 80006730 00003690  54 00 18 38 */	slwi r0, r0, 3
/* 80006734 00003694  81 83 00 00 */	lwz r12, 0(r3)
/* 80006738 00003698  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8000673C 0000369C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80006740 000036A0  7D 89 03 A6 */	mtctr r12
/* 80006744 000036A4  4E 80 04 21 */	bctrl
/* 80006748 000036A8  80 63 00 04 */	lwz r3, 4(r3)
/* 8000674C 000036AC  48 34 50 F9 */	bl SysGetGroupSetName__9CAudioSysFUi
/* 80006750 000036B0  7C 64 1B 78 */	mr r4, r3
/* 80006754 000036B4  38 61 00 28 */	addi r3, r1, 0x28
/* 80006758 000036B8  48 33 7A 09 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8000675C 000036BC  38 61 00 28 */	addi r3, r1, 0x28
/* 80006760 000036C0  48 34 53 09 */	bl "SysUnloadGroupSet__9CAudioSysFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80006764 000036C4  38 61 00 28 */	addi r3, r1, 0x28
/* 80006768 000036C8  48 33 73 79 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8000676C 000036CC  3B DE 00 01 */	addi r30, r30, 1
/* 80006770 000036D0  28 1E 00 05 */	cmplwi r30, 5
/* 80006774 000036D4  41 80 FF B0 */	blt lbl_80006724
lbl_80006778:
/* 80006778 000036D8  38 00 00 00 */	li r0, 0
/* 8000677C 000036DC  38 7D 00 8C */	addi r3, r29, 0x8c
/* 80006780 000036E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80006784 000036E4  38 81 00 18 */	addi r4, r1, 0x18
/* 80006788 000036E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8000678C 000036EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80006790 000036F0  48 00 00 75 */	bl sub_80006804
/* 80006794 000036F4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80006798 000036F8  83 C1 00 24 */	lwz r30, 0x24(r1)
/* 8000679C 000036FC  54 00 18 38 */	slwi r0, r0, 3
/* 800067A0 00003700  7F FE 02 14 */	add r31, r30, r0
/* 800067A4 00003704  93 C1 00 0C */	stw r30, 0xc(r1)
/* 800067A8 00003708  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800067AC 0000370C  93 E1 00 10 */	stw r31, 0x10(r1)
/* 800067B0 00003710  93 C1 00 08 */	stw r30, 8(r1)
/* 800067B4 00003714  48 00 00 14 */	b lbl_800067C8
lbl_800067B8:
/* 800067B8 00003718  7F C3 F3 78 */	mr r3, r30
/* 800067BC 0000371C  38 80 FF FF */	li r4, -1
/* 800067C0 00003720  48 33 A6 81 */	bl __dt__6CTokenFv
/* 800067C4 00003724  3B DE 00 08 */	addi r30, r30, 8
lbl_800067C8:
/* 800067C8 00003728  7C 1E F8 40 */	cmplw r30, r31
/* 800067CC 0000372C  40 82 FF EC */	bne lbl_800067B8
/* 800067D0 00003730  80 61 00 24 */	lwz r3, 0x24(r1)
/* 800067D4 00003734  28 03 00 00 */	cmplwi r3, 0
/* 800067D8 00003738  41 82 00 08 */	beq lbl_800067E0
/* 800067DC 0000373C  48 30 F1 55 */	bl Free__7CMemoryFPCv
lbl_800067E0:
/* 800067E0 00003740  38 00 00 02 */	li r0, 2
/* 800067E4 00003744  90 1D 00 88 */	stw r0, 0x88(r29)
/* 800067E8 00003748  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800067EC 0000374C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800067F0 00003750  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800067F4 00003754  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 800067F8 00003758  7C 08 03 A6 */	mtlr r0
/* 800067FC 0000375C  38 21 00 50 */	addi r1, r1, 0x50
/* 80006800 00003760  4E 80 00 20 */	blr

.global sub_80006804
sub_80006804:
/* 80006804 00003764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80006808 00003768  7C 08 02 A6 */	mflr r0
/* 8000680C 0000376C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80006810 00003770  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80006814 00003774  7C 7F 1B 78 */	mr r31, r3
/* 80006818 00003778  7C 9B 23 78 */	mr r27, r4
/* 8000681C 0000377C  7C 1F D8 40 */	cmplw r31, r27
/* 80006820 00003780  40 82 00 08 */	bne lbl_80006828
/* 80006824 00003784  48 00 00 C8 */	b lbl_800068EC
lbl_80006828:
/* 80006828 00003788  80 1F 00 04 */	lwz r0, 4(r31)
/* 8000682C 0000378C  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 80006830 00003790  54 00 18 38 */	slwi r0, r0, 3
/* 80006834 00003794  7F DD 02 14 */	add r30, r29, r0
/* 80006838 00003798  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8000683C 0000379C  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80006840 000037A0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80006844 000037A4  93 A1 00 08 */	stw r29, 8(r1)
/* 80006848 000037A8  48 00 00 14 */	b lbl_8000685C
lbl_8000684C:
/* 8000684C 000037AC  7F A3 EB 78 */	mr r3, r29
/* 80006850 000037B0  38 80 FF FF */	li r4, -1
/* 80006854 000037B4  48 33 A5 ED */	bl __dt__6CTokenFv
/* 80006858 000037B8  3B BD 00 08 */	addi r29, r29, 8
lbl_8000685C:
/* 8000685C 000037BC  7C 1D F0 40 */	cmplw r29, r30
/* 80006860 000037C0  40 82 FF EC */	bne lbl_8000684C
/* 80006864 000037C4  38 00 00 00 */	li r0, 0
/* 80006868 000037C8  90 1F 00 04 */	stw r0, 4(r31)
/* 8000686C 000037CC  80 9B 00 04 */	lwz r4, 4(r27)
/* 80006870 000037D0  2C 04 00 00 */	cmpwi r4, 0
/* 80006874 000037D4  40 82 00 28 */	bne lbl_8000689C
/* 80006878 000037D8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8000687C 000037DC  28 03 00 00 */	cmplwi r3, 0
/* 80006880 000037E0  41 82 00 08 */	beq lbl_80006888
/* 80006884 000037E4  48 30 F0 AD */	bl Free__7CMemoryFPCv
lbl_80006888:
/* 80006888 000037E8  38 00 00 00 */	li r0, 0
/* 8000688C 000037EC  90 1F 00 04 */	stw r0, 4(r31)
/* 80006890 000037F0  90 1F 00 08 */	stw r0, 8(r31)
/* 80006894 000037F4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80006898 000037F8  48 00 00 50 */	b lbl_800068E8
lbl_8000689C:
/* 8000689C 000037FC  7F E3 FB 78 */	mr r3, r31
/* 800068A0 00003800  48 00 20 BD */	bl "reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi"
/* 800068A4 00003804  80 1B 00 04 */	lwz r0, 4(r27)
/* 800068A8 00003808  83 9B 00 0C */	lwz r28, 0xc(r27)
/* 800068AC 0000380C  54 00 18 38 */	slwi r0, r0, 3
/* 800068B0 00003810  83 DF 00 0C */	lwz r30, 0xc(r31)
/* 800068B4 00003814  7F BC 02 14 */	add r29, r28, r0
/* 800068B8 00003818  48 00 00 20 */	b lbl_800068D8
lbl_800068BC:
/* 800068BC 0000381C  28 1E 00 00 */	cmplwi r30, 0
/* 800068C0 00003820  41 82 00 10 */	beq lbl_800068D0
/* 800068C4 00003824  7F C3 F3 78 */	mr r3, r30
/* 800068C8 00003828  7F 84 E3 78 */	mr r4, r28
/* 800068CC 0000382C  48 33 A5 DD */	bl __ct__6CTokenFRC6CToken
lbl_800068D0:
/* 800068D0 00003830  3B DE 00 08 */	addi r30, r30, 8
/* 800068D4 00003834  3B 9C 00 08 */	addi r28, r28, 8
lbl_800068D8:
/* 800068D8 00003838  7C 1C E8 40 */	cmplw r28, r29
/* 800068DC 0000383C  40 82 FF E0 */	bne lbl_800068BC
/* 800068E0 00003840  80 1B 00 04 */	lwz r0, 4(r27)
/* 800068E4 00003844  90 1F 00 04 */	stw r0, 4(r31)
lbl_800068E8:
/* 800068E8 00003848  7F E3 FB 78 */	mr r3, r31
lbl_800068EC:
/* 800068EC 0000384C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800068F0 00003850  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800068F4 00003854  7C 08 03 A6 */	mtlr r0
/* 800068F8 00003858  38 21 00 30 */	addi r1, r1, 0x30
/* 800068FC 0000385C  4E 80 00 20 */	blr

.global LoadAudio__5CMainFv
LoadAudio__5CMainFv:
/* 80006900 00003860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006904 00003864  7C 08 02 A6 */	mflr r0
/* 80006908 00003868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000690C 0000386C  80 63 01 64 */	lwz r3, 0x164(r3)
/* 80006910 00003870  28 03 00 00 */	cmplwi r3, 0
/* 80006914 00003874  41 82 00 0C */	beq lbl_80006920
/* 80006918 00003878  48 00 00 1D */	bl LoadAudio__24CGameArchitectureSupportFv
/* 8000691C 0000387C  48 00 00 08 */	b lbl_80006924
lbl_80006920:
/* 80006920 00003880  38 60 00 01 */	li r3, 1
lbl_80006924:
/* 80006924 00003884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006928 00003888  7C 08 03 A6 */	mtlr r0
/* 8000692C 0000388C  38 21 00 10 */	addi r1, r1, 0x10
/* 80006930 00003890  4E 80 00 20 */	blr

.global LoadAudio__24CGameArchitectureSupportFv
LoadAudio__24CGameArchitectureSupportFv:
/* 80006934 00003894  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80006938 00003898  7C 08 02 A6 */	mflr r0
/* 8000693C 0000389C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80006940 000038A0  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 80006944 000038A4  7C 7F 1B 78 */	mr r31, r3
/* 80006948 000038A8  80 03 00 88 */	lwz r0, 0x88(r3)
/* 8000694C 000038AC  2C 00 00 01 */	cmpwi r0, 1
/* 80006950 000038B0  40 82 00 0C */	bne lbl_8000695C
/* 80006954 000038B4  38 60 00 01 */	li r3, 1
/* 80006958 000038B8  48 00 01 A8 */	b lbl_80006B00
lbl_8000695C:
/* 8000695C 000038BC  3C 60 80 3D */	lis r3, lbl_803CBE4C@ha
/* 80006960 000038C0  3B 60 00 01 */	li r27, 1
/* 80006964 000038C4  3B 83 BE 4C */	addi r28, r3, lbl_803CBE4C@l
/* 80006968 000038C8  3B 40 00 00 */	li r26, 0
/* 8000696C 000038CC  3B A0 00 00 */	li r29, 0
lbl_80006970:
/* 80006970 000038D0  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80006974 000038D4  7C 80 EA 14 */	add r4, r0, r29
/* 80006978 000038D8  88 04 00 04 */	lbz r0, 4(r4)
/* 8000697C 000038DC  28 00 00 00 */	cmplwi r0, 0
/* 80006980 000038E0  41 82 00 AC */	beq lbl_80006A2C
/* 80006984 000038E4  80 64 00 00 */	lwz r3, 0(r4)
/* 80006988 000038E8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8000698C 000038EC  28 00 00 00 */	cmplwi r0, 0
/* 80006990 000038F0  41 82 00 94 */	beq lbl_80006A24
/* 80006994 000038F4  38 61 00 18 */	addi r3, r1, 0x18
/* 80006998 000038F8  48 33 A5 11 */	bl __ct__6CTokenFRC6CToken
/* 8000699C 000038FC  38 61 00 18 */	addi r3, r1, 0x18
/* 800069A0 00003900  48 33 A4 6D */	bl GetObj__6CTokenFv
/* 800069A4 00003904  80 63 00 04 */	lwz r3, 4(r3)
/* 800069A8 00003908  38 63 00 20 */	addi r3, r3, 0x20
/* 800069AC 0000390C  48 34 56 AD */	bl "SysIsGroupSetLoaded__9CAudioSysFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800069B0 00003910  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800069B4 00003914  40 82 00 60 */	bne lbl_80006A14
/* 800069B8 00003918  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 800069BC 0000391C  80 9C 00 00 */	lwz r4, 0(r28)
/* 800069C0 00003920  81 83 00 00 */	lwz r12, 0(r3)
/* 800069C4 00003924  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800069C8 00003928  7D 89 03 A6 */	mtctr r12
/* 800069CC 0000392C  4E 80 04 21 */	bctrl
/* 800069D0 00003930  83 C3 00 04 */	lwz r30, 4(r3)
/* 800069D4 00003934  38 61 00 18 */	addi r3, r1, 0x18
/* 800069D8 00003938  48 33 A4 35 */	bl GetObj__6CTokenFv
/* 800069DC 0000393C  80 83 00 04 */	lwz r4, 4(r3)
/* 800069E0 00003940  7F C5 F3 78 */	mr r5, r30
/* 800069E4 00003944  38 61 00 18 */	addi r3, r1, 0x18
/* 800069E8 00003948  38 84 00 20 */	addi r4, r4, 0x20
/* 800069EC 0000394C  48 34 56 BD */	bl "SysLoadGroupSet__9CAudioSysF30TLockedToken<14CAudioGroupSet>Q24rstl6stringUi"
/* 800069F0 00003950  38 61 00 18 */	addi r3, r1, 0x18
/* 800069F4 00003954  48 33 A4 19 */	bl GetObj__6CTokenFv
/* 800069F8 00003958  80 63 00 04 */	lwz r3, 4(r3)
/* 800069FC 0000395C  88 9C 00 04 */	lbz r4, 4(r28)
/* 80006A00 00003960  3B C3 00 20 */	addi r30, r3, 0x20
/* 80006A04 00003964  7F C3 F3 78 */	mr r3, r30
/* 80006A08 00003968  48 34 4F 09 */	bl "SysPushGroupIntoARAM__9CAudioSysFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Uc"
/* 80006A0C 0000396C  7F C3 F3 78 */	mr r3, r30
/* 80006A10 00003970  48 34 55 D5 */	bl "SysUnloadSampleData__9CAudioSysFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_80006A14:
/* 80006A14 00003974  38 61 00 18 */	addi r3, r1, 0x18
/* 80006A18 00003978  38 80 00 00 */	li r4, 0
/* 80006A1C 0000397C  48 33 A4 25 */	bl __dt__6CTokenFv
/* 80006A20 00003980  48 00 00 1C */	b lbl_80006A3C
lbl_80006A24:
/* 80006A24 00003984  3B 60 00 00 */	li r27, 0
/* 80006A28 00003988  48 00 00 28 */	b lbl_80006A50
lbl_80006A2C:
/* 80006A2C 0000398C  7C 83 23 78 */	mr r3, r4
/* 80006A30 00003990  3B 60 00 00 */	li r27, 0
/* 80006A34 00003994  48 33 A3 51 */	bl Lock__6CTokenFv
/* 80006A38 00003998  48 00 00 18 */	b lbl_80006A50
lbl_80006A3C:
/* 80006A3C 0000399C  3B 5A 00 01 */	addi r26, r26, 1
/* 80006A40 000039A0  3B 9C 00 08 */	addi r28, r28, 8
/* 80006A44 000039A4  28 1A 00 05 */	cmplwi r26, 5
/* 80006A48 000039A8  3B BD 00 08 */	addi r29, r29, 8
/* 80006A4C 000039AC  41 80 FF 24 */	blt lbl_80006970
lbl_80006A50:
/* 80006A50 000039B0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80006A54 000039B4  40 82 00 0C */	bne lbl_80006A60
/* 80006A58 000039B8  38 60 00 00 */	li r3, 0
/* 80006A5C 000039BC  48 00 00 A4 */	b lbl_80006B00
lbl_80006A60:
/* 80006A60 000039C0  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 80006A64 000039C4  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80006A68 000039C8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80006A6C 000039CC  81 83 00 00 */	lwz r12, 0(r3)
/* 80006A70 000039D0  38 84 01 16 */	addi r4, r4, 0x116
/* 80006A74 000039D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80006A78 000039D8  7D 89 03 A6 */	mtctr r12
/* 80006A7C 000039DC  4E 80 04 21 */	bctrl
/* 80006A80 000039E0  7C 64 1B 78 */	mr r4, r3
/* 80006A84 000039E4  80 6D A0 64 */	lwz r3, gpSimplePool@sda21(r13)
/* 80006A88 000039E8  48 2E 1F 75 */	bl LoadTranslationTable__11CSfxManagerFP11CSimplePoolPC10SObjectTag
/* 80006A8C 000039EC  38 00 00 00 */	li r0, 0
/* 80006A90 000039F0  38 7F 00 8C */	addi r3, r31, 0x8c
/* 80006A94 000039F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80006A98 000039F8  38 81 00 20 */	addi r4, r1, 0x20
/* 80006A9C 000039FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80006AA0 00003A00  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80006AA4 00003A04  4B FF FD 61 */	bl sub_80006804
/* 80006AA8 00003A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80006AAC 00003A0C  83 81 00 2C */	lwz r28, 0x2c(r1)
/* 80006AB0 00003A10  54 00 18 38 */	slwi r0, r0, 3
/* 80006AB4 00003A14  7F DC 02 14 */	add r30, r28, r0
/* 80006AB8 00003A18  93 81 00 0C */	stw r28, 0xc(r1)
/* 80006ABC 00003A1C  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80006AC0 00003A20  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80006AC4 00003A24  93 81 00 08 */	stw r28, 8(r1)
/* 80006AC8 00003A28  48 00 00 14 */	b lbl_80006ADC
lbl_80006ACC:
/* 80006ACC 00003A2C  7F 83 E3 78 */	mr r3, r28
/* 80006AD0 00003A30  38 80 FF FF */	li r4, -1
/* 80006AD4 00003A34  48 33 A3 6D */	bl __dt__6CTokenFv
/* 80006AD8 00003A38  3B 9C 00 08 */	addi r28, r28, 8
lbl_80006ADC:
/* 80006ADC 00003A3C  7C 1C F0 40 */	cmplw r28, r30
/* 80006AE0 00003A40  40 82 FF EC */	bne lbl_80006ACC
/* 80006AE4 00003A44  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80006AE8 00003A48  28 03 00 00 */	cmplwi r3, 0
/* 80006AEC 00003A4C  41 82 00 08 */	beq lbl_80006AF4
/* 80006AF0 00003A50  48 30 EE 41 */	bl Free__7CMemoryFPCv
lbl_80006AF4:
/* 80006AF4 00003A54  38 00 00 01 */	li r0, 1
/* 80006AF8 00003A58  38 60 00 01 */	li r3, 1
/* 80006AFC 00003A5C  90 1F 00 88 */	stw r0, 0x88(r31)
lbl_80006B00:
/* 80006B00 00003A60  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 80006B04 00003A64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80006B08 00003A68  7C 08 03 A6 */	mtlr r0
/* 80006B0C 00003A6C  38 21 00 50 */	addi r1, r1, 0x50
/* 80006B10 00003A70  4E 80 00 20 */	blr

.global PreloadAudio__24CGameArchitectureSupportFv
PreloadAudio__24CGameArchitectureSupportFv:
/* 80006B14 00003A74  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80006B18 00003A78  7C 08 02 A6 */	mflr r0
/* 80006B1C 00003A7C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80006B20 00003A80  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80006B24 00003A84  7C 7F 1B 78 */	mr r31, r3
/* 80006B28 00003A88  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80006B2C 00003A8C  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80006B30 00003A90  80 03 00 88 */	lwz r0, 0x88(r3)
/* 80006B34 00003A94  2C 00 00 02 */	cmpwi r0, 2
/* 80006B38 00003A98  40 82 01 3C */	bne lbl_80006C74
/* 80006B3C 00003A9C  38 00 00 00 */	li r0, 0
/* 80006B40 00003AA0  38 7F 00 8C */	addi r3, r31, 0x8c
/* 80006B44 00003AA4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80006B48 00003AA8  38 81 00 28 */	addi r4, r1, 0x28
/* 80006B4C 00003AAC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80006B50 00003AB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80006B54 00003AB4  4B FF FC B1 */	bl sub_80006804
/* 80006B58 00003AB8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80006B5C 00003ABC  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80006B60 00003AC0  54 00 18 38 */	slwi r0, r0, 3
/* 80006B64 00003AC4  7F DD 02 14 */	add r30, r29, r0
/* 80006B68 00003AC8  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80006B6C 00003ACC  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80006B70 00003AD0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80006B74 00003AD4  93 A1 00 08 */	stw r29, 8(r1)
/* 80006B78 00003AD8  48 00 00 14 */	b lbl_80006B8C
lbl_80006B7C:
/* 80006B7C 00003ADC  7F A3 EB 78 */	mr r3, r29
/* 80006B80 00003AE0  38 80 FF FF */	li r4, -1
/* 80006B84 00003AE4  48 33 A2 BD */	bl __dt__6CTokenFv
/* 80006B88 00003AE8  3B BD 00 08 */	addi r29, r29, 8
lbl_80006B8C:
/* 80006B8C 00003AEC  7C 1D F0 40 */	cmplw r29, r30
/* 80006B90 00003AF0  40 82 FF EC */	bne lbl_80006B7C
/* 80006B94 00003AF4  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80006B98 00003AF8  28 03 00 00 */	cmplwi r3, 0
/* 80006B9C 00003AFC  41 82 00 08 */	beq lbl_80006BA4
/* 80006BA0 00003B00  48 30 ED 91 */	bl Free__7CMemoryFPCv
lbl_80006BA4:
/* 80006BA4 00003B04  38 7F 00 8C */	addi r3, r31, 0x8c
/* 80006BA8 00003B08  38 80 00 05 */	li r4, 5
/* 80006BAC 00003B0C  48 00 1D B1 */	bl "reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi"
/* 80006BB0 00003B10  3C 60 80 3D */	lis r3, lbl_803CBE4C@ha
/* 80006BB4 00003B14  3B A0 00 00 */	li r29, 0
/* 80006BB8 00003B18  3B C3 BE 4C */	addi r30, r3, lbl_803CBE4C@l
lbl_80006BBC:
/* 80006BBC 00003B1C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80006BC0 00003B20  38 61 00 18 */	addi r3, r1, 0x18
/* 80006BC4 00003B24  80 BE 00 00 */	lwz r5, 0(r30)
/* 80006BC8 00003B28  81 84 00 00 */	lwz r12, 0(r4)
/* 80006BCC 00003B2C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80006BD0 00003B30  7D 89 03 A6 */	mtctr r12
/* 80006BD4 00003B34  4E 80 04 21 */	bctrl
/* 80006BD8 00003B38  38 61 00 20 */	addi r3, r1, 0x20
/* 80006BDC 00003B3C  38 81 00 18 */	addi r4, r1, 0x18
/* 80006BE0 00003B40  48 33 A2 C9 */	bl __ct__6CTokenFRC6CToken
/* 80006BE4 00003B44  38 61 00 18 */	addi r3, r1, 0x18
/* 80006BE8 00003B48  38 80 FF FF */	li r4, -1
/* 80006BEC 00003B4C  48 33 A2 55 */	bl __dt__6CTokenFv
/* 80006BF0 00003B50  2C 1D 00 00 */	cmpwi r29, 0
/* 80006BF4 00003B54  40 82 00 0C */	bne lbl_80006C00
/* 80006BF8 00003B58  38 61 00 20 */	addi r3, r1, 0x20
/* 80006BFC 00003B5C  48 33 A1 89 */	bl Lock__6CTokenFv
lbl_80006C00:
/* 80006C00 00003B60  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80006C04 00003B64  80 BF 00 94 */	lwz r5, 0x94(r31)
/* 80006C08 00003B68  7C 00 28 00 */	cmpw r0, r5
/* 80006C0C 00003B6C  41 80 00 1C */	blt lbl_80006C28
/* 80006C10 00003B70  2C 05 00 00 */	cmpwi r5, 0
/* 80006C14 00003B74  38 7F 00 8C */	addi r3, r31, 0x8c
/* 80006C18 00003B78  38 80 00 04 */	li r4, 4
/* 80006C1C 00003B7C  41 82 00 08 */	beq lbl_80006C24
/* 80006C20 00003B80  54 A4 08 3C */	slwi r4, r5, 1
lbl_80006C24:
/* 80006C24 00003B84  48 00 1D 39 */	bl "reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi"
lbl_80006C28:
/* 80006C28 00003B88  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80006C2C 00003B8C  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80006C30 00003B90  54 00 18 38 */	slwi r0, r0, 3
/* 80006C34 00003B94  7C 63 02 15 */	add. r3, r3, r0
/* 80006C38 00003B98  41 82 00 0C */	beq lbl_80006C44
/* 80006C3C 00003B9C  38 81 00 20 */	addi r4, r1, 0x20
/* 80006C40 00003BA0  48 33 A2 69 */	bl __ct__6CTokenFRC6CToken
lbl_80006C44:
/* 80006C44 00003BA4  80 BF 00 90 */	lwz r5, 0x90(r31)
/* 80006C48 00003BA8  38 61 00 20 */	addi r3, r1, 0x20
/* 80006C4C 00003BAC  38 80 FF FF */	li r4, -1
/* 80006C50 00003BB0  38 05 00 01 */	addi r0, r5, 1
/* 80006C54 00003BB4  90 1F 00 90 */	stw r0, 0x90(r31)
/* 80006C58 00003BB8  48 33 A1 E9 */	bl __dt__6CTokenFv
/* 80006C5C 00003BBC  3B BD 00 01 */	addi r29, r29, 1
/* 80006C60 00003BC0  3B DE 00 08 */	addi r30, r30, 8
/* 80006C64 00003BC4  2C 1D 00 05 */	cmpwi r29, 5
/* 80006C68 00003BC8  41 80 FF 54 */	blt lbl_80006BBC
/* 80006C6C 00003BCC  38 00 00 00 */	li r0, 0
/* 80006C70 00003BD0  90 1F 00 88 */	stw r0, 0x88(r31)
lbl_80006C74:
/* 80006C74 00003BD4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80006C78 00003BD8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80006C7C 00003BDC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80006C80 00003BE0  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80006C84 00003BE4  7C 08 03 A6 */	mtlr r0
/* 80006C88 00003BE8  38 21 00 50 */	addi r1, r1, 0x50
/* 80006C8C 00003BEC  4E 80 00 20 */	blr

.global Update__24CGameArchitectureSupportFv
Update__24CGameArchitectureSupportFv:
/* 80006C90 00003BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80006C94 00003BF4  7C 08 02 A6 */	mflr r0
/* 80006C98 00003BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80006C9C 00003BFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80006CA0 00003C00  7C 7F 1B 78 */	mr r31, r3
/* 80006CA4 00003C04  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80006CA8 00003C08  48 1C CC 71 */	bl WorldTransitionManager__10CGameStateFv
/* 80006CAC 00003C0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80006CB0 00003C10  80 63 00 00 */	lwz r3, 0(r3)
/* 80006CB4 00003C14  48 20 43 4D */	bl TouchModels__18CWorldTransManagerFv
/* 80006CB8 00003C18  38 61 00 08 */	addi r3, r1, 8
/* 80006CBC 00003C1C  38 BF 00 78 */	addi r5, r31, 0x78
/* 80006CC0 00003C20  38 80 00 01 */	li r4, 1
/* 80006CC4 00003C24  48 04 AA F9 */	bl CreateFrameEnd__7MakeMsgF14EArchMsgTargetRCi
/* 80006CC8 00003C28  38 7F 00 04 */	addi r3, r31, 4
/* 80006CCC 00003C2C  38 81 00 08 */	addi r4, r1, 8
/* 80006CD0 00003C30  48 00 00 31 */	bl InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
/* 80006CD4 00003C34  34 61 00 10 */	addic. r3, r1, 0x10
/* 80006CD8 00003C38  41 82 00 08 */	beq lbl_80006CE0
/* 80006CDC 00003C3C  48 00 1A 31 */	bl sub_8000870c
lbl_80006CE0:
/* 80006CE0 00003C40  38 7F 00 58 */	addi r3, r31, 0x58
/* 80006CE4 00003C44  38 9F 00 04 */	addi r4, r31, 4
/* 80006CE8 00003C48  48 04 B7 45 */	bl PumpMessages__13CIOWinManagerFR18CArchitectureQueue
/* 80006CEC 00003C4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80006CF0 00003C50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80006CF4 00003C54  7C 08 03 A6 */	mtlr r0
/* 80006CF8 00003C58  38 21 00 20 */	addi r1, r1, 0x20
/* 80006CFC 00003C5C  4E 80 00 20 */	blr

.global InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage:
/* 80006D00 00003C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006D04 00003C64  7C 08 02 A6 */	mflr r0
/* 80006D08 00003C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006D0C 00003C6C  48 00 00 15 */	bl sub_80006d20
/* 80006D10 00003C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006D14 00003C74  7C 08 03 A6 */	mtlr r0
/* 80006D18 00003C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80006D1C 00003C7C  4E 80 00 20 */	blr

.global sub_80006d20
sub_80006d20:
/* 80006D20 00003C80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80006D24 00003C84  7C 08 02 A6 */	mflr r0
/* 80006D28 00003C88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80006D2C 00003C8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80006D30 00003C90  7C 7F 1B 78 */	mr r31, r3
/* 80006D34 00003C94  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 80006D38 00003C98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80006D3C 00003C9C  38 A3 BE 74 */	addi r5, r3, lbl_803CBE74@l
/* 80006D40 00003CA0  38 60 00 14 */	li r3, 0x14
/* 80006D44 00003CA4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80006D48 00003CA8  93 81 00 10 */	stw r28, 0x10(r1)
/* 80006D4C 00003CAC  7C 9C 23 78 */	mr r28, r4
/* 80006D50 00003CB0  38 85 00 37 */	addi r4, r5, 0x37
/* 80006D54 00003CB4  38 A0 00 00 */	li r5, 0
/* 80006D58 00003CB8  83 DF 00 08 */	lwz r30, 8(r31)
/* 80006D5C 00003CBC  83 BE 00 00 */	lwz r29, 0(r30)
/* 80006D60 00003CC0  48 30 EA B9 */	bl __nwa__FUlPCcPCc
/* 80006D64 00003CC4  28 03 00 00 */	cmplwi r3, 0
/* 80006D68 00003CC8  41 82 00 0C */	beq lbl_80006D74
/* 80006D6C 00003CCC  93 A3 00 00 */	stw r29, 0(r3)
/* 80006D70 00003CD0  93 C3 00 04 */	stw r30, 4(r3)
lbl_80006D74:
/* 80006D74 00003CD4  34 83 00 08 */	addic. r4, r3, 8
/* 80006D78 00003CD8  41 82 00 2C */	beq lbl_80006DA4
/* 80006D7C 00003CDC  80 1C 00 00 */	lwz r0, 0(r28)
/* 80006D80 00003CE0  90 04 00 00 */	stw r0, 0(r4)
/* 80006D84 00003CE4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80006D88 00003CE8  90 04 00 04 */	stw r0, 4(r4)
/* 80006D8C 00003CEC  80 1C 00 08 */	lwz r0, 8(r28)
/* 80006D90 00003CF0  90 04 00 08 */	stw r0, 8(r4)
/* 80006D94 00003CF4  80 A4 00 08 */	lwz r5, 8(r4)
/* 80006D98 00003CF8  80 85 00 04 */	lwz r4, 4(r5)
/* 80006D9C 00003CFC  38 04 00 01 */	addi r0, r4, 1
/* 80006DA0 00003D00  90 05 00 04 */	stw r0, 4(r5)
lbl_80006DA4:
/* 80006DA4 00003D04  80 1F 00 04 */	lwz r0, 4(r31)
/* 80006DA8 00003D08  7C 1E 00 40 */	cmplw r30, r0
/* 80006DAC 00003D0C  40 82 00 08 */	bne lbl_80006DB4
/* 80006DB0 00003D10  90 7F 00 04 */	stw r3, 4(r31)
lbl_80006DB4:
/* 80006DB4 00003D14  80 83 00 00 */	lwz r4, 0(r3)
/* 80006DB8 00003D18  90 64 00 04 */	stw r3, 4(r4)
/* 80006DBC 00003D1C  80 83 00 04 */	lwz r4, 4(r3)
/* 80006DC0 00003D20  90 64 00 00 */	stw r3, 0(r4)
/* 80006DC4 00003D24  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80006DC8 00003D28  38 03 00 01 */	addi r0, r3, 1
/* 80006DCC 00003D2C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80006DD0 00003D30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80006DD4 00003D34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80006DD8 00003D38  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80006DDC 00003D3C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80006DE0 00003D40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80006DE4 00003D44  7C 08 03 A6 */	mtlr r0
/* 80006DE8 00003D48  38 21 00 20 */	addi r1, r1, 0x20
/* 80006DEC 00003D4C  4E 80 00 20 */	blr

.global UpdateTicks__24CGameArchitectureSupportFv
UpdateTicks__24CGameArchitectureSupportFv:
/* 80006DF0 00003D50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80006DF4 00003D54  7C 08 02 A6 */	mflr r0
/* 80006DF8 00003D58  90 01 00 44 */	stw r0, 0x44(r1)
/* 80006DFC 00003D5C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80006E00 00003D60  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80006E04 00003D64  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80006E08 00003D68  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80006E0C 00003D6C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80006E10 00003D70  93 81 00 20 */	stw r28, 0x20(r1)
/* 80006E14 00003D74  7C 7E 1B 78 */	mr r30, r3
/* 80006E18 00003D78  3B E0 00 00 */	li r31, 0
/* 80006E1C 00003D7C  48 37 A8 45 */	bl OSDisableInterrupts
/* 80006E20 00003D80  7C 7D 1B 78 */	mr r29, r3
/* 80006E24 00003D84  48 37 E5 85 */	bl OSGetTime
/* 80006E28 00003D88  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 80006E2C 00003D8C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80006E30 00003D90  7C 85 20 10 */	subfc r4, r5, r4
/* 80006E34 00003D94  7C 60 19 10 */	subfe r3, r0, r3
/* 80006E38 00003D98  48 38 31 2D */	bl __cvt_sll_flt
/* 80006E3C 00003D9C  3C 60 80 5A */	lis r3, mData__10CStopwatch@ha
/* 80006E40 00003DA0  84 03 FD 30 */	lwzu r0, mData__10CStopwatch@l(r3)
/* 80006E44 00003DA4  38 80 00 00 */	li r4, 0
/* 80006E48 00003DA8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80006E4C 00003DAC  7C 00 22 78 */	xor r0, r0, r4
/* 80006E50 00003DB0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80006E54 00003DB4  7C A4 22 78 */	xor r4, r5, r4
/* 80006E58 00003DB8  7C 80 03 79 */	or. r0, r4, r0
/* 80006E5C 00003DBC  EF E1 00 32 */	fmuls f31, f1, f0
/* 80006E60 00003DC0  40 82 00 08 */	bne lbl_80006E68
/* 80006E64 00003DC4  48 2C F8 B9 */	bl Initialize__Q210CStopwatch7CSWDataFv
lbl_80006E68:
/* 80006E68 00003DC8  48 37 E5 41 */	bl OSGetTime
/* 80006E6C 00003DCC  90 9E 00 24 */	stw r4, 0x24(r30)
/* 80006E70 00003DD0  90 7E 00 20 */	stw r3, 0x20(r30)
/* 80006E74 00003DD4  7F A3 EB 78 */	mr r3, r29
/* 80006E78 00003DD8  48 37 A8 11 */	bl OSRestoreInterrupts
/* 80006E7C 00003DDC  C0 02 80 34 */	lfs f0, lbl_805A9D54@sda21(r2)
/* 80006E80 00003DE0  D0 0D A0 A4 */	stfs f0, lbl_805A8C64@sda21(r13)
/* 80006E84 00003DE4  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80006E88 00003DE8  EC 00 F8 2A */	fadds f0, f0, f31
/* 80006E8C 00003DEC  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 80006E90 00003DF0  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 80006E94 00003DF4  88 03 01 60 */	lbz r0, 0x160(r3)
/* 80006E98 00003DF8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80006E9C 00003DFC  40 82 00 10 */	bne lbl_80006EAC
/* 80006EA0 00003E00  C0 02 80 3C */	lfs f0, lbl_805A9D5C@sda21(r2)
/* 80006EA4 00003E04  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80006EA8 00003E08  40 81 00 0C */	ble lbl_80006EB4
lbl_80006EAC:
/* 80006EAC 00003E0C  C0 02 80 00 */	lfs f0, lbl_805A9D20@sda21(r2)
/* 80006EB0 00003E10  D0 1E 00 7C */	stfs f0, 0x7c(r30)
lbl_80006EB4:
/* 80006EB4 00003E14  38 61 00 14 */	addi r3, r1, 0x14
/* 80006EB8 00003E18  38 BE 00 78 */	addi r5, r30, 0x78
/* 80006EBC 00003E1C  3B 80 00 01 */	li r28, 1
/* 80006EC0 00003E20  38 80 00 01 */	li r4, 1
/* 80006EC4 00003E24  48 04 A9 D1 */	bl CreateFrameBegin__7MakeMsgF14EArchMsgTargetRCi
/* 80006EC8 00003E28  38 7E 00 04 */	addi r3, r30, 4
/* 80006ECC 00003E2C  38 81 00 14 */	addi r4, r1, 0x14
/* 80006ED0 00003E30  4B FF FE 31 */	bl InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
/* 80006ED4 00003E34  34 61 00 1C */	addic. r3, r1, 0x1c
/* 80006ED8 00003E38  41 82 00 08 */	beq lbl_80006EE0
/* 80006EDC 00003E3C  48 00 18 31 */	bl sub_8000870c
lbl_80006EE0:
/* 80006EE0 00003E40  C3 E2 80 00 */	lfs f31, lbl_805A9D20@sda21(r2)
/* 80006EE4 00003E44  3B A1 00 10 */	addi r29, r1, 0x10
/* 80006EE8 00003E48  48 00 00 68 */	b lbl_80006F50
lbl_80006EEC:
/* 80006EEC 00003E4C  C0 22 80 00 */	lfs f1, lbl_805A9D20@sda21(r2)
/* 80006EF0 00003E50  38 7E 00 30 */	addi r3, r30, 0x30
/* 80006EF4 00003E54  38 9E 00 04 */	addi r4, r30, 4
/* 80006EF8 00003E58  3B 80 00 00 */	li r28, 0
/* 80006EFC 00003E5C  48 01 C0 DD */	bl Update__15CInputGeneratorFfR18CArchitectureQueue
/* 80006F00 00003E60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80006F04 00003E64  40 82 00 08 */	bne lbl_80006F0C
/* 80006F08 00003E68  3B E0 00 01 */	li r31, 1
lbl_80006F0C:
/* 80006F0C 00003E6C  38 61 00 08 */	addi r3, r1, 8
/* 80006F10 00003E70  38 80 00 01 */	li r4, 1
/* 80006F14 00003E74  38 A2 80 38 */	addi r5, r2, lbl_805A9D58@sda21
/* 80006F18 00003E78  48 04 AC B1 */	bl CreateTimerTick__7MakeMsgF14EArchMsgTargetRCf
/* 80006F1C 00003E7C  38 7E 00 04 */	addi r3, r30, 4
/* 80006F20 00003E80  38 81 00 08 */	addi r4, r1, 8
/* 80006F24 00003E84  4B FF FD DD */	bl InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
/* 80006F28 00003E88  28 1D 00 00 */	cmplwi r29, 0
/* 80006F2C 00003E8C  41 82 00 0C */	beq lbl_80006F38
/* 80006F30 00003E90  7F A3 EB 78 */	mr r3, r29
/* 80006F34 00003E94  48 00 17 D9 */	bl sub_8000870c
lbl_80006F38:
/* 80006F38 00003E98  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80006F3C 00003E9C  38 7E 00 58 */	addi r3, r30, 0x58
/* 80006F40 00003EA0  38 9E 00 04 */	addi r4, r30, 4
/* 80006F44 00003EA4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80006F48 00003EA8  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 80006F4C 00003EAC  48 04 B4 E1 */	bl PumpMessages__13CIOWinManagerFR18CArchitectureQueue
lbl_80006F50:
/* 80006F50 00003EB0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80006F54 00003EB4  40 82 FF 98 */	bne lbl_80006EEC
/* 80006F58 00003EB8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80006F5C 00003EBC  C0 02 80 00 */	lfs f0, lbl_805A9D20@sda21(r2)
/* 80006F60 00003EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80006F64 00003EC4  4C 41 13 82 */	cror 2, 1, 2
/* 80006F68 00003EC8  41 82 FF 84 */	beq lbl_80006EEC
/* 80006F6C 00003ECC  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 80006F70 00003ED0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80006F74 00003ED4  EC 23 08 28 */	fsubs f1, f3, f1
/* 80006F78 00003ED8  C0 42 80 34 */	lfs f2, lbl_805A9D54@sda21(r2)
/* 80006F7C 00003EDC  EC 60 18 28 */	fsubs f3, f0, f3
/* 80006F80 00003EE0  C8 02 80 40 */	lfd f0, lbl_805A9D60@sda21(r2)
/* 80006F84 00003EE4  EC 23 08 2A */	fadds f1, f3, f1
/* 80006F88 00003EE8  EC 21 10 28 */	fsubs f1, f1, f2
/* 80006F8C 00003EEC  FC 20 0A 10 */	fabs f1, f1
/* 80006F90 00003EF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80006F94 00003EF4  40 80 00 08 */	bge lbl_80006F9C
/* 80006F98 00003EF8  D0 5E 00 7C */	stfs f2, 0x7c(r30)
lbl_80006F9C:
/* 80006F9C 00003EFC  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80006FA0 00003F00  38 7E 00 58 */	addi r3, r30, 0x58
/* 80006FA4 00003F04  38 9E 00 04 */	addi r4, r30, 4
/* 80006FA8 00003F08  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 80006FAC 00003F0C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80006FB0 00003F10  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 80006FB4 00003F14  48 04 B4 79 */	bl PumpMessages__13CIOWinManagerFR18CArchitectureQueue
/* 80006FB8 00003F18  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80006FBC 00003F1C  7C 00 00 34 */	cntlzw r0, r0
/* 80006FC0 00003F20  54 03 D9 7E */	srwi r3, r0, 5
/* 80006FC4 00003F24  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80006FC8 00003F28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80006FCC 00003F2C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80006FD0 00003F30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80006FD4 00003F34  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80006FD8 00003F38  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80006FDC 00003F3C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80006FE0 00003F40  7C 08 03 A6 */	mtlr r0
/* 80006FE4 00003F44  38 21 00 40 */	addi r1, r1, 0x40
/* 80006FE8 00003F48  4E 80 00 20 */	blr

.global __dt__24CGameArchitectureSupportFv
__dt__24CGameArchitectureSupportFv:
/* 80006FEC 00003F4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80006FF0 00003F50  7C 08 02 A6 */	mflr r0
/* 80006FF4 00003F54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80006FF8 00003F58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80006FFC 00003F5C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80007000 00003F60  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80007004 00003F64  7C 9D 23 78 */	mr r29, r4
/* 80007008 00003F68  93 81 00 20 */	stw r28, 0x20(r1)
/* 8000700C 00003F6C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80007010 00003F70  41 82 01 04 */	beq lbl_80007114
/* 80007014 00003F74  88 1C 00 C8 */	lbz r0, 0xc8(r28)
/* 80007018 00003F78  28 00 00 00 */	cmplwi r0, 0
/* 8000701C 00003F7C  41 82 00 14 */	beq lbl_80007030
/* 80007020 00003F80  38 7C 00 A0 */	addi r3, r28, 0xa0
/* 80007024 00003F84  48 37 73 D1 */	bl OSCancelAlarm
/* 80007028 00003F88  38 00 00 00 */	li r0, 0
/* 8000702C 00003F8C  98 1C 00 C8 */	stb r0, 0xc8(r28)
lbl_80007030:
/* 80007030 00003F90  38 7C 00 58 */	addi r3, r28, 0x58
/* 80007034 00003F94  48 04 B7 61 */	bl RemoveAllIOWins__13CIOWinManagerFv
/* 80007038 00003F98  7F 83 E3 78 */	mr r3, r28
/* 8000703C 00003F9C  4B FF F6 B5 */	bl UnloadAudio__24CGameArchitectureSupportFv
/* 80007040 00003FA0  48 2E 36 45 */	bl Shutdown__11CSfxManagerFv
/* 80007044 00003FA4  48 35 D5 81 */	bl Shutdown__17CDSPStreamManagerFv
/* 80007048 00003FA8  34 1C 00 8C */	addic. r0, r28, 0x8c
/* 8000704C 00003FAC  41 82 00 50 */	beq lbl_8000709C
/* 80007050 00003FB0  80 1C 00 90 */	lwz r0, 0x90(r28)
/* 80007054 00003FB4  83 DC 00 98 */	lwz r30, 0x98(r28)
/* 80007058 00003FB8  54 00 18 38 */	slwi r0, r0, 3
/* 8000705C 00003FBC  7F FE 02 14 */	add r31, r30, r0
/* 80007060 00003FC0  93 C1 00 0C */	stw r30, 0xc(r1)
/* 80007064 00003FC4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80007068 00003FC8  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8000706C 00003FCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80007070 00003FD0  48 00 00 14 */	b lbl_80007084
lbl_80007074:
/* 80007074 00003FD4  7F C3 F3 78 */	mr r3, r30
/* 80007078 00003FD8  38 80 FF FF */	li r4, -1
/* 8000707C 00003FDC  48 33 9D C5 */	bl __dt__6CTokenFv
/* 80007080 00003FE0  3B DE 00 08 */	addi r30, r30, 8
lbl_80007084:
/* 80007084 00003FE4  7C 1E F8 40 */	cmplw r30, r31
/* 80007088 00003FE8  40 82 FF EC */	bne lbl_80007074
/* 8000708C 00003FEC  80 7C 00 98 */	lwz r3, 0x98(r28)
/* 80007090 00003FF0  28 03 00 00 */	cmplwi r3, 0
/* 80007094 00003FF4  41 82 00 08 */	beq lbl_8000709C
/* 80007098 00003FF8  48 30 E8 99 */	bl Free__7CMemoryFPCv
lbl_8000709C:
/* 8000709C 00003FFC  38 7C 00 58 */	addi r3, r28, 0x58
/* 800070A0 00004000  38 80 FF FF */	li r4, -1
/* 800070A4 00004004  48 04 BA 3D */	bl sub_80052ae0
/* 800070A8 00004008  38 7C 00 44 */	addi r3, r28, 0x44
/* 800070AC 0000400C  38 80 FF FF */	li r4, -1
/* 800070B0 00004010  48 2B F3 61 */	bl sub_802c6410
/* 800070B4 00004014  34 1C 00 30 */	addic. r0, r28, 0x30
/* 800070B8 00004018  41 82 00 2C */	beq lbl_800070E4
/* 800070BC 0000401C  34 1C 00 34 */	addic. r0, r28, 0x34
/* 800070C0 00004020  41 82 00 24 */	beq lbl_800070E4
/* 800070C4 00004024  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 800070C8 00004028  28 03 00 00 */	cmplwi r3, 0
/* 800070CC 0000402C  41 82 00 18 */	beq lbl_800070E4
/* 800070D0 00004030  81 83 00 00 */	lwz r12, 0(r3)
/* 800070D4 00004034  38 80 00 01 */	li r4, 1
/* 800070D8 00004038  81 8C 00 08 */	lwz r12, 8(r12)
/* 800070DC 0000403C  7D 89 03 A6 */	mtctr r12
/* 800070E0 00004040  4E 80 04 21 */	bctrl
lbl_800070E4:
/* 800070E4 00004044  34 1C 00 04 */	addic. r0, r28, 4
/* 800070E8 00004048  41 82 00 10 */	beq lbl_800070F8
/* 800070EC 0000404C  38 7C 00 04 */	addi r3, r28, 4
/* 800070F0 00004050  38 80 FF FF */	li r4, -1
/* 800070F4 00004054  48 00 1F B5 */	bl sub_800090a8
lbl_800070F8:
/* 800070F8 00004058  7F 83 E3 78 */	mr r3, r28
/* 800070FC 0000405C  38 80 FF FF */	li r4, -1
/* 80007100 00004060  48 34 54 49 */	bl __dt__9CAudioSysFv
/* 80007104 00004064  7F A0 07 35 */	extsh. r0, r29
/* 80007108 00004068  40 81 00 0C */	ble lbl_80007114
/* 8000710C 0000406C  7F 83 E3 78 */	mr r3, r28
/* 80007110 00004070  48 00 16 9D */	bl "__dl__38TOneStatic<24CGameArchitectureSupport>FPv"
lbl_80007114:
/* 80007114 00004074  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80007118 00004078  7F 83 E3 78 */	mr r3, r28
/* 8000711C 0000407C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80007120 00004080  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80007124 00004084  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80007128 00004088  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8000712C 0000408C  7C 08 03 A6 */	mtlr r0
/* 80007130 00004090  38 21 00 30 */	addi r1, r1, 0x30
/* 80007134 00004094  4E 80 00 20 */	blr

.global __ct__24CGameArchitectureSupportFR10COsContext
__ct__24CGameArchitectureSupportFR10COsContext:
/* 80007138 00004098  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8000713C 0000409C  7C 08 02 A6 */	mflr r0
/* 80007140 000040A0  3C A0 00 60 */	lis r5, 0x005FC000@ha
/* 80007144 000040A4  38 C0 00 30 */	li r6, 0x30
/* 80007148 000040A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8000714C 000040AC  39 05 C0 00 */	addi r8, r5, 0x005FC000@l
/* 80007150 000040B0  38 A0 00 30 */	li r5, 0x30
/* 80007154 000040B4  38 E0 00 30 */	li r7, 0x30
/* 80007158 000040B8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8000715C 000040BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80007160 000040C0  7C 7E 1B 78 */	mr r30, r3
/* 80007164 000040C4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80007168 000040C8  7C 9D 23 78 */	mr r29, r4
/* 8000716C 000040CC  38 80 00 30 */	li r4, 0x30
/* 80007170 000040D0  48 34 55 81 */	bl __ct__9CAudioSysFUcUcUcUcUi
/* 80007174 000040D4  38 7E 00 10 */	addi r3, r30, 0x10
/* 80007178 000040D8  38 00 00 00 */	li r0, 0
/* 8000717C 000040DC  90 7E 00 08 */	stw r3, 8(r30)
/* 80007180 000040E0  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80007184 000040E4  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80007188 000040E8  90 7E 00 14 */	stw r3, 0x14(r30)
/* 8000718C 000040EC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80007190 000040F0  48 37 E2 19 */	bl OSGetTime
/* 80007194 000040F4  90 9E 00 24 */	stw r4, 0x24(r30)
/* 80007198 000040F8  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8000719C 000040FC  48 37 E2 0D */	bl OSGetTime
/* 800071A0 00004100  90 9E 00 2C */	stw r4, 0x2c(r30)
/* 800071A4 00004104  7F A4 EB 78 */	mr r4, r29
/* 800071A8 00004108  90 7E 00 28 */	stw r3, 0x28(r30)
/* 800071AC 0000410C  38 7E 00 30 */	addi r3, r30, 0x30
/* 800071B0 00004110  80 AD A1 18 */	lwz r5, gpTweakPlayer@sda21(r13)
/* 800071B4 00004114  C0 45 01 54 */	lfs f2, 0x154(r5)
/* 800071B8 00004118  C0 25 01 50 */	lfs f1, 0x150(r5)
/* 800071BC 0000411C  48 01 C2 F9 */	bl __ct__15CInputGeneratorFP10COsContextff
/* 800071C0 00004120  80 8D A0 60 */	lwz r4, gpResourceFactory@sda21(r13)
/* 800071C4 00004124  38 7E 00 44 */	addi r3, r30, 0x44
/* 800071C8 00004128  80 AD A0 64 */	lwz r5, gpSimplePool@sda21(r13)
/* 800071CC 0000412C  38 C0 00 00 */	li r6, 0
/* 800071D0 00004130  48 2B F3 01 */	bl __ct__7CGuiSysFP8IFactoryP11CSimplePoolQ27CGuiSys10EUsageMode
/* 800071D4 00004134  38 7E 00 58 */	addi r3, r30, 0x58
/* 800071D8 00004138  48 04 B9 6D */	bl __ct__13CIOWinManagerFv
/* 800071DC 0000413C  38 C0 00 00 */	li r6, 0
/* 800071E0 00004140  C0 02 80 34 */	lfs f0, lbl_805A9D54@sda21(r2)
/* 800071E4 00004144  90 DE 00 78 */	stw r6, 0x78(r30)
/* 800071E8 00004148  38 00 00 02 */	li r0, 2
/* 800071EC 0000414C  38 60 00 7F */	li r3, 0x7f
/* 800071F0 00004150  38 80 00 00 */	li r4, 0
/* 800071F4 00004154  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 800071F8 00004158  38 A0 00 FF */	li r5, 0xff
/* 800071FC 0000415C  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 80007200 00004160  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 80007204 00004164  90 1E 00 88 */	stw r0, 0x88(r30)
/* 80007208 00004168  90 DE 00 90 */	stw r6, 0x90(r30)
/* 8000720C 0000416C  90 DE 00 94 */	stw r6, 0x94(r30)
/* 80007210 00004170  90 DE 00 98 */	stw r6, 0x98(r30)
/* 80007214 00004174  98 DE 00 C8 */	stb r6, 0xc8(r30)
/* 80007218 00004178  48 34 53 05 */	bl SysSetVolume__9CAudioSysFUcUsUc
/* 8000721C 0000417C  38 60 00 75 */	li r3, 0x75
/* 80007220 00004180  48 34 35 E5 */	bl SetDefaultVolumeScale__9CAudioSysFs
/* 80007224 00004184  48 34 35 D9 */	bl GetDefaultVolumeScale__9CAudioSysFv
/* 80007228 00004188  48 34 35 E5 */	bl SetVolumeScale__9CAudioSysFs
/* 8000722C 0000418C  48 35 D4 29 */	bl Initialize__17CDSPStreamManagerFv
/* 80007230 00004190  38 60 00 7F */	li r3, 0x7f
/* 80007234 00004194  48 35 E8 01 */	bl SetMusicVolume__19CStreamAudioManagerFi
/* 80007238 00004198  38 60 00 01 */	li r3, 1
/* 8000723C 0000419C  48 34 40 A1 */	bl TrkSetSampleRate__9CAudioSysF14ETRKSampleRate
/* 80007240 000041A0  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 80007244 000041A4  38 80 00 00 */	li r4, 0
/* 80007248 000041A8  88 03 01 60 */	lbz r0, 0x160(r3)
/* 8000724C 000041AC  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80007250 000041B0  98 03 01 60 */	stb r0, 0x160(r3)
/* 80007254 000041B4  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 80007258 000041B8  4B FF C4 49 */	bl ResetGameState__5CMainFv
/* 8000725C 000041BC  80 6D A1 20 */	lwz r3, gpTweakGame@sda21(r13)
/* 80007260 000041C0  3B FE 00 58 */	addi r31, r30, 0x58
/* 80007264 000041C4  88 03 00 2B */	lbz r0, 0x2b(r3)
/* 80007268 000041C8  28 00 00 00 */	cmplwi r0, 0
/* 8000726C 000041CC  40 82 00 7C */	bne lbl_800072E8
/* 80007270 000041D0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007274 000041D4  38 60 00 30 */	li r3, 0x30
/* 80007278 000041D8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000727C 000041DC  38 A0 00 00 */	li r5, 0
/* 80007280 000041E0  38 84 00 37 */	addi r4, r4, 0x37
/* 80007284 000041E4  48 30 E5 E9 */	bl __nw__FUlPCcPCc
/* 80007288 000041E8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8000728C 000041EC  41 82 00 10 */	beq lbl_8000729C
/* 80007290 000041F0  38 80 00 00 */	li r4, 0
/* 80007294 000041F4  48 02 1F 69 */	bl __ct__13CSplashScreenFQ213CSplashScreen13ESplashScreen
/* 80007298 000041F8  7C 7D 1B 78 */	mr r29, r3
lbl_8000729C:
/* 8000729C 000041FC  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 800072A0 00004200  38 60 00 08 */	li r3, 8
/* 800072A4 00004204  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 800072A8 00004208  38 A0 00 00 */	li r5, 0
/* 800072AC 0000420C  38 84 00 37 */	addi r4, r4, 0x37
/* 800072B0 00004210  48 30 E5 BD */	bl __nw__FUlPCcPCc
/* 800072B4 00004214  28 03 00 00 */	cmplwi r3, 0
/* 800072B8 00004218  41 82 00 10 */	beq lbl_800072C8
/* 800072BC 0000421C  93 A3 00 00 */	stw r29, 0(r3)
/* 800072C0 00004220  38 00 00 01 */	li r0, 1
/* 800072C4 00004224  90 03 00 04 */	stw r0, 4(r3)
lbl_800072C8:
/* 800072C8 00004228  90 61 00 18 */	stw r3, 0x18(r1)
/* 800072CC 0000422C  7F E3 FB 78 */	mr r3, r31
/* 800072D0 00004230  38 81 00 18 */	addi r4, r1, 0x18
/* 800072D4 00004234  38 A0 03 E8 */	li r5, 0x3e8
/* 800072D8 00004238  38 C0 27 10 */	li r6, 0x2710
/* 800072DC 0000423C  48 04 B6 75 */	bl "AddIOWin__13CIOWinManagerFQ24rstl17ncrc_ptr<6CIOWin>ii"
/* 800072E0 00004240  38 61 00 18 */	addi r3, r1, 0x18
/* 800072E4 00004244  48 00 13 B9 */	bl sub_8000869c
lbl_800072E8:
/* 800072E8 00004248  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 800072EC 0000424C  38 60 00 18 */	li r3, 0x18
/* 800072F0 00004250  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 800072F4 00004254  38 A0 00 00 */	li r5, 0
/* 800072F8 00004258  38 84 00 37 */	addi r4, r4, 0x37
/* 800072FC 0000425C  48 30 E5 71 */	bl __nw__FUlPCcPCc
/* 80007300 00004260  7C 7D 1B 79 */	or. r29, r3, r3
/* 80007304 00004264  41 82 00 0C */	beq lbl_80007310
/* 80007308 00004268  48 01 C6 B5 */	bl __ct__9CMainFlowFv
/* 8000730C 0000426C  7C 7D 1B 78 */	mr r29, r3
lbl_80007310:
/* 80007310 00004270  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007314 00004274  38 60 00 08 */	li r3, 8
/* 80007318 00004278  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000731C 0000427C  38 A0 00 00 */	li r5, 0
/* 80007320 00004280  38 84 00 37 */	addi r4, r4, 0x37
/* 80007324 00004284  48 30 E5 49 */	bl __nw__FUlPCcPCc
/* 80007328 00004288  28 03 00 00 */	cmplwi r3, 0
/* 8000732C 0000428C  41 82 00 10 */	beq lbl_8000733C
/* 80007330 00004290  93 A3 00 00 */	stw r29, 0(r3)
/* 80007334 00004294  38 00 00 01 */	li r0, 1
/* 80007338 00004298  90 03 00 04 */	stw r0, 4(r3)
lbl_8000733C:
/* 8000733C 0000429C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80007340 000042A0  7F E3 FB 78 */	mr r3, r31
/* 80007344 000042A4  38 81 00 14 */	addi r4, r1, 0x14
/* 80007348 000042A8  38 A0 00 00 */	li r5, 0
/* 8000734C 000042AC  38 C0 00 00 */	li r6, 0
/* 80007350 000042B0  48 04 B6 01 */	bl "AddIOWin__13CIOWinManagerFQ24rstl17ncrc_ptr<6CIOWin>ii"
/* 80007354 000042B4  38 61 00 14 */	addi r3, r1, 0x14
/* 80007358 000042B8  48 00 13 45 */	bl sub_8000869c
/* 8000735C 000042BC  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007360 000042C0  38 60 00 4C */	li r3, 0x4c
/* 80007364 000042C4  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80007368 000042C8  38 A0 00 00 */	li r5, 0
/* 8000736C 000042CC  38 84 00 37 */	addi r4, r4, 0x37
/* 80007370 000042D0  48 30 E4 FD */	bl __nw__FUlPCcPCc
/* 80007374 000042D4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80007378 000042D8  41 82 00 18 */	beq lbl_80007390
/* 8000737C 000042DC  C0 22 80 48 */	lfs f1, lbl_805A9D68@sda21(r2)
/* 80007380 000042E0  38 80 00 08 */	li r4, 8
/* 80007384 000042E4  C0 42 80 4C */	lfs f2, lbl_805A9D6C@sda21(r2)
/* 80007388 000042E8  48 0F 76 F9 */	bl __ct__20CConsoleOutputWindowFiff
/* 8000738C 000042EC  7C 7D 1B 78 */	mr r29, r3
lbl_80007390:
/* 80007390 000042F0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007394 000042F4  38 60 00 08 */	li r3, 8
/* 80007398 000042F8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000739C 000042FC  38 A0 00 00 */	li r5, 0
/* 800073A0 00004300  38 84 00 37 */	addi r4, r4, 0x37
/* 800073A4 00004304  48 30 E4 C9 */	bl __nw__FUlPCcPCc
/* 800073A8 00004308  28 03 00 00 */	cmplwi r3, 0
/* 800073AC 0000430C  41 82 00 10 */	beq lbl_800073BC
/* 800073B0 00004310  93 A3 00 00 */	stw r29, 0(r3)
/* 800073B4 00004314  38 00 00 01 */	li r0, 1
/* 800073B8 00004318  90 03 00 04 */	stw r0, 4(r3)
lbl_800073BC:
/* 800073BC 0000431C  90 61 00 10 */	stw r3, 0x10(r1)
/* 800073C0 00004320  7F E3 FB 78 */	mr r3, r31
/* 800073C4 00004324  38 81 00 10 */	addi r4, r1, 0x10
/* 800073C8 00004328  38 A0 00 64 */	li r5, 0x64
/* 800073CC 0000432C  38 C0 00 00 */	li r6, 0
/* 800073D0 00004330  48 04 B5 81 */	bl "AddIOWin__13CIOWinManagerFQ24rstl17ncrc_ptr<6CIOWin>ii"
/* 800073D4 00004334  38 61 00 10 */	addi r3, r1, 0x10
/* 800073D8 00004338  48 00 12 C5 */	bl sub_8000869c
/* 800073DC 0000433C  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 800073E0 00004340  38 60 00 14 */	li r3, 0x14
/* 800073E4 00004344  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 800073E8 00004348  38 A0 00 00 */	li r5, 0
/* 800073EC 0000434C  38 84 00 37 */	addi r4, r4, 0x37
/* 800073F0 00004350  48 30 E4 7D */	bl __nw__FUlPCcPCc
/* 800073F4 00004354  7C 7D 1B 79 */	or. r29, r3, r3
/* 800073F8 00004358  41 82 00 0C */	beq lbl_80007404
/* 800073FC 0000435C  48 10 A9 C9 */	bl __ct__14CAudioStateWinFv
/* 80007400 00004360  7C 7D 1B 78 */	mr r29, r3
lbl_80007404:
/* 80007404 00004364  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007408 00004368  38 60 00 08 */	li r3, 8
/* 8000740C 0000436C  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80007410 00004370  38 A0 00 00 */	li r5, 0
/* 80007414 00004374  38 84 00 37 */	addi r4, r4, 0x37
/* 80007418 00004378  48 30 E4 55 */	bl __nw__FUlPCcPCc
/* 8000741C 0000437C  28 03 00 00 */	cmplwi r3, 0
/* 80007420 00004380  41 82 00 10 */	beq lbl_80007430
/* 80007424 00004384  93 A3 00 00 */	stw r29, 0(r3)
/* 80007428 00004388  38 00 00 01 */	li r0, 1
/* 8000742C 0000438C  90 03 00 04 */	stw r0, 4(r3)
lbl_80007430:
/* 80007430 00004390  90 61 00 0C */	stw r3, 0xc(r1)
/* 80007434 00004394  7F E3 FB 78 */	mr r3, r31
/* 80007438 00004398  38 81 00 0C */	addi r4, r1, 0xc
/* 8000743C 0000439C  38 A0 00 64 */	li r5, 0x64
/* 80007440 000043A0  38 C0 FF FF */	li r6, -1
/* 80007444 000043A4  48 04 B5 0D */	bl "AddIOWin__13CIOWinManagerFQ24rstl17ncrc_ptr<6CIOWin>ii"
/* 80007448 000043A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8000744C 000043AC  48 00 12 51 */	bl sub_8000869c
/* 80007450 000043B0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007454 000043B4  38 60 00 20 */	li r3, 0x20
/* 80007458 000043B8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000745C 000043BC  38 A0 00 00 */	li r5, 0
/* 80007460 000043C0  38 84 00 37 */	addi r4, r4, 0x37
/* 80007464 000043C4  48 30 E4 09 */	bl __nw__FUlPCcPCc
/* 80007468 000043C8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8000746C 000043CC  41 82 00 10 */	beq lbl_8000747C
/* 80007470 000043D0  38 80 00 00 */	li r4, 0
/* 80007474 000043D4  48 26 27 4D */	bl __ct__18CErrorOutputWindowFiff
/* 80007478 000043D8  7C 7D 1B 78 */	mr r29, r3
lbl_8000747C:
/* 8000747C 000043DC  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007480 000043E0  38 60 00 08 */	li r3, 8
/* 80007484 000043E4  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80007488 000043E8  38 A0 00 00 */	li r5, 0
/* 8000748C 000043EC  38 84 00 37 */	addi r4, r4, 0x37
/* 80007490 000043F0  48 30 E3 DD */	bl __nw__FUlPCcPCc
/* 80007494 000043F4  28 03 00 00 */	cmplwi r3, 0
/* 80007498 000043F8  41 82 00 10 */	beq lbl_800074A8
/* 8000749C 000043FC  93 A3 00 00 */	stw r29, 0(r3)
/* 800074A0 00004400  38 00 00 01 */	li r0, 1
/* 800074A4 00004404  90 03 00 04 */	stw r0, 4(r3)
lbl_800074A8:
/* 800074A8 00004408  90 61 00 08 */	stw r3, 8(r1)
/* 800074AC 0000440C  3C A0 00 02 */	lis r5, 0x000186A0@ha
/* 800074B0 00004410  7F E3 FB 78 */	mr r3, r31
/* 800074B4 00004414  38 81 00 08 */	addi r4, r1, 8
/* 800074B8 00004418  38 C5 86 A0 */	addi r6, r5, 0x000186A0@l
/* 800074BC 0000441C  38 A0 27 10 */	li r5, 0x2710
/* 800074C0 00004420  48 04 B4 91 */	bl "AddIOWin__13CIOWinManagerFQ24rstl17ncrc_ptr<6CIOWin>ii"
/* 800074C4 00004424  38 61 00 08 */	addi r3, r1, 8
/* 800074C8 00004428  48 00 11 D5 */	bl sub_8000869c
/* 800074CC 0000442C  38 7E 00 44 */	addi r3, r30, 0x44
/* 800074D0 00004430  48 2B 97 25 */	bl InitializeApplicationUI__FR7CGuiSys
/* 800074D4 00004434  38 1E 00 44 */	addi r0, r30, 0x44
/* 800074D8 00004438  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 800074DC 0000443C  90 0D A0 70 */	stw r0, gGuiSystem@sda21(r13)
/* 800074E0 00004440  38 63 01 7C */	addi r3, r3, 0x17c
/* 800074E4 00004444  90 0D A6 40 */	stw r0, lbl_805A9200@sda21(r13)
/* 800074E8 00004448  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 800074EC 0000444C  90 0D A0 7C */	stw r0, gpController@sda21(r13)
/* 800074F0 00004450  48 20 7C 0D */	bl EnsureOptions__12CGameOptionsFv
/* 800074F4 00004454  C0 02 80 34 */	lfs f0, lbl_805A9D54@sda21(r2)
/* 800074F8 00004458  3C 00 43 30 */	lis r0, 0x4330
/* 800074FC 0000445C  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 80007500 00004460  90 01 00 20 */	stw r0, 0x20(r1)
/* 80007504 00004464  C8 22 80 50 */	lfd f1, lbl_805A9D70@sda21(r2)
/* 80007508 00004468  D0 0D A0 A4 */	stfs f0, lbl_805A8C64@sda21(r13)
/* 8000750C 0000446C  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 80007510 00004470  54 00 F0 BE */	srwi r0, r0, 2
/* 80007514 00004474  90 01 00 24 */	stw r0, 0x24(r1)
/* 80007518 00004478  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8000751C 0000447C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80007520 00004480  48 38 2A F9 */	bl __cvt_dbl_usll
/* 80007524 00004484  7C 9D 23 78 */	mr r29, r4
/* 80007528 00004488  7C 7F 1B 78 */	mr r31, r3
/* 8000752C 0000448C  48 37 DE 7D */	bl OSGetTime
/* 80007530 00004490  3C A0 80 00 */	lis r5, sub_80007578@ha
/* 80007534 00004494  7F A8 EB 78 */	mr r8, r29
/* 80007538 00004498  39 25 75 78 */	addi r9, r5, sub_80007578@l
/* 8000753C 0000449C  7C 86 23 78 */	mr r6, r4
/* 80007540 000044A0  7C 65 1B 78 */	mr r5, r3
/* 80007544 000044A4  7F E7 FB 78 */	mr r7, r31
/* 80007548 000044A8  38 7E 00 A0 */	addi r3, r30, 0xa0
/* 8000754C 000044AC  48 37 6E 2D */	bl OSSetPeriodicAlarm
/* 80007550 000044B0  38 00 00 01 */	li r0, 1
/* 80007554 000044B4  7F C3 F3 78 */	mr r3, r30
/* 80007558 000044B8  98 1E 00 C8 */	stb r0, 0xc8(r30)
/* 8000755C 000044BC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80007560 000044C0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80007564 000044C4  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80007568 000044C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8000756C 000044CC  7C 08 03 A6 */	mtlr r0
/* 80007570 000044D0  38 21 00 40 */	addi r1, r1, 0x40
/* 80007574 000044D4  4E 80 00 20 */	blr

.global sub_80007578
sub_80007578:
/* 80007578 000044D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000757C 000044DC  7C 08 02 A6 */	mflr r0
/* 80007580 000044E0  C0 02 80 58 */	lfs f0, lbl_805A9D78@sda21(r2)
/* 80007584 000044E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007588 000044E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000758C 000044EC  7C 7F 1B 78 */	mr r31, r3
/* 80007590 000044F0  C0 2D A0 A4 */	lfs f1, lbl_805A8C64@sda21(r13)
/* 80007594 000044F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007598 000044F8  4C 41 13 82 */	cror 2, 1, 2
/* 8000759C 000044FC  40 82 00 18 */	bne lbl_800075B4
/* 800075A0 00004500  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 800075A4 00004504  38 63 BE 74 */	addi r3, r3, lbl_803CBE74@l
/* 800075A8 00004508  38 63 01 23 */	addi r3, r3, 0x123
/* 800075AC 0000450C  4C C6 31 82 */	crclr 6
/* 800075B0 00004510  48 2C F2 7D */	bl rs_debugger_printf__FPCce
lbl_800075B4:
/* 800075B4 00004514  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 800075B8 00004518  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800075BC 0000451C  80 04 00 F8 */	lwz r0, 0x800000F8@l(r4)
/* 800075C0 00004520  38 A0 00 00 */	li r5, 0
/* 800075C4 00004524  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 800075C8 00004528  54 06 F0 BE */	srwi r6, r0, 2
/* 800075CC 0000452C  48 38 26 01 */	bl __div2i
/* 800075D0 00004530  48 38 29 95 */	bl __cvt_sll_flt
/* 800075D4 00004534  C0 0D A0 A4 */	lfs f0, lbl_805A8C64@sda21(r13)
/* 800075D8 00004538  EC 00 08 2A */	fadds f0, f0, f1
/* 800075DC 0000453C  D0 0D A0 A4 */	stfs f0, lbl_805A8C64@sda21(r13)
/* 800075E0 00004540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800075E4 00004544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800075E8 00004548  7C 08 03 A6 */	mtlr r0
/* 800075EC 0000454C  38 21 00 10 */	addi r1, r1, 0x10
/* 800075F0 00004550  4E 80 00 20 */	blr

.global LoadStringTable__18CGameGlobalObjectsFv
LoadStringTable__18CGameGlobalObjectsFv:
/* 800075F4 00004554  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800075F8 00004558  7C 08 02 A6 */	mflr r0
/* 800075FC 0000455C  3C A0 80 3D */	lis r5, lbl_803CBE74@ha
/* 80007600 00004560  90 01 00 34 */	stw r0, 0x34(r1)
/* 80007604 00004564  38 A5 BE 74 */	addi r5, r5, lbl_803CBE74@l
/* 80007608 00004568  38 A5 01 31 */	addi r5, r5, 0x131
/* 8000760C 0000456C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80007610 00004570  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80007614 00004574  7C 7E 1B 78 */	mr r30, r3
/* 80007618 00004578  38 61 00 08 */	addi r3, r1, 8
/* 8000761C 0000457C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80007620 00004580  81 84 00 00 */	lwz r12, 0(r4)
/* 80007624 00004584  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80007628 00004588  7D 89 03 A6 */	mtctr r12
/* 8000762C 0000458C  4E 80 04 21 */	bctrl
/* 80007630 00004590  3B E1 00 10 */	addi r31, r1, 0x10
/* 80007634 00004594  38 81 00 08 */	addi r4, r1, 8
/* 80007638 00004598  7F E3 FB 78 */	mr r3, r31
/* 8000763C 0000459C  48 33 98 6D */	bl __ct__6CTokenFRC6CToken
/* 80007640 000045A0  7F E3 FB 78 */	mr r3, r31
/* 80007644 000045A4  48 33 97 C9 */	bl GetObj__6CTokenFv
/* 80007648 000045A8  80 03 00 04 */	lwz r0, 4(r3)
/* 8000764C 000045AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80007650 000045B0  88 1E 01 48 */	lbz r0, 0x148(r30)
/* 80007654 000045B4  28 00 00 00 */	cmplwi r0, 0
/* 80007658 000045B8  40 82 00 34 */	bne lbl_8000768C
/* 8000765C 000045BC  37 FE 01 3C */	addic. r31, r30, 0x13c
/* 80007660 000045C0  41 82 00 20 */	beq lbl_80007680
/* 80007664 000045C4  7F E3 FB 78 */	mr r3, r31
/* 80007668 000045C8  38 81 00 10 */	addi r4, r1, 0x10
/* 8000766C 000045CC  48 33 98 3D */	bl __ct__6CTokenFRC6CToken
/* 80007670 000045D0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80007674 000045D4  7F E3 FB 78 */	mr r3, r31
/* 80007678 000045D8  90 1F 00 08 */	stw r0, 8(r31)
/* 8000767C 000045DC  48 33 97 09 */	bl Lock__6CTokenFv
lbl_80007680:
/* 80007680 000045E0  38 00 00 01 */	li r0, 1
/* 80007684 000045E4  98 1E 01 48 */	stb r0, 0x148(r30)
/* 80007688 000045E8  48 00 00 1C */	b lbl_800076A4
lbl_8000768C:
/* 8000768C 000045EC  3B FE 01 3C */	addi r31, r30, 0x13c
/* 80007690 000045F0  38 81 00 10 */	addi r4, r1, 0x10
/* 80007694 000045F4  7F E3 FB 78 */	mr r3, r31
/* 80007698 000045F8  48 33 96 2D */	bl __as__6CTokenFRC6CToken
/* 8000769C 000045FC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800076A0 00004600  90 1F 00 08 */	stw r0, 8(r31)
lbl_800076A4:
/* 800076A4 00004604  38 61 00 10 */	addi r3, r1, 0x10
/* 800076A8 00004608  38 80 00 00 */	li r4, 0
/* 800076AC 0000460C  48 33 97 95 */	bl __dt__6CTokenFv
/* 800076B0 00004610  38 61 00 08 */	addi r3, r1, 8
/* 800076B4 00004614  38 80 FF FF */	li r4, -1
/* 800076B8 00004618  48 33 97 89 */	bl __dt__6CTokenFv
/* 800076BC 0000461C  80 1E 01 44 */	lwz r0, 0x144(r30)
/* 800076C0 00004620  90 0D A0 74 */	stw r0, gpStringTable@sda21(r13)
/* 800076C4 00004624  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800076C8 00004628  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800076CC 0000462C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800076D0 00004630  7C 08 03 A6 */	mtlr r0
/* 800076D4 00004634  38 21 00 30 */	addi r1, r1, 0x30
/* 800076D8 00004638  4E 80 00 20 */	blr

.global PostInitialize__18CGameGlobalObjectsFR10COsContextR10CMemorySys
PostInitialize__18CGameGlobalObjectsFR10COsContextR10CMemorySys:
/* 800076DC 0000463C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800076E0 00004640  7C 08 02 A6 */	mflr r0
/* 800076E4 00004644  90 01 00 24 */	stw r0, 0x24(r1)
/* 800076E8 00004648  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800076EC 0000464C  7C BF 2B 78 */	mr r31, r5
/* 800076F0 00004650  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800076F4 00004654  7C 9E 23 78 */	mr r30, r4
/* 800076F8 00004658  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800076FC 0000465C  7C 7D 1B 78 */	mr r29, r3
/* 80007700 00004660  4B FF E9 B5 */	bl AddPaksAndFactories__18CGameGlobalObjectsFv
/* 80007704 00004664  7F A3 EB 78 */	mr r3, r29
/* 80007708 00004668  4B FF FE ED */	bl LoadStringTable__18CGameGlobalObjectsFv
/* 8000770C 0000466C  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 80007710 00004670  38 63 BE 74 */	addi r3, r3, lbl_803CBE74@l
/* 80007714 00004674  38 63 01 3B */	addi r3, r3, 0x13b
/* 80007718 00004678  4C C6 31 82 */	crclr 6
/* 8000771C 0000467C  48 38 67 95 */	bl printf
/* 80007720 00004680  7F C4 F3 78 */	mr r4, r30
/* 80007724 00004684  7F E5 FB 78 */	mr r5, r31
/* 80007728 00004688  38 7D 00 CC */	addi r3, r29, 0xcc
/* 8000772C 0000468C  38 DD 00 04 */	addi r6, r29, 4
/* 80007730 00004690  48 2B 56 C1 */	bl AllocateRenderer__8RendererFR12IObjectStoreR10COsContextR10CMemorySysR11CResFactory
/* 80007734 00004694  80 1D 01 4C */	lwz r0, 0x14c(r29)
/* 80007738 00004698  7C 7F 1B 78 */	mr r31, r3
/* 8000773C 0000469C  28 00 00 00 */	cmplwi r0, 0
/* 80007740 000046A0  41 82 00 1C */	beq lbl_8000775C
/* 80007744 000046A4  7C 03 03 78 */	mr r3, r0
/* 80007748 000046A8  38 80 00 01 */	li r4, 1
/* 8000774C 000046AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80007750 000046B0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80007754 000046B4  7D 89 03 A6 */	mtctr r12
/* 80007758 000046B8  4E 80 04 21 */	bctrl
lbl_8000775C:
/* 8000775C 000046BC  93 FD 01 4C */	stw r31, 0x14c(r29)
/* 80007760 000046C0  80 1D 01 4C */	lwz r0, 0x14c(r29)
/* 80007764 000046C4  90 0D A0 68 */	stw r0, gpRender@sda21(r13)
/* 80007768 000046C8  48 20 AF 79 */	bl Initialize__13CEnvFxManagerFv
/* 8000776C 000046CC  48 28 11 09 */	bl LoadMazeSeeds__15CScriptMazeNodeFv
/* 80007770 000046D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80007774 000046D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80007778 000046D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8000777C 000046DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80007780 000046E0  7C 08 03 A6 */	mtlr r0
/* 80007784 000046E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80007788 000046E8  4E 80 00 20 */	blr

.global sub_8000778c
sub_8000778c:
/* 8000778C 000046EC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80007790 000046F0  7C 08 02 A6 */	mflr r0
/* 80007794 000046F4  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007798 000046F8  38 60 00 24 */	li r3, 0x24
/* 8000779C 000046FC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800077A0 00004700  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 800077A4 00004704  38 A0 00 00 */	li r5, 0
/* 800077A8 00004708  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 800077AC 0000470C  38 84 00 37 */	addi r4, r4, 0x37
/* 800077B0 00004710  93 C1 00 98 */	stw r30, 0x98(r1)
/* 800077B4 00004714  48 30 E0 B9 */	bl __nw__FUlPCcPCc
/* 800077B8 00004718  7C 64 1B 79 */	or. r4, r3, r3
/* 800077BC 0000471C  41 82 00 18 */	beq lbl_800077D4
/* 800077C0 00004720  3C 80 80 3D */	lis r4, lbl_803CB3A0@ha
/* 800077C4 00004724  38 A0 06 50 */	li r5, 0x650
/* 800077C8 00004728  38 84 B3 A0 */	addi r4, r4, lbl_803CB3A0@l
/* 800077CC 0000472C  48 33 7A 01 */	bl __ct__15CMemoryInStreamFPCvUl
/* 800077D0 00004730  7C 64 1B 78 */	mr r4, r3
lbl_800077D4:
/* 800077D4 00004734  7C 04 00 D0 */	neg r0, r4
/* 800077D8 00004738  90 81 00 1C */	stw r4, 0x1c(r1)
/* 800077DC 0000473C  7C 00 23 78 */	or r0, r0, r4
/* 800077E0 00004740  38 61 00 5C */	addi r3, r1, 0x5c
/* 800077E4 00004744  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800077E8 00004748  38 81 00 18 */	addi r4, r1, 0x18
/* 800077EC 0000474C  98 01 00 18 */	stb r0, 0x18(r1)
/* 800077F0 00004750  48 33 81 11 */	bl "__ct__15CZipInputStreamFQ24rstl24auto_ptr<12CInputStream>"
/* 800077F4 00004754  88 01 00 18 */	lbz r0, 0x18(r1)
/* 800077F8 00004758  28 00 00 00 */	cmplwi r0, 0
/* 800077FC 0000475C  41 82 00 24 */	beq lbl_80007820
/* 80007800 00004760  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80007804 00004764  28 03 00 00 */	cmplwi r3, 0
/* 80007808 00004768  41 82 00 18 */	beq lbl_80007820
/* 8000780C 0000476C  81 83 00 00 */	lwz r12, 0(r3)
/* 80007810 00004770  38 80 00 01 */	li r4, 1
/* 80007814 00004774  81 8C 00 08 */	lwz r12, 8(r12)
/* 80007818 00004778  7D 89 03 A6 */	mtctr r12
/* 8000781C 0000477C  4E 80 04 21 */	bctrl
lbl_80007820:
/* 80007820 00004780  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007824 00004784  38 60 00 94 */	li r3, 0x94
/* 80007828 00004788  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000782C 0000478C  38 A0 00 00 */	li r5, 0
/* 80007830 00004790  38 84 00 37 */	addi r4, r4, 0x37
/* 80007834 00004794  48 30 E0 39 */	bl __nw__FUlPCcPCc
/* 80007838 00004798  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000783C 0000479C  41 82 00 14 */	beq lbl_80007850
/* 80007840 000047A0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80007844 000047A4  38 A0 00 00 */	li r5, 0
/* 80007848 000047A8  48 2F 8F DD */	bl __ct__11CRasterFontFR12CInputStreamR12IObjectStore
/* 8000784C 000047AC  7C 7F 1B 78 */	mr r31, r3
lbl_80007850:
/* 80007850 000047B0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007854 000047B4  38 60 00 24 */	li r3, 0x24
/* 80007858 000047B8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000785C 000047BC  38 A0 00 00 */	li r5, 0
/* 80007860 000047C0  38 84 00 37 */	addi r4, r4, 0x37
/* 80007864 000047C4  48 30 E0 09 */	bl __nw__FUlPCcPCc
/* 80007868 000047C8  7C 64 1B 79 */	or. r4, r3, r3
/* 8000786C 000047CC  41 82 00 18 */	beq lbl_80007884
/* 80007870 000047D0  3C 80 80 3D */	lis r4, lbl_803CB9F0@ha
/* 80007874 000047D4  38 A0 04 5C */	li r5, 0x45c
/* 80007878 000047D8  38 84 B9 F0 */	addi r4, r4, lbl_803CB9F0@l
/* 8000787C 000047DC  48 33 79 51 */	bl __ct__15CMemoryInStreamFPCvUl
/* 80007880 000047E0  7C 64 1B 78 */	mr r4, r3
lbl_80007884:
/* 80007884 000047E4  7C 04 00 D0 */	neg r0, r4
/* 80007888 000047E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8000788C 000047EC  7C 00 23 78 */	or r0, r0, r4
/* 80007890 000047F0  38 61 00 28 */	addi r3, r1, 0x28
/* 80007894 000047F4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80007898 000047F8  38 81 00 10 */	addi r4, r1, 0x10
/* 8000789C 000047FC  98 01 00 10 */	stb r0, 0x10(r1)
/* 800078A0 00004800  48 33 80 61 */	bl "__ct__15CZipInputStreamFQ24rstl24auto_ptr<12CInputStream>"
/* 800078A4 00004804  88 01 00 10 */	lbz r0, 0x10(r1)
/* 800078A8 00004808  28 00 00 00 */	cmplwi r0, 0
/* 800078AC 0000480C  41 82 00 24 */	beq lbl_800078D0
/* 800078B0 00004810  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800078B4 00004814  28 03 00 00 */	cmplwi r3, 0
/* 800078B8 00004818  41 82 00 18 */	beq lbl_800078D0
/* 800078BC 0000481C  81 83 00 00 */	lwz r12, 0(r3)
/* 800078C0 00004820  38 80 00 01 */	li r4, 1
/* 800078C4 00004824  81 8C 00 08 */	lwz r12, 8(r12)
/* 800078C8 00004828  7D 89 03 A6 */	mtctr r12
/* 800078CC 0000482C  4E 80 04 21 */	bctrl
lbl_800078D0:
/* 800078D0 00004830  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 800078D4 00004834  38 60 00 68 */	li r3, 0x68
/* 800078D8 00004838  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 800078DC 0000483C  38 A0 00 00 */	li r5, 0
/* 800078E0 00004840  38 84 00 37 */	addi r4, r4, 0x37
/* 800078E4 00004844  48 30 DF 89 */	bl __nw__FUlPCcPCc
/* 800078E8 00004848  7C 64 1B 79 */	or. r4, r3, r3
/* 800078EC 0000484C  41 82 00 18 */	beq lbl_80007904
/* 800078F0 00004850  38 81 00 28 */	addi r4, r1, 0x28
/* 800078F4 00004854  38 A0 00 00 */	li r5, 0
/* 800078F8 00004858  38 C0 00 00 */	li r6, 0
/* 800078FC 0000485C  48 30 81 C9 */	bl __ct__8CTextureFR12CInputStreamQ28CTexture11EAutoMipmapQ28CTexture9EBlackKey
/* 80007900 00004860  7C 64 1B 78 */	mr r4, r3
lbl_80007904:
/* 80007904 00004864  3B C1 00 20 */	addi r30, r1, 0x20
/* 80007908 00004868  38 61 00 08 */	addi r3, r1, 8
/* 8000790C 0000486C  48 00 01 21 */	bl "GetNewDerivedObject__35TObjOwnerDerivedFromIObj<8CTexture>FP8CTexture"
/* 80007910 00004870  38 00 00 00 */	li r0, 0
/* 80007914 00004874  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80007918 00004878  98 01 00 08 */	stb r0, 8(r1)
/* 8000791C 0000487C  7F C3 F3 78 */	mr r3, r30
/* 80007920 00004880  48 33 95 E5 */	bl __ct__6CTokenFP4IObj
/* 80007924 00004884  88 01 00 08 */	lbz r0, 8(r1)
/* 80007928 00004888  28 00 00 00 */	cmplwi r0, 0
/* 8000792C 0000488C  41 82 00 24 */	beq lbl_80007950
/* 80007930 00004890  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80007934 00004894  28 03 00 00 */	cmplwi r3, 0
/* 80007938 00004898  41 82 00 18 */	beq lbl_80007950
/* 8000793C 0000489C  81 83 00 00 */	lwz r12, 0(r3)
/* 80007940 000048A0  38 80 00 01 */	li r4, 1
/* 80007944 000048A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80007948 000048A8  7D 89 03 A6 */	mtctr r12
/* 8000794C 000048AC  4E 80 04 21 */	bctrl
lbl_80007950:
/* 80007950 000048B0  7F E3 FB 78 */	mr r3, r31
/* 80007954 000048B4  38 81 00 20 */	addi r4, r1, 0x20
/* 80007958 000048B8  48 2F 85 7D */	bl sub_802ffed4
/* 8000795C 000048BC  38 61 00 20 */	addi r3, r1, 0x20
/* 80007960 000048C0  38 80 00 00 */	li r4, 0
/* 80007964 000048C4  48 33 94 DD */	bl __dt__6CTokenFv
/* 80007968 000048C8  38 61 00 28 */	addi r3, r1, 0x28
/* 8000796C 000048CC  38 80 FF FF */	li r4, -1
/* 80007970 000048D0  48 33 7E D1 */	bl __dt__15CZipInputStreamFv
/* 80007974 000048D4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80007978 000048D8  38 80 FF FF */	li r4, -1
/* 8000797C 000048DC  48 33 7E C5 */	bl __dt__15CZipInputStreamFv
/* 80007980 000048E0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80007984 000048E4  7F E3 FB 78 */	mr r3, r31
/* 80007988 000048E8  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8000798C 000048EC  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80007990 000048F0  7C 08 03 A6 */	mtlr r0
/* 80007994 000048F4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80007998 000048F8  4E 80 00 20 */	blr

.global sub_8000799c
sub_8000799c:
/* 8000799C 000048FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800079A0 00004900  7C 08 02 A6 */	mflr r0
/* 800079A4 00004904  90 01 00 14 */	stw r0, 0x14(r1)
/* 800079A8 00004908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800079AC 0000490C  7C 9F 23 78 */	mr r31, r4
/* 800079B0 00004910  93 C1 00 08 */	stw r30, 8(r1)
/* 800079B4 00004914  7C 7E 1B 79 */	or. r30, r3, r3
/* 800079B8 00004918  41 82 00 58 */	beq lbl_80007A10
/* 800079BC 0000491C  3C 60 80 3E */	lis r3, lbl_803D8D84@ha
/* 800079C0 00004920  38 03 8D 84 */	addi r0, r3, lbl_803D8D84@l
/* 800079C4 00004924  90 1E 00 00 */	stw r0, 0(r30)
/* 800079C8 00004928  80 7E 00 04 */	lwz r3, 4(r30)
/* 800079CC 0000492C  28 03 00 00 */	cmplwi r3, 0
/* 800079D0 00004930  41 82 00 0C */	beq lbl_800079DC
/* 800079D4 00004934  38 80 00 01 */	li r4, 1
/* 800079D8 00004938  48 30 80 21 */	bl __dt__8CTextureFv
lbl_800079DC:
/* 800079DC 0000493C  28 1E 00 00 */	cmplwi r30, 0
/* 800079E0 00004940  41 82 00 20 */	beq lbl_80007A00
/* 800079E4 00004944  3C 60 80 3E */	lis r3, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 800079E8 00004948  38 03 8D 78 */	addi r0, r3, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 800079EC 0000494C  90 1E 00 00 */	stw r0, 0(r30)
/* 800079F0 00004950  41 82 00 10 */	beq lbl_80007A00
/* 800079F4 00004954  3C 60 80 3E */	lis r3, __vt__4IObj@ha
/* 800079F8 00004958  38 03 8D 6C */	addi r0, r3, __vt__4IObj@l
/* 800079FC 0000495C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80007A00:
/* 80007A00 00004960  7F E0 07 35 */	extsh. r0, r31
/* 80007A04 00004964  40 81 00 0C */	ble lbl_80007A10
/* 80007A08 00004968  7F C3 F3 78 */	mr r3, r30
/* 80007A0C 0000496C  48 30 DF 25 */	bl Free__7CMemoryFPCv
lbl_80007A10:
/* 80007A10 00004970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007A14 00004974  7F C3 F3 78 */	mr r3, r30
/* 80007A18 00004978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80007A1C 0000497C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80007A20 00004980  7C 08 03 A6 */	mtlr r0
/* 80007A24 00004984  38 21 00 10 */	addi r1, r1, 0x10
/* 80007A28 00004988  4E 80 00 20 */	blr

.global "GetNewDerivedObject__35TObjOwnerDerivedFromIObj<8CTexture>FP8CTexture"
"GetNewDerivedObject__35TObjOwnerDerivedFromIObj<8CTexture>FP8CTexture":
/* 80007A2C 0000498C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007A30 00004990  7C 08 02 A6 */	mflr r0
/* 80007A34 00004994  3C A0 80 3D */	lis r5, lbl_803CBE74@ha
/* 80007A38 00004998  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007A3C 0000499C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80007A40 000049A0  7C 9F 23 78 */	mr r31, r4
/* 80007A44 000049A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80007A48 000049A8  7C 7E 1B 78 */	mr r30, r3
/* 80007A4C 000049AC  38 65 BE 74 */	addi r3, r5, lbl_803CBE74@l
/* 80007A50 000049B0  38 A0 00 00 */	li r5, 0
/* 80007A54 000049B4  38 83 00 37 */	addi r4, r3, 0x37
/* 80007A58 000049B8  38 60 00 08 */	li r3, 8
/* 80007A5C 000049BC  48 30 DE 11 */	bl __nw__FUlPCcPCc
/* 80007A60 000049C0  28 03 00 00 */	cmplwi r3, 0
/* 80007A64 000049C4  41 82 00 2C */	beq lbl_80007A90
/* 80007A68 000049C8  3C 80 80 3E */	lis r4, __vt__4IObj@ha
/* 80007A6C 000049CC  3C A0 80 3E */	lis r5, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 80007A70 000049D0  38 04 8D 6C */	addi r0, r4, __vt__4IObj@l
/* 80007A74 000049D4  3C 80 80 3E */	lis r4, lbl_803D8D84@ha
/* 80007A78 000049D8  90 03 00 00 */	stw r0, 0(r3)
/* 80007A7C 000049DC  38 A5 8D 78 */	addi r5, r5, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 80007A80 000049E0  38 04 8D 84 */	addi r0, r4, lbl_803D8D84@l
/* 80007A84 000049E4  90 A3 00 00 */	stw r5, 0(r3)
/* 80007A88 000049E8  93 E3 00 04 */	stw r31, 4(r3)
/* 80007A8C 000049EC  90 03 00 00 */	stw r0, 0(r3)
lbl_80007A90:
/* 80007A90 000049F0  7C 03 00 D0 */	neg r0, r3
/* 80007A94 000049F4  7C 00 1B 78 */	or r0, r0, r3
/* 80007A98 000049F8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80007A9C 000049FC  98 1E 00 00 */	stb r0, 0(r30)
/* 80007AA0 00004A00  90 7E 00 04 */	stw r3, 4(r30)
/* 80007AA4 00004A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80007AA8 00004A08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80007AAC 00004A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007AB0 00004A10  7C 08 03 A6 */	mtlr r0
/* 80007AB4 00004A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80007AB8 00004A18  4E 80 00 20 */	blr

.global __ct__18CGameGlobalObjectsFR10COsContextR10CMemorySys
__ct__18CGameGlobalObjectsFR10COsContextR10CMemorySys:
/* 80007ABC 00004A1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007AC0 00004A20  7C 08 02 A6 */	mflr r0
/* 80007AC4 00004A24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80007AC8 00004A28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80007ACC 00004A2C  7C 7F 1B 78 */	mr r31, r3
/* 80007AD0 00004A30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80007AD4 00004A34  7C BE 2B 78 */	mr r30, r5
/* 80007AD8 00004A38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80007ADC 00004A3C  7C 9D 23 78 */	mr r29, r4
/* 80007AE0 00004A40  48 34 69 E1 */	bl Initialize__14CMemoryCardSysFv
/* 80007AE4 00004A44  38 7F 00 04 */	addi r3, r31, 4
/* 80007AE8 00004A48  48 33 2C 09 */	bl __ct__11CResFactoryFv
/* 80007AEC 00004A4C  38 7F 00 CC */	addi r3, r31, 0xcc
/* 80007AF0 00004A50  38 9F 00 04 */	addi r4, r31, 4
/* 80007AF4 00004A54  48 33 8C E1 */	bl __ct__11CSimplePoolFR8IFactory
/* 80007AF8 00004A58  38 7F 00 EC */	addi r3, r31, 0xec
/* 80007AFC 00004A5C  48 02 CE F1 */	bl __ct__24CCharacterFactoryBuilderFv
/* 80007B00 00004A60  38 7F 01 10 */	addi r3, r31, 0x110
/* 80007B04 00004A64  48 09 B8 29 */	bl __ct__10CAiFuncMapFv
/* 80007B08 00004A68  3C 60 80 3F */	lis r3, sGraphicsFifo@ha
/* 80007B0C 00004A6C  7F A4 EB 78 */	mr r4, r29
/* 80007B10 00004A70  38 E3 75 60 */	addi r7, r3, sGraphicsFifo@l
/* 80007B14 00004A74  7F C5 F3 78 */	mr r5, r30
/* 80007B18 00004A78  38 7F 01 30 */	addi r3, r31, 0x130
/* 80007B1C 00004A7C  3C C0 00 06 */	lis r6, 6
/* 80007B20 00004A80  48 30 19 3D */	bl __ct__12CGraphicsSysFRC10COsContextRC10CMemorySysUiPv
/* 80007B24 00004A84  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007B28 00004A88  38 60 02 30 */	li r3, 0x230
/* 80007B2C 00004A8C  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80007B30 00004A90  38 A0 00 00 */	li r5, 0
/* 80007B34 00004A94  38 84 00 37 */	addi r4, r4, 0x37
/* 80007B38 00004A98  48 30 DD 35 */	bl __nw__FUlPCcPCc
/* 80007B3C 00004A9C  7C 60 1B 79 */	or. r0, r3, r3
/* 80007B40 00004AA0  41 82 00 0C */	beq lbl_80007B4C
/* 80007B44 00004AA4  48 1C CF F5 */	bl __ct__10CGameStateFv
/* 80007B48 00004AA8  7C 60 1B 78 */	mr r0, r3
lbl_80007B4C:
/* 80007B4C 00004AAC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80007B50 00004AB0  38 00 00 00 */	li r0, 0
/* 80007B54 00004AB4  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007B58 00004AB8  38 60 00 10 */	li r3, 0x10
/* 80007B5C 00004ABC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80007B60 00004AC0  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80007B64 00004AC4  38 84 00 37 */	addi r4, r4, 0x37
/* 80007B68 00004AC8  38 A0 00 00 */	li r5, 0
/* 80007B6C 00004ACC  98 1F 01 48 */	stb r0, 0x148(r31)
/* 80007B70 00004AD0  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 80007B74 00004AD4  48 30 DC F9 */	bl __nw__FUlPCcPCc
/* 80007B78 00004AD8  7C 60 1B 79 */	or. r0, r3, r3
/* 80007B7C 00004ADC  41 82 00 0C */	beq lbl_80007B88
/* 80007B80 00004AE0  48 21 55 35 */	bl __ct__19CInGameTweakManagerFv
/* 80007B84 00004AE4  7C 60 1B 78 */	mr r0, r3
lbl_80007B88:
/* 80007B88 00004AE8  90 1F 01 50 */	stw r0, 0x150(r31)
/* 80007B8C 00004AEC  4B FF FC 01 */	bl sub_8000778c
/* 80007B90 00004AF0  7C 64 1B 78 */	mr r4, r3
/* 80007B94 00004AF4  3B BF 01 54 */	addi r29, r31, 0x154
/* 80007B98 00004AF8  38 61 00 08 */	addi r3, r1, 8
/* 80007B9C 00004AFC  48 00 02 3D */	bl sub_80007dd8
/* 80007BA0 00004B00  38 00 00 00 */	li r0, 0
/* 80007BA4 00004B04  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80007BA8 00004B08  98 01 00 08 */	stb r0, 8(r1)
/* 80007BAC 00004B0C  7F A3 EB 78 */	mr r3, r29
/* 80007BB0 00004B10  48 33 93 55 */	bl __ct__6CTokenFP4IObj
/* 80007BB4 00004B14  88 01 00 08 */	lbz r0, 8(r1)
/* 80007BB8 00004B18  28 00 00 00 */	cmplwi r0, 0
/* 80007BBC 00004B1C  41 82 00 24 */	beq lbl_80007BE0
/* 80007BC0 00004B20  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80007BC4 00004B24  28 03 00 00 */	cmplwi r3, 0
/* 80007BC8 00004B28  41 82 00 18 */	beq lbl_80007BE0
/* 80007BCC 00004B2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80007BD0 00004B30  38 80 00 01 */	li r4, 1
/* 80007BD4 00004B34  81 8C 00 08 */	lwz r12, 8(r12)
/* 80007BD8 00004B38  7D 89 03 A6 */	mtctr r12
/* 80007BDC 00004B3C  4E 80 04 21 */	bctrl
lbl_80007BE0:
/* 80007BE0 00004B40  38 1F 00 04 */	addi r0, r31, 4
/* 80007BE4 00004B44  38 BF 00 CC */	addi r5, r31, 0xcc
/* 80007BE8 00004B48  38 9F 00 EC */	addi r4, r31, 0xec
/* 80007BEC 00004B4C  90 0D A0 60 */	stw r0, gpResourceFactory@sda21(r13)
/* 80007BF0 00004B50  38 1F 01 54 */	addi r0, r31, 0x154
/* 80007BF4 00004B54  7F E3 FB 78 */	mr r3, r31
/* 80007BF8 00004B58  90 AD A0 64 */	stw r5, gpSimplePool@sda21(r13)
/* 80007BFC 00004B5C  90 8D A0 6C */	stw r4, gpCharacterFactoryBuilder@sda21(r13)
/* 80007C00 00004B60  80 9F 01 34 */	lwz r4, 0x134(r31)
/* 80007C04 00004B64  90 8D A0 80 */	stw r4, gpGameState@sda21(r13)
/* 80007C08 00004B68  80 9F 01 50 */	lwz r4, 0x150(r31)
/* 80007C0C 00004B6C  90 8D A0 88 */	stw r4, gpTweakManager@sda21(r13)
/* 80007C10 00004B70  90 0D A0 8C */	stw r0, gpDefaultFont@sda21(r13)
/* 80007C14 00004B74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80007C18 00004B78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80007C1C 00004B7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80007C20 00004B80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80007C24 00004B84  7C 08 03 A6 */	mtlr r0
/* 80007C28 00004B88  38 21 00 20 */	addi r1, r1, 0x20
/* 80007C2C 00004B8C  4E 80 00 20 */	blr

.global sub_80007c30
sub_80007c30:
/* 80007C30 00004B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007C34 00004B94  7C 08 02 A6 */	mflr r0
/* 80007C38 00004B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007C3C 00004B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80007C40 00004BA0  7C 9F 23 78 */	mr r31, r4
/* 80007C44 00004BA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80007C48 00004BA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80007C4C 00004BAC  41 82 00 58 */	beq lbl_80007CA4
/* 80007C50 00004BB0  3C 60 80 3E */	lis r3, lbl_803D8D60@ha
/* 80007C54 00004BB4  38 03 8D 60 */	addi r0, r3, lbl_803D8D60@l
/* 80007C58 00004BB8  90 1E 00 00 */	stw r0, 0(r30)
/* 80007C5C 00004BBC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80007C60 00004BC0  28 03 00 00 */	cmplwi r3, 0
/* 80007C64 00004BC4  41 82 00 0C */	beq lbl_80007C70
/* 80007C68 00004BC8  38 80 00 01 */	li r4, 1
/* 80007C6C 00004BCC  48 00 00 55 */	bl sub_80007cc0
lbl_80007C70:
/* 80007C70 00004BD0  28 1E 00 00 */	cmplwi r30, 0
/* 80007C74 00004BD4  41 82 00 20 */	beq lbl_80007C94
/* 80007C78 00004BD8  3C 60 80 3E */	lis r3, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 80007C7C 00004BDC  38 03 8D 78 */	addi r0, r3, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 80007C80 00004BE0  90 1E 00 00 */	stw r0, 0(r30)
/* 80007C84 00004BE4  41 82 00 10 */	beq lbl_80007C94
/* 80007C88 00004BE8  3C 60 80 3E */	lis r3, __vt__4IObj@ha
/* 80007C8C 00004BEC  38 03 8D 6C */	addi r0, r3, __vt__4IObj@l
/* 80007C90 00004BF0  90 1E 00 00 */	stw r0, 0(r30)
lbl_80007C94:
/* 80007C94 00004BF4  7F E0 07 35 */	extsh. r0, r31
/* 80007C98 00004BF8  40 81 00 0C */	ble lbl_80007CA4
/* 80007C9C 00004BFC  7F C3 F3 78 */	mr r3, r30
/* 80007CA0 00004C00  48 30 DC 91 */	bl Free__7CMemoryFPCv
lbl_80007CA4:
/* 80007CA4 00004C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007CA8 00004C08  7F C3 F3 78 */	mr r3, r30
/* 80007CAC 00004C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80007CB0 00004C10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80007CB4 00004C14  7C 08 03 A6 */	mtlr r0
/* 80007CB8 00004C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80007CBC 00004C1C  4E 80 00 20 */	blr

.global sub_80007cc0
sub_80007cc0:
/* 80007CC0 00004C20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80007CC4 00004C24  7C 08 02 A6 */	mflr r0
/* 80007CC8 00004C28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80007CCC 00004C2C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80007CD0 00004C30  7C 9F 23 78 */	mr r31, r4
/* 80007CD4 00004C34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80007CD8 00004C38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80007CDC 00004C3C  41 82 00 E0 */	beq lbl_80007DBC
/* 80007CE0 00004C40  34 1E 00 80 */	addic. r0, r30, 0x80
/* 80007CE4 00004C44  41 82 00 28 */	beq lbl_80007D0C
/* 80007CE8 00004C48  88 1E 00 88 */	lbz r0, 0x88(r30)
/* 80007CEC 00004C4C  28 00 00 00 */	cmplwi r0, 0
/* 80007CF0 00004C50  41 82 00 14 */	beq lbl_80007D04
/* 80007CF4 00004C54  34 7E 00 80 */	addic. r3, r30, 0x80
/* 80007CF8 00004C58  41 82 00 0C */	beq lbl_80007D04
/* 80007CFC 00004C5C  38 80 00 00 */	li r4, 0
/* 80007D00 00004C60  48 33 91 41 */	bl __dt__6CTokenFv
lbl_80007D04:
/* 80007D04 00004C64  38 00 00 00 */	li r0, 0
/* 80007D08 00004C68  98 1E 00 88 */	stb r0, 0x88(r30)
lbl_80007D0C:
/* 80007D0C 00004C6C  34 1E 00 30 */	addic. r0, r30, 0x30
/* 80007D10 00004C70  41 82 00 0C */	beq lbl_80007D1C
/* 80007D14 00004C74  38 00 00 00 */	li r0, 0
/* 80007D18 00004C78  98 1E 00 7C */	stb r0, 0x7c(r30)
lbl_80007D1C:
/* 80007D1C 00004C7C  34 1E 00 1C */	addic. r0, r30, 0x1c
/* 80007D20 00004C80  41 82 00 44 */	beq lbl_80007D64
/* 80007D24 00004C84  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80007D28 00004C88  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80007D2C 00004C8C  54 00 18 38 */	slwi r0, r0, 3
/* 80007D30 00004C90  7C 03 02 14 */	add r0, r3, r0
/* 80007D34 00004C94  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80007D38 00004C98  7C 64 1B 78 */	mr r4, r3
/* 80007D3C 00004C9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80007D40 00004CA0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80007D44 00004CA4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80007D48 00004CA8  48 00 00 08 */	b lbl_80007D50
lbl_80007D4C:
/* 80007D4C 00004CAC  38 84 00 08 */	addi r4, r4, 8
lbl_80007D50:
/* 80007D50 00004CB0  7C 04 00 40 */	cmplw r4, r0
/* 80007D54 00004CB4  40 82 FF F8 */	bne lbl_80007D4C
/* 80007D58 00004CB8  28 03 00 00 */	cmplwi r3, 0
/* 80007D5C 00004CBC  41 82 00 08 */	beq lbl_80007D64
/* 80007D60 00004CC0  48 30 DB D1 */	bl Free__7CMemoryFPCv
lbl_80007D64:
/* 80007D64 00004CC4  34 1E 00 0C */	addic. r0, r30, 0xc
/* 80007D68 00004CC8  41 82 00 44 */	beq lbl_80007DAC
/* 80007D6C 00004CCC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80007D70 00004CD0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80007D74 00004CD4  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80007D78 00004CD8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80007D7C 00004CDC  7C 64 1B 78 */	mr r4, r3
/* 80007D80 00004CE0  7C 03 02 14 */	add r0, r3, r0
/* 80007D84 00004CE4  90 61 00 08 */	stw r3, 8(r1)
/* 80007D88 00004CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007D8C 00004CEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80007D90 00004CF0  48 00 00 08 */	b lbl_80007D98
lbl_80007D94:
/* 80007D94 00004CF4  38 84 00 24 */	addi r4, r4, 0x24
lbl_80007D98:
/* 80007D98 00004CF8  7C 04 00 40 */	cmplw r4, r0
/* 80007D9C 00004CFC  40 82 FF F8 */	bne lbl_80007D94
/* 80007DA0 00004D00  28 03 00 00 */	cmplwi r3, 0
/* 80007DA4 00004D04  41 82 00 08 */	beq lbl_80007DAC
/* 80007DA8 00004D08  48 30 DB 89 */	bl Free__7CMemoryFPCv
lbl_80007DAC:
/* 80007DAC 00004D0C  7F E0 07 35 */	extsh. r0, r31
/* 80007DB0 00004D10  40 81 00 0C */	ble lbl_80007DBC
/* 80007DB4 00004D14  7F C3 F3 78 */	mr r3, r30
/* 80007DB8 00004D18  48 30 DB 79 */	bl Free__7CMemoryFPCv
lbl_80007DBC:
/* 80007DBC 00004D1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80007DC0 00004D20  7F C3 F3 78 */	mr r3, r30
/* 80007DC4 00004D24  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80007DC8 00004D28  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80007DCC 00004D2C  7C 08 03 A6 */	mtlr r0
/* 80007DD0 00004D30  38 21 00 30 */	addi r1, r1, 0x30
/* 80007DD4 00004D34  4E 80 00 20 */	blr

.global sub_80007dd8
sub_80007dd8:
/* 80007DD8 00004D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007DDC 00004D3C  7C 08 02 A6 */	mflr r0
/* 80007DE0 00004D40  3C A0 80 3D */	lis r5, lbl_803CBE74@ha
/* 80007DE4 00004D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007DE8 00004D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80007DEC 00004D4C  7C 9F 23 78 */	mr r31, r4
/* 80007DF0 00004D50  93 C1 00 08 */	stw r30, 8(r1)
/* 80007DF4 00004D54  7C 7E 1B 78 */	mr r30, r3
/* 80007DF8 00004D58  38 65 BE 74 */	addi r3, r5, lbl_803CBE74@l
/* 80007DFC 00004D5C  38 A0 00 00 */	li r5, 0
/* 80007E00 00004D60  38 83 00 37 */	addi r4, r3, 0x37
/* 80007E04 00004D64  38 60 00 08 */	li r3, 8
/* 80007E08 00004D68  48 30 DA 65 */	bl __nw__FUlPCcPCc
/* 80007E0C 00004D6C  28 03 00 00 */	cmplwi r3, 0
/* 80007E10 00004D70  41 82 00 2C */	beq lbl_80007E3C
/* 80007E14 00004D74  3C 80 80 3E */	lis r4, __vt__4IObj@ha
/* 80007E18 00004D78  3C A0 80 3E */	lis r5, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 80007E1C 00004D7C  38 04 8D 6C */	addi r0, r4, __vt__4IObj@l
/* 80007E20 00004D80  3C 80 80 3E */	lis r4, lbl_803D8D60@ha
/* 80007E24 00004D84  90 03 00 00 */	stw r0, 0(r3)
/* 80007E28 00004D88  38 A5 8D 78 */	addi r5, r5, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 80007E2C 00004D8C  38 04 8D 60 */	addi r0, r4, lbl_803D8D60@l
/* 80007E30 00004D90  90 A3 00 00 */	stw r5, 0(r3)
/* 80007E34 00004D94  93 E3 00 04 */	stw r31, 4(r3)
/* 80007E38 00004D98  90 03 00 00 */	stw r0, 0(r3)
lbl_80007E3C:
/* 80007E3C 00004D9C  7C 03 00 D0 */	neg r0, r3
/* 80007E40 00004DA0  7C 00 1B 78 */	or r0, r0, r3
/* 80007E44 00004DA4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80007E48 00004DA8  98 1E 00 00 */	stb r0, 0(r30)
/* 80007E4C 00004DAC  90 7E 00 04 */	stw r3, 4(r30)
/* 80007E50 00004DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80007E54 00004DB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80007E58 00004DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007E5C 00004DBC  7C 08 03 A6 */	mtlr r0
/* 80007E60 00004DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80007E64 00004DC4  4E 80 00 20 */	blr

.global ShutdownSubsystems__5CMainFv
ShutdownSubsystems__5CMainFv:
/* 80007E68 00004DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007E6C 00004DCC  7C 08 02 A6 */	mflr r0
/* 80007E70 00004DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007E74 00004DD4  48 36 4E E5 */	bl sub_8036cd58
/* 80007E78 00004DD8  48 10 F9 8D */	bl ShutDown__13CDecalManagerFv
/* 80007E7C 00004DDC  48 31 72 E1 */	bl ShutDown__11CElementGenFv
/* 80007E80 00004DE0  48 02 62 E9 */	bl FreeCache__9CAnimDataFv
/* 80007E84 00004DE4  48 37 C7 51 */	bl OSGetCurrentThread
/* 80007E88 00004DE8  80 83 03 08 */	lwz r4, 0x308(r3)
/* 80007E8C 00004DEC  80 A3 03 04 */	lwz r5, 0x304(r3)
/* 80007E90 00004DF0  38 04 03 FF */	addi r0, r4, 0x3ff
/* 80007E94 00004DF4  54 04 00 2A */	rlwinm r4, r0, 0, 0, 0x15
/* 80007E98 00004DF8  38 65 E0 00 */	addi r3, r5, -8192
/* 80007E9C 00004DFC  38 84 04 00 */	addi r4, r4, 0x400
/* 80007EA0 00004E00  38 03 00 03 */	addi r0, r3, 3
/* 80007EA4 00004E04  7C 04 00 50 */	subf r0, r4, r0
/* 80007EA8 00004E08  54 00 F0 BE */	srwi r0, r0, 2
/* 80007EAC 00004E0C  7C 09 03 A6 */	mtctr r0
/* 80007EB0 00004E10  7C 04 18 40 */	cmplw r4, r3
/* 80007EB4 00004E14  40 80 00 1C */	bge lbl_80007ED0
lbl_80007EB8:
/* 80007EB8 00004E18  80 64 00 00 */	lwz r3, 0(r4)
/* 80007EBC 00004E1C  3C 03 8C C9 */	addis r0, r3, 0x8cc9
/* 80007EC0 00004E20  28 00 D0 0D */	cmplwi r0, 0xd00d
/* 80007EC4 00004E24  40 82 00 0C */	bne lbl_80007ED0
/* 80007EC8 00004E28  38 84 00 04 */	addi r4, r4, 4
/* 80007ECC 00004E2C  42 00 FF EC */	bdnz lbl_80007EB8
lbl_80007ED0:
/* 80007ED0 00004E30  38 05 E0 00 */	addi r0, r5, -8192
/* 80007ED4 00004E34  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 80007ED8 00004E38  7C 84 00 50 */	subf r4, r4, r0
/* 80007EDC 00004E3C  38 84 20 00 */	addi r4, r4, 0x2000
/* 80007EE0 00004E40  38 63 BE 74 */	addi r3, r3, lbl_803CBE74@l
/* 80007EE4 00004E44  38 63 01 55 */	addi r3, r3, 0x155
/* 80007EE8 00004E48  54 85 B2 BE */	srwi r5, r4, 0xa
/* 80007EEC 00004E4C  4C C6 31 82 */	crclr 6
/* 80007EF0 00004E50  48 37 7A BD */	bl OSReport
/* 80007EF4 00004E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007EF8 00004E58  7C 08 03 A6 */	mtlr r0
/* 80007EFC 00004E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80007F00 00004E60  4E 80 00 20 */	blr

.global InitializeSubsystems__5CMainFv
InitializeSubsystems__5CMainFv:
/* 80007F04 00004E64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007F08 00004E68  7C 08 02 A6 */	mflr r0
/* 80007F0C 00004E6C  38 6D A0 9C */	addi r3, r13, sARAMMemArray@sda21
/* 80007F10 00004E70  38 80 00 02 */	li r4, 2
/* 80007F14 00004E74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80007F18 00004E78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80007F1C 00004E7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80007F20 00004E80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80007F24 00004E84  48 36 5B CD */	bl ARInit
/* 80007F28 00004E88  3C 60 00 60 */	lis r3, 0x005FC000@ha
/* 80007F2C 00004E8C  38 63 C0 00 */	addi r3, r3, 0x005FC000@l
/* 80007F30 00004E90  48 36 5A E5 */	bl ARAlloc
/* 80007F34 00004E94  80 6D 9D 60 */	lwz r3, lbl_805A8920@sda21(r13)
/* 80007F38 00004E98  3C 63 00 60 */	addis r3, r3, 0x60
/* 80007F3C 00004E9C  38 03 C0 00 */	addi r0, r3, -16384
/* 80007F40 00004EA0  90 0D 9D 60 */	stw r0, lbl_805A8920@sda21(r13)
/* 80007F44 00004EA4  48 36 76 BD */	bl ARQInit
/* 80007F48 00004EA8  48 37 C6 8D */	bl OSGetCurrentThread
/* 80007F4C 00004EAC  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80007F50 00004EB0  7C 7F 1B 78 */	mr r31, r3
/* 80007F54 00004EB4  38 64 BE 74 */	addi r3, r4, lbl_803CBE74@l
/* 80007F58 00004EB8  38 63 01 72 */	addi r3, r3, 0x172
/* 80007F5C 00004EBC  4C C6 31 82 */	crclr 6
/* 80007F60 00004EC0  48 38 5F 51 */	bl printf
/* 80007F64 00004EC4  80 9F 03 08 */	lwz r4, 0x308(r31)
/* 80007F68 00004EC8  38 60 00 03 */	li r3, 3
/* 80007F6C 00004ECC  83 BF 03 04 */	lwz r29, 0x304(r31)
/* 80007F70 00004ED0  38 A0 04 00 */	li r5, 0x400
/* 80007F74 00004ED4  38 04 03 FF */	addi r0, r4, 0x3ff
/* 80007F78 00004ED8  38 C0 00 00 */	li r6, 0
/* 80007F7C 00004EDC  54 1E 00 2A */	rlwinm r30, r0, 0, 0, 0x15
/* 80007F80 00004EE0  7F C4 F3 78 */	mr r4, r30
/* 80007F84 00004EE4  48 37 AB 39 */	bl OSProtectRange
/* 80007F88 00004EE8  38 9D E0 00 */	addi r4, r29, -8192
/* 80007F8C 00004EEC  38 DE 04 00 */	addi r6, r30, 0x400
/* 80007F90 00004EF0  38 64 00 03 */	addi r3, r4, 3
/* 80007F94 00004EF4  3C A0 73 38 */	lis r5, 0x7337D00D@ha
/* 80007F98 00004EF8  7C 66 18 50 */	subf r3, r6, r3
/* 80007F9C 00004EFC  7C 06 20 40 */	cmplw r6, r4
/* 80007FA0 00004F00  38 A5 D0 0D */	addi r5, r5, 0x7337D00D@l
/* 80007FA4 00004F04  54 63 F0 BE */	srwi r3, r3, 2
/* 80007FA8 00004F08  40 80 00 50 */	bge lbl_80007FF8
/* 80007FAC 00004F0C  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 80007FB0 00004F10  7C 09 03 A6 */	mtctr r0
/* 80007FB4 00004F14  41 82 00 34 */	beq lbl_80007FE8
lbl_80007FB8:
/* 80007FB8 00004F18  90 A6 00 00 */	stw r5, 0(r6)
/* 80007FBC 00004F1C  90 A6 00 04 */	stw r5, 4(r6)
/* 80007FC0 00004F20  90 A6 00 08 */	stw r5, 8(r6)
/* 80007FC4 00004F24  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80007FC8 00004F28  90 A6 00 10 */	stw r5, 0x10(r6)
/* 80007FCC 00004F2C  90 A6 00 14 */	stw r5, 0x14(r6)
/* 80007FD0 00004F30  90 A6 00 18 */	stw r5, 0x18(r6)
/* 80007FD4 00004F34  90 A6 00 1C */	stw r5, 0x1c(r6)
/* 80007FD8 00004F38  38 C6 00 20 */	addi r6, r6, 0x20
/* 80007FDC 00004F3C  42 00 FF DC */	bdnz lbl_80007FB8
/* 80007FE0 00004F40  70 63 00 07 */	andi. r3, r3, 7
/* 80007FE4 00004F44  41 82 00 14 */	beq lbl_80007FF8
lbl_80007FE8:
/* 80007FE8 00004F48  7C 69 03 A6 */	mtctr r3
lbl_80007FEC:
/* 80007FEC 00004F4C  90 A6 00 00 */	stw r5, 0(r6)
/* 80007FF0 00004F50  38 C6 00 04 */	addi r6, r6, 4
/* 80007FF4 00004F54  42 00 FF F8 */	bdnz lbl_80007FEC
lbl_80007FF8:
/* 80007FF8 00004F58  38 7E 04 00 */	addi r3, r30, 0x400
/* 80007FFC 00004F5C  7C 83 20 50 */	subf r4, r3, r4
lbl_80008000:
/* 80008000 00004F60  48 37 6A B1 */	bl DCFlushRange
/* 80008004 00004F64  3C 60 80 3D */	lis r3, lbl_803CBE74@ha
/* 80008008 00004F68  80 9F 03 04 */	lwz r4, 0x304(r31)
/* 8000800C 00004F6C  38 63 BE 74 */	addi r3, r3, lbl_803CBE74@l
/* 80008010 00004F70  80 BF 03 08 */	lwz r5, 0x308(r31)
/* 80008014 00004F74  38 63 01 88 */	addi r3, r3, 0x188
/* 80008018 00004F78  4C C6 31 82 */	crclr 6
/* 8000801C 00004F7C  48 38 5E 95 */	bl printf
/* 80008020 00004F80  48 31 71 49 */	bl Initialize__11CElementGenFv
/* 80008024 00004F84  48 02 61 C9 */	bl InitializeCache__9CAnimDataFv
/* 80008028 00004F88  38 60 08 00 */	li r3, 0x800
/* 8000802C 00004F8C  48 33 CC E9 */	bl Initialize__12CARAMManagerFUi
/* 80008030 00004F90  48 10 F9 25 */	bl Initialize__13CDecalManagerFv
/* 80008034 00004F94  48 36 4D 45 */	bl sub_8036cd78
/* 80008038 00004F98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000803C 00004F9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80008040 00004FA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80008044 00004FA4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80008048 00004FA8  7C 08 03 A6 */	mtlr r0
/* 8000804C 00004FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80008050 00004FB0  4E 80 00 20 */	blr

.global __dt__5CMainFv
__dt__5CMainFv:
/* 80008054 00004FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008058 00004FB8  7C 08 02 A6 */	mflr r0
/* 8000805C 00004FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008060 00004FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80008064 00004FC4  7C 9F 23 78 */	mr r31, r4
/* 80008068 00004FC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8000806C 00004FCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80008070 00004FD0  41 82 01 78 */	beq lbl_800081E8
/* 80008074 00004FD4  34 1E 01 30 */	addic. r0, r30, 0x130
/* 80008078 00004FD8  41 82 00 58 */	beq lbl_800080D0
/* 8000807C 00004FDC  80 BE 01 30 */	lwz r5, 0x130(r30)
/* 80008080 00004FE0  38 60 00 00 */	li r3, 0
/* 80008084 00004FE4  2C 05 00 00 */	cmpwi r5, 0
/* 80008088 00004FE8  40 81 00 40 */	ble lbl_800080C8
/* 8000808C 00004FEC  2C 05 00 08 */	cmpwi r5, 8
/* 80008090 00004FF0  38 85 FF F8 */	addi r4, r5, -8
/* 80008094 00004FF4  40 81 00 20 */	ble lbl_800080B4
/* 80008098 00004FF8  38 04 00 07 */	addi r0, r4, 7
/* 8000809C 00004FFC  54 00 E8 FE */	srwi r0, r0, 3
/* 800080A0 00005000  7C 09 03 A6 */	mtctr r0
/* 800080A4 00005004  2C 04 00 00 */	cmpwi r4, 0
/* 800080A8 00005008  40 81 00 0C */	ble lbl_800080B4
lbl_800080AC:
/* 800080AC 0000500C  38 63 00 08 */	addi r3, r3, 8
/* 800080B0 00005010  42 00 FF FC */	bdnz lbl_800080AC
lbl_800080B4:
/* 800080B4 00005014  7C 03 28 50 */	subf r0, r3, r5
/* 800080B8 00005018  7C 09 03 A6 */	mtctr r0
/* 800080BC 0000501C  7C 03 28 00 */	cmpw r3, r5
/* 800080C0 00005020  40 80 00 08 */	bge lbl_800080C8
lbl_800080C4:
/* 800080C4 00005024  42 00 00 00 */	bdnz lbl_800080C4
lbl_800080C8:
/* 800080C8 00005028  38 00 00 00 */	li r0, 0
/* 800080CC 0000502C  90 1E 01 30 */	stw r0, 0x130(r30)
lbl_800080D0:
/* 800080D0 00005030  34 1E 01 04 */	addic. r0, r30, 0x104
/* 800080D4 00005034  41 82 00 60 */	beq lbl_80008134
/* 800080D8 00005038  34 1E 01 04 */	addic. r0, r30, 0x104
/* 800080DC 0000503C  41 82 00 58 */	beq lbl_80008134
/* 800080E0 00005040  80 BE 01 04 */	lwz r5, 0x104(r30)
/* 800080E4 00005044  38 60 00 00 */	li r3, 0
/* 800080E8 00005048  2C 05 00 00 */	cmpwi r5, 0
/* 800080EC 0000504C  40 81 00 40 */	ble lbl_8000812C
/* 800080F0 00005050  2C 05 00 08 */	cmpwi r5, 8
/* 800080F4 00005054  38 85 FF F8 */	addi r4, r5, -8
/* 800080F8 00005058  40 81 00 20 */	ble lbl_80008118
/* 800080FC 0000505C  38 04 00 07 */	addi r0, r4, 7
/* 80008100 00005060  54 00 E8 FE */	srwi r0, r0, 3
/* 80008104 00005064  7C 09 03 A6 */	mtctr r0
/* 80008108 00005068  2C 04 00 00 */	cmpwi r4, 0
/* 8000810C 0000506C  40 81 00 0C */	ble lbl_80008118
lbl_80008110:
/* 80008110 00005070  38 63 00 08 */	addi r3, r3, 8
/* 80008114 00005074  42 00 FF FC */	bdnz lbl_80008110
lbl_80008118:
/* 80008118 00005078  7C 03 28 50 */	subf r0, r3, r5
/* 8000811C 0000507C  7C 09 03 A6 */	mtctr r0
/* 80008120 00005080  7C 03 28 00 */	cmpw r3, r5
/* 80008124 00005084  40 80 00 08 */	bge lbl_8000812C
lbl_80008128:
/* 80008128 00005088  42 00 00 00 */	bdnz lbl_80008128
lbl_8000812C:
/* 8000812C 0000508C  38 00 00 00 */	li r0, 0
/* 80008130 00005090  90 1E 01 04 */	stw r0, 0x104(r30)
lbl_80008134:
/* 80008134 00005094  34 1E 00 F0 */	addic. r0, r30, 0xf0
/* 80008138 00005098  41 82 00 60 */	beq lbl_80008198
/* 8000813C 0000509C  34 1E 00 F0 */	addic. r0, r30, 0xf0
/* 80008140 000050A0  41 82 00 58 */	beq lbl_80008198
/* 80008144 000050A4  80 BE 00 F0 */	lwz r5, 0xf0(r30)
/* 80008148 000050A8  38 60 00 00 */	li r3, 0
/* 8000814C 000050AC  2C 05 00 00 */	cmpwi r5, 0
/* 80008150 000050B0  40 81 00 40 */	ble lbl_80008190
/* 80008154 000050B4  2C 05 00 08 */	cmpwi r5, 8
/* 80008158 000050B8  38 85 FF F8 */	addi r4, r5, -8
/* 8000815C 000050BC  40 81 00 20 */	ble lbl_8000817C
/* 80008160 000050C0  38 04 00 07 */	addi r0, r4, 7
/* 80008164 000050C4  54 00 E8 FE */	srwi r0, r0, 3
/* 80008168 000050C8  7C 09 03 A6 */	mtctr r0
/* 8000816C 000050CC  2C 04 00 00 */	cmpwi r4, 0
/* 80008170 000050D0  40 81 00 0C */	ble lbl_8000817C
lbl_80008174:
/* 80008174 000050D4  38 63 00 08 */	addi r3, r3, 8
/* 80008178 000050D8  42 00 FF FC */	bdnz lbl_80008174
lbl_8000817C:
/* 8000817C 000050DC  7C 03 28 50 */	subf r0, r3, r5
/* 80008180 000050E0  7C 09 03 A6 */	mtctr r0
/* 80008184 000050E4  7C 03 28 00 */	cmpw r3, r5
/* 80008188 000050E8  40 80 00 08 */	bge lbl_80008190
lbl_8000818C:
/* 8000818C 000050EC  42 00 00 00 */	bdnz lbl_8000818C
lbl_80008190:
/* 80008190 000050F0  38 00 00 00 */	li r0, 0
/* 80008194 000050F4  90 1E 00 F0 */	stw r0, 0xf0(r30)
lbl_80008198:
/* 80008198 000050F8  38 7E 00 70 */	addi r3, r30, 0x70
/* 8000819C 000050FC  38 80 FF FF */	li r4, -1
/* 800081A0 00005100  48 02 EA 11 */	bl sub_80036bb0
/* 800081A4 00005104  34 1E 00 6E */	addic. r0, r30, 0x6e
/* 800081A8 00005108  41 82 00 18 */	beq lbl_800081C0
/* 800081AC 0000510C  88 0D A7 70 */	lbz r0, lbl_805A9330@sda21(r13)
/* 800081B0 00005110  28 00 00 01 */	cmplwi r0, 1
/* 800081B4 00005114  40 82 00 0C */	bne lbl_800081C0
/* 800081B8 00005118  38 00 00 00 */	li r0, 0
/* 800081BC 0000511C  98 0D A7 70 */	stb r0, lbl_805A9330@sda21(r13)
lbl_800081C0:
/* 800081C0 00005120  38 7E 00 6D */	addi r3, r30, 0x6d
/* 800081C4 00005124  38 80 FF FF */	li r4, -1
/* 800081C8 00005128  48 30 D9 ED */	bl __dt__10CMemorySysFv
/* 800081CC 0000512C  7F C3 F3 78 */	mr r3, r30
/* 800081D0 00005130  38 80 FF FF */	li r4, -1
/* 800081D4 00005134  48 2C E4 71 */	bl __dt__10COsContextFv
/* 800081D8 00005138  7F E0 07 35 */	extsh. r0, r31
/* 800081DC 0000513C  40 81 00 0C */	ble lbl_800081E8
/* 800081E0 00005140  7F C3 F3 78 */	mr r3, r30
/* 800081E4 00005144  48 30 D7 4D */	bl Free__7CMemoryFPCv
lbl_800081E8:
/* 800081E8 00005148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800081EC 0000514C  7F C3 F3 78 */	mr r3, r30
/* 800081F0 00005150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800081F4 00005154  83 C1 00 08 */	lwz r30, 8(r1)
/* 800081F8 00005158  7C 08 03 A6 */	mtlr r0
/* 800081FC 0000515C  38 21 00 10 */	addi r1, r1, 0x10
/* 80008200 00005160  4E 80 00 20 */	blr

.global __ct__5CMainFv
__ct__5CMainFv:
/* 80008204 00005164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008208 00005168  7C 08 02 A6 */	mflr r0
/* 8000820C 0000516C  38 80 00 01 */	li r4, 1
/* 80008210 00005170  38 A0 00 01 */	li r5, 1
/* 80008214 00005174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008218 00005178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000821C 0000517C  7C 7F 1B 78 */	mr r31, r3
/* 80008220 00005180  93 C1 00 08 */	stw r30, 8(r1)
/* 80008224 00005184  48 2C E4 5D */	bl __ct__10COsContextFbb
/* 80008228 00005188  7F E4 FB 78 */	mr r4, r31
/* 8000822C 0000518C  38 7F 00 6C */	addi r3, r31, 0x6c
/* 80008230 00005190  48 00 03 55 */	bl sub_80008584
/* 80008234 00005194  48 30 D9 75 */	bl GetGameAllocator__10CMemorySysFv
/* 80008238 00005198  7C 7E 1B 78 */	mr r30, r3
/* 8000823C 0000519C  7F E3 FB 78 */	mr r3, r31
/* 80008240 000051A0  48 00 01 A5 */	bl sub_800083e4
/* 80008244 000051A4  7C 64 1B 78 */	mr r4, r3
/* 80008248 000051A8  7F C5 F3 78 */	mr r5, r30
/* 8000824C 000051AC  38 7F 00 6D */	addi r3, r31, 0x6d
/* 80008250 000051B0  48 30 D9 B5 */	bl __ct__10CMemorySysFR10COsContextR10IAllocator
/* 80008254 000051B4  88 0D A7 70 */	lbz r0, lbl_805A9330@sda21(r13)
/* 80008258 000051B8  28 00 00 01 */	cmplwi r0, 1
/* 8000825C 000051BC  41 82 00 0C */	beq lbl_80008268
/* 80008260 000051C0  38 00 00 01 */	li r0, 1
/* 80008264 000051C4  98 0D A7 70 */	stb r0, lbl_805A9330@sda21(r13)
lbl_80008268:
/* 80008268 000051C8  38 7F 00 70 */	addi r3, r31, 0x70
/* 8000826C 000051CC  48 02 EA 35 */	bl __ct__7CTweaksFv
/* 80008270 000051D0  C8 22 80 28 */	lfd f1, lbl_805A9D48@sda21(r2)
/* 80008274 000051D4  38 80 00 00 */	li r4, 0
/* 80008278 000051D8  C0 02 80 34 */	lfs f0, lbl_805A9D54@sda21(r2)
/* 8000827C 000051DC  38 60 00 05 */	li r3, 5
/* 80008280 000051E0  D8 3F 00 E8 */	stfd f1, 0xe8(r31)
/* 80008284 000051E4  34 BF 01 34 */	addic. r5, r31, 0x134
/* 80008288 000051E8  38 00 00 0A */	li r0, 0xa
/* 8000828C 000051EC  90 9F 00 F0 */	stw r4, 0xf0(r31)
/* 80008290 000051F0  90 9F 01 04 */	stw r4, 0x104(r31)
/* 80008294 000051F4  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 80008298 000051F8  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 8000829C 000051FC  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 800082A0 00005200  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 800082A4 00005204  90 9F 01 28 */	stw r4, 0x128(r31)
/* 800082A8 00005208  90 7F 01 2C */	stw r3, 0x12c(r31)
/* 800082AC 0000520C  90 1F 01 30 */	stw r0, 0x130(r31)
/* 800082B0 00005210  41 82 00 0C */	beq lbl_800082BC
/* 800082B4 00005214  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 800082B8 00005218  90 05 00 00 */	stw r0, 0(r5)
lbl_800082BC:
/* 800082BC 0000521C  34 A5 00 04 */	addic. r5, r5, 4
/* 800082C0 00005220  41 82 00 0C */	beq lbl_800082CC
/* 800082C4 00005224  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 800082C8 00005228  90 05 00 00 */	stw r0, 0(r5)
lbl_800082CC:
/* 800082CC 0000522C  34 A5 00 04 */	addic. r5, r5, 4
/* 800082D0 00005230  41 82 00 0C */	beq lbl_800082DC
/* 800082D4 00005234  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 800082D8 00005238  90 05 00 00 */	stw r0, 0(r5)
lbl_800082DC:
/* 800082DC 0000523C  34 A5 00 04 */	addic. r5, r5, 4
/* 800082E0 00005240  41 82 00 0C */	beq lbl_800082EC
/* 800082E4 00005244  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 800082E8 00005248  90 05 00 00 */	stw r0, 0(r5)
lbl_800082EC:
/* 800082EC 0000524C  34 A5 00 04 */	addic. r5, r5, 4
/* 800082F0 00005250  41 82 00 0C */	beq lbl_800082FC
/* 800082F4 00005254  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 800082F8 00005258  90 05 00 00 */	stw r0, 0(r5)
lbl_800082FC:
/* 800082FC 0000525C  34 A5 00 04 */	addic. r5, r5, 4
/* 80008300 00005260  41 82 00 0C */	beq lbl_8000830C
/* 80008304 00005264  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 80008308 00005268  90 05 00 00 */	stw r0, 0(r5)
lbl_8000830C:
/* 8000830C 0000526C  34 A5 00 04 */	addic. r5, r5, 4
/* 80008310 00005270  41 82 00 0C */	beq lbl_8000831C
/* 80008314 00005274  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 80008318 00005278  90 05 00 00 */	stw r0, 0(r5)
lbl_8000831C:
/* 8000831C 0000527C  34 A5 00 04 */	addic. r5, r5, 4
/* 80008320 00005280  41 82 00 0C */	beq lbl_8000832C
/* 80008324 00005284  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 80008328 00005288  90 05 00 00 */	stw r0, 0(r5)
lbl_8000832C:
/* 8000832C 0000528C  34 A5 00 04 */	addic. r5, r5, 4
/* 80008330 00005290  41 82 00 0C */	beq lbl_8000833C
/* 80008334 00005294  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 80008338 00005298  90 05 00 00 */	stw r0, 0(r5)
lbl_8000833C:
/* 8000833C 0000529C  34 A5 00 04 */	addic. r5, r5, 4
/* 80008340 000052A0  41 82 00 0C */	beq lbl_8000834C
/* 80008344 000052A4  80 0D 80 04 */	lwz r0, lbl_805A6BC4@sda21(r13)
/* 80008348 000052A8  90 05 00 00 */	stw r0, 0(r5)
lbl_8000834C:
/* 8000834C 000052AC  38 80 00 00 */	li r4, 0
/* 80008350 000052B0  7F E3 FB 78 */	mr r3, r31
/* 80008354 000052B4  90 9F 01 5C */	stw r4, 0x15c(r31)
/* 80008358 000052B8  88 1F 01 60 */	lbz r0, 0x160(r31)
/* 8000835C 000052BC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80008360 000052C0  98 1F 01 60 */	stb r0, 0x160(r31)
/* 80008364 000052C4  88 1F 01 60 */	lbz r0, 0x160(r31)
/* 80008368 000052C8  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8000836C 000052CC  98 1F 01 60 */	stb r0, 0x160(r31)
/* 80008370 000052D0  88 1F 01 60 */	lbz r0, 0x160(r31)
/* 80008374 000052D4  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80008378 000052D8  98 1F 01 60 */	stb r0, 0x160(r31)
/* 8000837C 000052DC  88 1F 01 60 */	lbz r0, 0x160(r31)
/* 80008380 000052E0  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80008384 000052E4  98 1F 01 60 */	stb r0, 0x160(r31)
/* 80008388 000052E8  88 1F 01 60 */	lbz r0, 0x160(r31)
/* 8000838C 000052EC  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80008390 000052F0  98 1F 01 60 */	stb r0, 0x160(r31)
/* 80008394 000052F4  88 1F 01 60 */	lbz r0, 0x160(r31)
/* 80008398 000052F8  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8000839C 000052FC  98 1F 01 60 */	stb r0, 0x160(r31)
/* 800083A0 00005300  88 1F 01 60 */	lbz r0, 0x160(r31)
/* 800083A4 00005304  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 800083A8 00005308  98 1F 01 60 */	stb r0, 0x160(r31)
/* 800083AC 0000530C  88 1F 01 60 */	lbz r0, 0x160(r31)
/* 800083B0 00005310  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 800083B4 00005314  98 1F 01 60 */	stb r0, 0x160(r31)
/* 800083B8 00005318  88 1F 01 61 */	lbz r0, 0x161(r31)
/* 800083BC 0000531C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 800083C0 00005320  98 1F 01 61 */	stb r0, 0x161(r31)
/* 800083C4 00005324  90 9F 01 64 */	stw r4, 0x164(r31)
/* 800083C8 00005328  93 ED A0 78 */	stw r31, gpMain@sda21(r13)
/* 800083CC 0000532C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800083D0 00005330  83 C1 00 08 */	lwz r30, 8(r1)
/* 800083D4 00005334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800083D8 00005338  7C 08 03 A6 */	mtlr r0
/* 800083DC 0000533C  38 21 00 10 */	addi r1, r1, 0x10
/* 800083E0 00005340  4E 80 00 20 */	blr

.global sub_800083e4
sub_800083e4:
/* 800083E4 00005344  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800083E8 00005348  7C 08 02 A6 */	mflr r0
/* 800083EC 0000534C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800083F0 00005350  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800083F4 00005354  7C 7F 1B 78 */	mr r31, r3
/* 800083F8 00005358  80 8D A0 94 */	lwz r4, lbl_805A8C54@sda21(r13)
/* 800083FC 0000535C  28 04 00 00 */	cmplwi r4, 0
/* 80008400 00005360  41 82 00 44 */	beq lbl_80008444
/* 80008404 00005364  38 61 00 08 */	addi r3, r1, 8
/* 80008408 00005368  38 A0 00 80 */	li r5, 0x80
/* 8000840C 0000536C  48 33 6D C1 */	bl __ct__15CMemoryInStreamFPCvUl
/* 80008410 00005370  38 61 00 08 */	addi r3, r1, 8
/* 80008414 00005374  38 80 00 01 */	li r4, 1
/* 80008418 00005378  48 33 69 21 */	bl ReadBits__12CInputStreamFUi
/* 8000841C 0000537C  7C 03 00 D0 */	neg r0, r3
/* 80008420 00005380  3C 80 80 3F */	lis r4, __vt__15CMemoryInStream@ha
/* 80008424 00005384  7C 00 1B 78 */	or r0, r0, r3
/* 80008428 00005388  38 61 00 08 */	addi r3, r1, 8
/* 8000842C 0000538C  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80008430 00005390  38 04 E3 98 */	addi r0, r4, __vt__15CMemoryInStream@l
/* 80008434 00005394  98 AD A0 98 */	stb r5, lbl_805A8C58@sda21(r13)
/* 80008438 00005398  38 80 00 00 */	li r4, 0
/* 8000843C 0000539C  90 01 00 08 */	stw r0, 8(r1)
/* 80008440 000053A0  48 33 6C 6D */	bl __dt__12CInputStreamFv
lbl_80008444:
/* 80008444 000053A4  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80008448 000053A8  7F E3 FB 78 */	mr r3, r31
/* 8000844C 000053AC  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80008450 000053B0  38 A0 00 00 */	li r5, 0
/* 80008454 000053B4  38 84 01 A8 */	addi r4, r4, 0x1a8
/* 80008458 000053B8  38 C0 00 00 */	li r6, 0
/* 8000845C 000053BC  38 E0 02 80 */	li r7, 0x280
/* 80008460 000053C0  39 00 01 E0 */	li r8, 0x1e0
/* 80008464 000053C4  39 20 00 01 */	li r9, 1
/* 80008468 000053C8  48 2C DF D5 */	bl OpenWindow__10COsContextFPCciiiib
/* 8000846C 000053CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80008470 000053D0  7F E3 FB 78 */	mr r3, r31
/* 80008474 000053D4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80008478 000053D8  7C 08 03 A6 */	mtlr r0
/* 8000847C 000053DC  38 21 00 40 */	addi r1, r1, 0x40
/* 80008480 000053E0  4E 80 00 20 */	blr

.global sub_80008484
sub_80008484:
/* 80008484 000053E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008488 000053E8  7C 08 02 A6 */	mflr r0
/* 8000848C 000053EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008490 000053F0  48 30 D4 A1 */	bl Free__7CMemoryFPCv
/* 80008494 000053F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008498 000053F8  7C 08 03 A6 */	mtlr r0
/* 8000849C 000053FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800084A0 00005400  4E 80 00 20 */	blr

.global sub_800084a4
sub_800084a4:
/* 800084A4 00005404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800084A8 00005408  7C 08 02 A6 */	mflr r0
/* 800084AC 0000540C  3C A0 80 3D */	lis r5, lbl_803CBE74@ha
/* 800084B0 00005410  3C 80 80 3D */	lis r4, lbl_803D6AA8@ha
/* 800084B4 00005414  90 01 00 24 */	stw r0, 0x24(r1)
/* 800084B8 00005418  38 A5 BE 74 */	addi r5, r5, lbl_803CBE74@l
/* 800084BC 0000541C  38 C4 6A A8 */	addi r6, r4, lbl_803D6AA8@l
/* 800084C0 00005420  38 80 FF FF */	li r4, -1
/* 800084C4 00005424  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800084C8 00005428  7C 7F 1B 78 */	mr r31, r3
/* 800084CC 0000542C  38 61 00 08 */	addi r3, r1, 8
/* 800084D0 00005430  38 A5 00 37 */	addi r5, r5, 0x37
/* 800084D4 00005434  48 2C DF 01 */	bl __ct__10CCallStackFUiPCcPCc
/* 800084D8 00005438  7C 67 1B 78 */	mr r7, r3
/* 800084DC 0000543C  7F E3 FB 78 */	mr r3, r31
/* 800084E0 00005440  38 80 00 00 */	li r4, 0
/* 800084E4 00005444  38 A0 00 01 */	li r5, 1
/* 800084E8 00005448  38 C0 00 00 */	li r6, 0
/* 800084EC 0000544C  48 30 D4 A9 */	bl Alloc__7CMemoryFUlQ210IAllocator5EHintQ210IAllocator6EScopeQ210IAllocator5ETypeRC10CCallStack
/* 800084F0 00005450  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800084F4 00005454  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800084F8 00005458  7C 08 03 A6 */	mtlr r0
/* 800084FC 0000545C  38 21 00 20 */	addi r1, r1, 0x20
/* 80008500 00005460  4E 80 00 20 */	blr

.global main
main:
/* 80008504 00005464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80008508 00005468  7C 08 02 A6 */	mflr r0
/* 8000850C 0000546C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80008510 00005470  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80008514 00005474  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80008518 00005478  7C 9E 23 78 */	mr r30, r4
/* 8000851C 0000547C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80008520 00005480  7C 7D 1B 78 */	mr r29, r3
.if version < 2
/* 80008524 00005484  38 60 00 01 */	li r3, 1
/* 80008528 00005488  48 36 C8 A5 */	bl DVDSetAutoFatalMessaging
.endif
/* 8000852C 0000548C  48 2C E3 D1 */	bl SetErrorHandlers
/* 80008530 00005490  3C 60 80 45 */	lis r3, sMainSpace@ha
/* 80008534 00005494  37 E3 75 60 */	addic. r31, r3, sMainSpace@l
/* 80008538 00005498  41 82 00 10 */	beq lbl_80008548
/* 8000853C 0000549C  7F E3 FB 78 */	mr r3, r31
/* 80008540 000054A0  4B FF FC C5 */	bl __ct__5CMainFv
/* 80008544 000054A4  7C 7F 1B 78 */	mr r31, r3
lbl_80008548:
/* 80008548 000054A8  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 8000854C 000054AC  7F A4 EB 78 */	mr r4, r29
/* 80008550 000054B0  7F C5 F3 78 */	mr r5, r30
/* 80008554 000054B4  4B FF C8 75 */	bl RsMain__5CMainFiPCPCc
/* 80008558 000054B8  7F E3 FB 78 */	mr r3, r31
/* 8000855C 000054BC  38 80 FF FF */	li r4, -1
/* 80008560 000054C0  4B FF FA F5 */	bl __dt__5CMainFv
/* 80008564 000054C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80008568 000054C8  38 60 00 00 */	li r3, 0
/* 8000856C 000054CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80008570 000054D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80008574 000054D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80008578 000054D8  7C 08 03 A6 */	mtlr r0
/* 8000857C 000054DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80008580 000054E0  4E 80 00 20 */	blr

.global sub_80008584
sub_80008584:
/* 80008584 000054E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80008588 000054E8  7C 08 02 A6 */	mflr r0
/* 8000858C 000054EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80008590 000054F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80008594 000054F4  7C 9F 23 78 */	mr r31, r4
/* 80008598 000054F8  38 81 00 08 */	addi r4, r1, 8
/* 8000859C 000054FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800085A0 00005500  7C 7E 1B 78 */	mr r30, r3
/* 800085A4 00005504  38 6D A0 94 */	addi r3, r13, lbl_805A8C54@sda21
/* 800085A8 00005508  48 37 AA 71 */	bl OSGetSaveRegion
/* 800085AC 0000550C  38 60 00 00 */	li r3, 0
/* 800085B0 00005510  38 80 00 00 */	li r4, 0
/* 800085B4 00005514  48 37 AA 59 */	bl OSSetSaveRegion
/* 800085B8 00005518  7F E3 FB 78 */	mr r3, r31
/* 800085BC 0000551C  38 80 00 80 */	li r4, 0x80
/* 800085C0 00005520  48 2C DE 21 */	bl sub_802d63e0
/* 800085C4 00005524  90 6D A0 90 */	stw r3, lbl_805A8C50@sda21(r13)
/* 800085C8 00005528  7F C3 F3 78 */	mr r3, r30
/* 800085CC 0000552C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800085D0 00005530  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800085D4 00005534  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800085D8 00005538  7C 08 03 A6 */	mtlr r0
/* 800085DC 0000553C  38 21 00 20 */	addi r1, r1, 0x20
/* 800085E0 00005540  4E 80 00 20 */	blr

.global sub_800085e4
sub_800085e4:
/* 800085E4 00005544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800085E8 00005548  7C 08 02 A6 */	mflr r0
/* 800085EC 0000554C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800085F0 00005550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800085F4 00005554  7C 7F 1B 78 */	mr r31, r3
/* 800085F8 00005558  80 83 00 00 */	lwz r4, 0(r3)
/* 800085FC 0000555C  80 64 00 04 */	lwz r3, 4(r4)
/* 80008600 00005560  34 03 FF FF */	addic. r0, r3, -1
/* 80008604 00005564  90 04 00 04 */	stw r0, 4(r4)
/* 80008608 00005568  41 81 00 24 */	bgt lbl_8000862C
/* 8000860C 0000556C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80008610 00005570  38 80 00 01 */	li r4, 1
/* 80008614 00005574  80 63 00 00 */	lwz r3, 0(r3)
/* 80008618 00005578  48 20 30 51 */	bl sub_8020b668
/* 8000861C 0000557C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80008620 00005580  28 03 00 00 */	cmplwi r3, 0
/* 80008624 00005584  41 82 00 08 */	beq lbl_8000862C
/* 80008628 00005588  48 30 D3 09 */	bl Free__7CMemoryFPCv
lbl_8000862C:
/* 8000862C 0000558C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008630 00005590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80008634 00005594  7C 08 03 A6 */	mtlr r0
/* 80008638 00005598  38 21 00 10 */	addi r1, r1, 0x10
/* 8000863C 0000559C  4E 80 00 20 */	blr

.global __dt__11CWorldStateFv
__dt__11CWorldStateFv:
/* 80008640 000055A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008644 000055A4  7C 08 02 A6 */	mflr r0
/* 80008648 000055A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000864C 000055AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80008650 000055B0  7C 7F 1B 78 */	mr r31, r3
/* 80008654 000055B4  80 83 00 00 */	lwz r4, 0(r3)
/* 80008658 000055B8  80 64 00 04 */	lwz r3, 4(r4)
/* 8000865C 000055BC  34 03 FF FF */	addic. r0, r3, -1
/* 80008660 000055C0  90 04 00 04 */	stw r0, 4(r4)
/* 80008664 000055C4  41 81 00 24 */	bgt lbl_80008688
/* 80008668 000055C8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8000866C 000055CC  38 80 00 01 */	li r4, 1
/* 80008670 000055D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80008674 000055D4  48 0D 97 95 */	bl __dt__14CScriptMailboxFv
/* 80008678 000055D8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8000867C 000055DC  28 03 00 00 */	cmplwi r3, 0
/* 80008680 000055E0  41 82 00 08 */	beq lbl_80008688
/* 80008684 000055E4  48 30 D2 AD */	bl Free__7CMemoryFPCv
lbl_80008688:
/* 80008688 000055E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000868C 000055EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80008690 000055F0  7C 08 03 A6 */	mtlr r0
/* 80008694 000055F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80008698 000055F8  4E 80 00 20 */	blr

.global sub_8000869c
sub_8000869c:
/* 8000869C 000055FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800086A0 00005600  7C 08 02 A6 */	mflr r0
/* 800086A4 00005604  90 01 00 14 */	stw r0, 0x14(r1)
/* 800086A8 00005608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800086AC 0000560C  7C 7F 1B 78 */	mr r31, r3
/* 800086B0 00005610  80 83 00 00 */	lwz r4, 0(r3)
/* 800086B4 00005614  80 64 00 04 */	lwz r3, 4(r4)
/* 800086B8 00005618  34 03 FF FF */	addic. r0, r3, -1
/* 800086BC 0000561C  90 04 00 04 */	stw r0, 4(r4)
/* 800086C0 00005620  41 81 00 38 */	bgt lbl_800086F8
/* 800086C4 00005624  80 7F 00 00 */	lwz r3, 0(r31)
/* 800086C8 00005628  80 63 00 00 */	lwz r3, 0(r3)
/* 800086CC 0000562C  28 03 00 00 */	cmplwi r3, 0
/* 800086D0 00005630  41 82 00 18 */	beq lbl_800086E8
/* 800086D4 00005634  81 83 00 00 */	lwz r12, 0(r3)
/* 800086D8 00005638  38 80 00 01 */	li r4, 1
/* 800086DC 0000563C  81 8C 00 08 */	lwz r12, 8(r12)
/* 800086E0 00005640  7D 89 03 A6 */	mtctr r12
/* 800086E4 00005644  4E 80 04 21 */	bctrl
lbl_800086E8:
/* 800086E8 00005648  80 7F 00 00 */	lwz r3, 0(r31)
/* 800086EC 0000564C  28 03 00 00 */	cmplwi r3, 0
/* 800086F0 00005650  41 82 00 08 */	beq lbl_800086F8
/* 800086F4 00005654  48 30 D2 3D */	bl Free__7CMemoryFPCv
lbl_800086F8:
/* 800086F8 00005658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800086FC 0000565C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80008700 00005660  7C 08 03 A6 */	mtlr r0
/* 80008704 00005664  38 21 00 10 */	addi r1, r1, 0x10
/* 80008708 00005668  4E 80 00 20 */	blr

.global sub_8000870c
sub_8000870c:
/* 8000870C 0000566C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008710 00005670  7C 08 02 A6 */	mflr r0
/* 80008714 00005674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008718 00005678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000871C 0000567C  7C 7F 1B 78 */	mr r31, r3
/* 80008720 00005680  80 83 00 00 */	lwz r4, 0(r3)
/* 80008724 00005684  80 64 00 04 */	lwz r3, 4(r4)
/* 80008728 00005688  34 03 FF FF */	addic. r0, r3, -1
/* 8000872C 0000568C  90 04 00 04 */	stw r0, 4(r4)
/* 80008730 00005690  41 81 00 38 */	bgt lbl_80008768
/* 80008734 00005694  80 7F 00 00 */	lwz r3, 0(r31)
/* 80008738 00005698  80 63 00 00 */	lwz r3, 0(r3)
/* 8000873C 0000569C  28 03 00 00 */	cmplwi r3, 0
/* 80008740 000056A0  41 82 00 18 */	beq lbl_80008758
/* 80008744 000056A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80008748 000056A8  38 80 00 01 */	li r4, 1
/* 8000874C 000056AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80008750 000056B0  7D 89 03 A6 */	mtctr r12
/* 80008754 000056B4  4E 80 04 21 */	bctrl
lbl_80008758:
/* 80008758 000056B8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8000875C 000056BC  28 03 00 00 */	cmplwi r3, 0
/* 80008760 000056C0  41 82 00 08 */	beq lbl_80008768
/* 80008764 000056C4  48 30 D1 CD */	bl Free__7CMemoryFPCv
lbl_80008768:
/* 80008768 000056C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000876C 000056CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80008770 000056D0  7C 08 03 A6 */	mtlr r0
/* 80008774 000056D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80008778 000056D8  4E 80 00 20 */	blr

.global "__nw__38TOneStatic<24CGameArchitectureSupport>FUlPCcPCc"
"__nw__38TOneStatic<24CGameArchitectureSupport>FUlPCcPCc":
/* 8000877C 000056DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008780 000056E0  7C 08 02 A6 */	mflr r0
/* 80008784 000056E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008788 000056E8  48 00 00 5D */	bl "ReferenceCount__38TOneStatic<24CGameArchitectureSupport>Fv"
/* 8000878C 000056EC  80 83 00 00 */	lwz r4, 0(r3)
/* 80008790 000056F0  38 04 00 01 */	addi r0, r4, 1
/* 80008794 000056F4  90 03 00 00 */	stw r0, 0(r3)
/* 80008798 000056F8  48 00 00 41 */	bl "GetAllocSpace__38TOneStatic<24CGameArchitectureSupport>Fv"
/* 8000879C 000056FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800087A0 00005700  7C 08 03 A6 */	mtlr r0
/* 800087A4 00005704  38 21 00 10 */	addi r1, r1, 0x10
/* 800087A8 00005708  4E 80 00 20 */	blr

.global "__dl__38TOneStatic<24CGameArchitectureSupport>FPv"
"__dl__38TOneStatic<24CGameArchitectureSupport>FPv":
/* 800087AC 0000570C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800087B0 00005710  7C 08 02 A6 */	mflr r0
/* 800087B4 00005714  90 01 00 14 */	stw r0, 0x14(r1)
/* 800087B8 00005718  48 00 00 2D */	bl "ReferenceCount__38TOneStatic<24CGameArchitectureSupport>Fv"
/* 800087BC 0000571C  80 83 00 00 */	lwz r4, 0(r3)
/* 800087C0 00005720  38 04 FF FF */	addi r0, r4, -1
/* 800087C4 00005724  90 03 00 00 */	stw r0, 0(r3)
/* 800087C8 00005728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800087CC 0000572C  7C 08 03 A6 */	mtlr r0
/* 800087D0 00005730  38 21 00 10 */	addi r1, r1, 0x10
/* 800087D4 00005734  4E 80 00 20 */	blr

.global "GetAllocSpace__38TOneStatic<24CGameArchitectureSupport>Fv"
"GetAllocSpace__38TOneStatic<24CGameArchitectureSupport>Fv":
/* 800087D8 00005738  3C 60 80 45 */	lis r3, lbl_804576C8@ha
/* 800087DC 0000573C  38 63 76 C8 */	addi r3, r3, lbl_804576C8@l
/* 800087E0 00005740  4E 80 00 20 */	blr

.global "ReferenceCount__38TOneStatic<24CGameArchitectureSupport>Fv"
"ReferenceCount__38TOneStatic<24CGameArchitectureSupport>Fv":
/* 800087E4 00005744  88 0D A0 AC */	lbz r0, lbl_805A8C6C@sda21(r13)
/* 800087E8 00005748  7C 00 07 75 */	extsb. r0, r0
/* 800087EC 0000574C  40 82 00 14 */	bne lbl_80008800
/* 800087F0 00005750  38 60 00 00 */	li r3, 0
/* 800087F4 00005754  38 00 00 01 */	li r0, 1
/* 800087F8 00005758  90 6D A0 A8 */	stw r3, lbl_805A8C68@sda21(r13)
/* 800087FC 0000575C  98 0D A0 AC */	stb r0, lbl_805A8C6C@sda21(r13)
lbl_80008800:
/* 80008800 00005760  38 6D A0 A8 */	addi r3, r13, lbl_805A8C68@sda21
/* 80008804 00005764  4E 80 00 20 */	blr

.global "__nw__32TOneStatic<18CGameGlobalObjects>FUlPCcPCc"
"__nw__32TOneStatic<18CGameGlobalObjects>FUlPCcPCc":
/* 80008808 00005768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000880C 0000576C  7C 08 02 A6 */	mflr r0
/* 80008810 00005770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008814 00005774  48 00 00 5D */	bl "ReferenceCount__32TOneStatic<18CGameGlobalObjects>Fv"
/* 80008818 00005778  80 83 00 00 */	lwz r4, 0(r3)
/* 8000881C 0000577C  38 04 00 01 */	addi r0, r4, 1
/* 80008820 00005780  90 03 00 00 */	stw r0, 0(r3)
/* 80008824 00005784  48 00 00 41 */	bl "GetAllocSpace__32TOneStatic<18CGameGlobalObjects>Fv"
/* 80008828 00005788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000882C 0000578C  7C 08 03 A6 */	mtlr r0
/* 80008830 00005790  38 21 00 10 */	addi r1, r1, 0x10
/* 80008834 00005794  4E 80 00 20 */	blr

.global "__dl__32TOneStatic<18CGameGlobalObjects>FPv"
"__dl__32TOneStatic<18CGameGlobalObjects>FPv":
/* 80008838 00005798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000883C 0000579C  7C 08 02 A6 */	mflr r0
/* 80008840 000057A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008844 000057A4  48 00 00 2D */	bl "ReferenceCount__32TOneStatic<18CGameGlobalObjects>Fv"
/* 80008848 000057A8  80 83 00 00 */	lwz r4, 0(r3)
/* 8000884C 000057AC  38 04 FF FF */	addi r0, r4, -1
/* 80008850 000057B0  90 03 00 00 */	stw r0, 0(r3)
/* 80008854 000057B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008858 000057B8  7C 08 03 A6 */	mtlr r0
/* 8000885C 000057BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80008860 000057C0  4E 80 00 20 */	blr

.global "GetAllocSpace__32TOneStatic<18CGameGlobalObjects>Fv"
"GetAllocSpace__32TOneStatic<18CGameGlobalObjects>Fv":
/* 80008864 000057C4  3C 60 80 45 */	lis r3, lbl_80457798@ha
/* 80008868 000057C8  38 63 77 98 */	addi r3, r3, lbl_80457798@l
/* 8000886C 000057CC  4E 80 00 20 */	blr

.global "ReferenceCount__32TOneStatic<18CGameGlobalObjects>Fv"
"ReferenceCount__32TOneStatic<18CGameGlobalObjects>Fv":
/* 80008870 000057D0  88 0D A0 B4 */	lbz r0, lbl_805A8C74@sda21(r13)
/* 80008874 000057D4  7C 00 07 75 */	extsb. r0, r0
/* 80008878 000057D8  40 82 00 14 */	bne lbl_8000888C
/* 8000887C 000057DC  38 60 00 00 */	li r3, 0
/* 80008880 000057E0  38 00 00 01 */	li r0, 1
/* 80008884 000057E4  90 6D A0 B0 */	stw r3, lbl_805A8C70@sda21(r13)
/* 80008888 000057E8  98 0D A0 B4 */	stb r0, lbl_805A8C74@sda21(r13)
lbl_8000888C:
/* 8000888C 000057EC  38 6D A0 B0 */	addi r3, r13, lbl_805A8C70@sda21
/* 80008890 000057F0  4E 80 00 20 */	blr

.global "GetAverageValue<f>__FPCfi"
"GetAverageValue<f>__FPCfi":
/* 80008894 000057F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008898 000057F8  54 80 10 3A */	slwi r0, r4, 2
/* 8000889C 000057FC  38 C3 00 04 */	addi r6, r3, 4
/* 800088A0 00005800  7C A3 02 14 */	add r5, r3, r0
/* 800088A4 00005804  C0 63 00 00 */	lfs f3, 0(r3)
/* 800088A8 00005808  38 65 00 03 */	addi r3, r5, 3
/* 800088AC 0000580C  7C 66 18 50 */	subf r3, r6, r3
/* 800088B0 00005810  7C 06 28 40 */	cmplw r6, r5
/* 800088B4 00005814  54 63 F0 BE */	srwi r3, r3, 2
/* 800088B8 00005818  40 80 00 74 */	bge lbl_8000892C
/* 800088BC 0000581C  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 800088C0 00005820  7C 09 03 A6 */	mtctr r0
/* 800088C4 00005824  41 82 00 54 */	beq lbl_80008918
lbl_800088C8:
/* 800088C8 00005828  C0 06 00 00 */	lfs f0, 0(r6)
/* 800088CC 0000582C  EC 63 00 2A */	fadds f3, f3, f0
/* 800088D0 00005830  C0 06 00 04 */	lfs f0, 4(r6)
/* 800088D4 00005834  EC 63 00 2A */	fadds f3, f3, f0
/* 800088D8 00005838  C0 06 00 08 */	lfs f0, 8(r6)
/* 800088DC 0000583C  EC 63 00 2A */	fadds f3, f3, f0
/* 800088E0 00005840  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 800088E4 00005844  EC 63 00 2A */	fadds f3, f3, f0
/* 800088E8 00005848  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 800088EC 0000584C  EC 63 00 2A */	fadds f3, f3, f0
/* 800088F0 00005850  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 800088F4 00005854  EC 63 00 2A */	fadds f3, f3, f0
/* 800088F8 00005858  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 800088FC 0000585C  EC 63 00 2A */	fadds f3, f3, f0
/* 80008900 00005860  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 80008904 00005864  38 C6 00 20 */	addi r6, r6, 0x20
/* 80008908 00005868  EC 63 00 2A */	fadds f3, f3, f0
/* 8000890C 0000586C  42 00 FF BC */	bdnz lbl_800088C8
/* 80008910 00005870  70 63 00 07 */	andi. r3, r3, 7
/* 80008914 00005874  41 82 00 18 */	beq lbl_8000892C
lbl_80008918:
/* 80008918 00005878  7C 69 03 A6 */	mtctr r3
lbl_8000891C:
/* 8000891C 0000587C  C0 06 00 00 */	lfs f0, 0(r6)
/* 80008920 00005880  38 C6 00 04 */	addi r6, r6, 4
/* 80008924 00005884  EC 63 00 2A */	fadds f3, f3, f0
/* 80008928 00005888  42 00 FF F4 */	bdnz lbl_8000891C
lbl_8000892C:
/* 8000892C 0000588C  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 80008930 00005890  3C 00 43 30 */	lis r0, 0x4330
/* 80008934 00005894  90 61 00 0C */	stw r3, 0xc(r1)
/* 80008938 00005898  C8 22 80 60 */	lfd f1, lbl_805A9D80@sda21(r2)
/* 8000893C 0000589C  90 01 00 08 */	stw r0, 8(r1)
/* 80008940 000058A0  C0 42 80 5C */	lfs f2, lbl_805A9D7C@sda21(r2)
/* 80008944 000058A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80008948 000058A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8000894C 000058AC  EC 02 00 24 */	fdivs f0, f2, f0
/* 80008950 000058B0  EC 23 00 32 */	fmuls f1, f3, f0
/* 80008954 000058B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80008958 000058B8  4E 80 00 20 */	blr

.global "reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi":
/* 8000895C 000058BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80008960 000058C0  7C 08 02 A6 */	mflr r0
/* 80008964 000058C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80008968 000058C8  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8000896C 000058CC  7C 9F 23 78 */	mr r31, r4
/* 80008970 000058D0  7C 7E 1B 78 */	mr r30, r3
/* 80008974 000058D4  80 03 00 08 */	lwz r0, 8(r3)
/* 80008978 000058D8  7C 1F 00 00 */	cmpw r31, r0
/* 8000897C 000058DC  40 81 00 BC */	ble lbl_80008A38
/* 80008980 000058E0  57 E3 18 39 */	rlwinm. r3, r31, 3, 0, 0x1c
/* 80008984 000058E4  40 82 00 0C */	bne lbl_80008990
/* 80008988 000058E8  3B 80 00 00 */	li r28, 0
/* 8000898C 000058EC  48 00 00 1C */	b lbl_800089A8
lbl_80008990:
/* 80008990 000058F0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80008994 000058F4  38 A0 00 00 */	li r5, 0
/* 80008998 000058F8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 8000899C 000058FC  38 84 00 37 */	addi r4, r4, 0x37
/* 800089A0 00005900  48 30 CE 79 */	bl __nwa__FUlPCcPCc
/* 800089A4 00005904  7C 7C 1B 78 */	mr r28, r3
lbl_800089A8:
/* 800089A8 00005908  80 1E 00 04 */	lwz r0, 4(r30)
/* 800089AC 0000590C  7F 9B E3 78 */	mr r27, r28
/* 800089B0 00005910  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 800089B4 00005914  54 00 18 38 */	slwi r0, r0, 3
/* 800089B8 00005918  7F BA 02 14 */	add r29, r26, r0
/* 800089BC 0000591C  93 41 00 10 */	stw r26, 0x10(r1)
/* 800089C0 00005920  93 A1 00 08 */	stw r29, 8(r1)
/* 800089C4 00005924  93 A1 00 0C */	stw r29, 0xc(r1)
/* 800089C8 00005928  93 41 00 14 */	stw r26, 0x14(r1)
/* 800089CC 0000592C  48 00 00 20 */	b lbl_800089EC
lbl_800089D0:
/* 800089D0 00005930  28 1B 00 00 */	cmplwi r27, 0
/* 800089D4 00005934  41 82 00 10 */	beq lbl_800089E4
/* 800089D8 00005938  7F 63 DB 78 */	mr r3, r27
/* 800089DC 0000593C  7F 44 D3 78 */	mr r4, r26
/* 800089E0 00005940  48 33 84 C9 */	bl __ct__6CTokenFRC6CToken
lbl_800089E4:
/* 800089E4 00005944  3B 7B 00 08 */	addi r27, r27, 8
/* 800089E8 00005948  3B 5A 00 08 */	addi r26, r26, 8
lbl_800089EC:
/* 800089EC 0000594C  7C 1A E8 40 */	cmplw r26, r29
/* 800089F0 00005950  40 82 FF E0 */	bne lbl_800089D0
/* 800089F4 00005954  80 1E 00 04 */	lwz r0, 4(r30)
/* 800089F8 00005958  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 800089FC 0000595C  54 00 18 38 */	slwi r0, r0, 3
/* 80008A00 00005960  7F 7A 02 14 */	add r27, r26, r0
/* 80008A04 00005964  48 00 00 14 */	b lbl_80008A18
lbl_80008A08:
/* 80008A08 00005968  7F 43 D3 78 */	mr r3, r26
/* 80008A0C 0000596C  38 80 FF FF */	li r4, -1
/* 80008A10 00005970  48 33 84 31 */	bl __dt__6CTokenFv
/* 80008A14 00005974  3B 5A 00 08 */	addi r26, r26, 8
lbl_80008A18:
/* 80008A18 00005978  7C 1A D8 40 */	cmplw r26, r27
/* 80008A1C 0000597C  40 82 FF EC */	bne lbl_80008A08
/* 80008A20 00005980  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80008A24 00005984  28 03 00 00 */	cmplwi r3, 0
/* 80008A28 00005988  41 82 00 08 */	beq lbl_80008A30
/* 80008A2C 0000598C  48 30 CF 05 */	bl Free__7CMemoryFPCv
lbl_80008A30:
/* 80008A30 00005990  93 9E 00 0C */	stw r28, 0xc(r30)
/* 80008A34 00005994  93 FE 00 08 */	stw r31, 8(r30)
lbl_80008A38:
/* 80008A38 00005998  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80008A3C 0000599C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80008A40 000059A0  7C 08 03 A6 */	mtlr r0
/* 80008A44 000059A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80008A48 000059A8  4E 80 00 20 */	blr

.global "reserve__Q24rstl55vector<Q24rstl11pair<Ui,Ui>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl55vector<Q24rstl11pair<Ui,Ui>,Q24rstl17rmemory_allocator>Fi":
/* 80008A4C 000059AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80008A50 000059B0  7C 08 02 A6 */	mflr r0
/* 80008A54 000059B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80008A58 000059B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80008A5C 000059BC  7C 9F 23 78 */	mr r31, r4
/* 80008A60 000059C0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80008A64 000059C4  7C 7E 1B 78 */	mr r30, r3
/* 80008A68 000059C8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80008A6C 000059CC  80 03 00 08 */	lwz r0, 8(r3)
/* 80008A70 000059D0  7C 1F 00 00 */	cmpw r31, r0
/* 80008A74 000059D4  40 81 00 B4 */	ble lbl_80008B28
/* 80008A78 000059D8  57 E3 18 39 */	rlwinm. r3, r31, 3, 0, 0x1c
/* 80008A7C 000059DC  40 82 00 0C */	bne lbl_80008A88
/* 80008A80 000059E0  3B A0 00 00 */	li r29, 0
/* 80008A84 000059E4  48 00 00 1C */	b lbl_80008AA0
lbl_80008A88:
/* 80008A88 000059E8  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80008A8C 000059EC  38 A0 00 00 */	li r5, 0
/* 80008A90 000059F0  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80008A94 000059F4  38 84 00 37 */	addi r4, r4, 0x37
/* 80008A98 000059F8  48 30 CD 81 */	bl __nwa__FUlPCcPCc
/* 80008A9C 000059FC  7C 7D 1B 78 */	mr r29, r3
lbl_80008AA0:
/* 80008AA0 00005A00  80 1E 00 04 */	lwz r0, 4(r30)
/* 80008AA4 00005A04  7F A4 EB 78 */	mr r4, r29
/* 80008AA8 00005A08  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80008AAC 00005A0C  54 00 18 38 */	slwi r0, r0, 3
/* 80008AB0 00005A10  7C 65 02 14 */	add r3, r5, r0
/* 80008AB4 00005A14  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80008AB8 00005A18  90 61 00 08 */	stw r3, 8(r1)
/* 80008ABC 00005A1C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80008AC0 00005A20  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80008AC4 00005A24  48 00 00 24 */	b lbl_80008AE8
lbl_80008AC8:
/* 80008AC8 00005A28  28 04 00 00 */	cmplwi r4, 0
/* 80008ACC 00005A2C  41 82 00 14 */	beq lbl_80008AE0
/* 80008AD0 00005A30  80 05 00 00 */	lwz r0, 0(r5)
/* 80008AD4 00005A34  90 04 00 00 */	stw r0, 0(r4)
/* 80008AD8 00005A38  80 05 00 04 */	lwz r0, 4(r5)
/* 80008ADC 00005A3C  90 04 00 04 */	stw r0, 4(r4)
lbl_80008AE0:
/* 80008AE0 00005A40  38 84 00 08 */	addi r4, r4, 8
/* 80008AE4 00005A44  38 A5 00 08 */	addi r5, r5, 8
lbl_80008AE8:
/* 80008AE8 00005A48  7C 05 18 40 */	cmplw r5, r3
/* 80008AEC 00005A4C  40 82 FF DC */	bne lbl_80008AC8
/* 80008AF0 00005A50  80 1E 00 04 */	lwz r0, 4(r30)
/* 80008AF4 00005A54  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80008AF8 00005A58  54 00 18 38 */	slwi r0, r0, 3
/* 80008AFC 00005A5C  7C 64 1B 78 */	mr r4, r3
/* 80008B00 00005A60  7C 03 02 14 */	add r0, r3, r0
/* 80008B04 00005A64  48 00 00 08 */	b lbl_80008B0C
lbl_80008B08:
/* 80008B08 00005A68  38 84 00 08 */	addi r4, r4, 8
lbl_80008B0C:
/* 80008B0C 00005A6C  7C 04 00 40 */	cmplw r4, r0
/* 80008B10 00005A70  40 82 FF F8 */	bne lbl_80008B08
/* 80008B14 00005A74  28 03 00 00 */	cmplwi r3, 0
/* 80008B18 00005A78  41 82 00 08 */	beq lbl_80008B20
/* 80008B1C 00005A7C  48 30 CE 15 */	bl Free__7CMemoryFPCv
lbl_80008B20:
/* 80008B20 00005A80  93 BE 00 0C */	stw r29, 0xc(r30)
/* 80008B24 00005A84  93 FE 00 08 */	stw r31, 8(r30)
lbl_80008B28:
/* 80008B28 00005A88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80008B2C 00005A8C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80008B30 00005A90  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80008B34 00005A94  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80008B38 00005A98  7C 08 03 A6 */	mtlr r0
/* 80008B3C 00005A9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80008B40 00005AA0  4E 80 00 20 */	blr

# CPlayer?
.global sub_80008b44
sub_80008b44:
/* 80008B44 00005AA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80008B48 00005AA8  7C 08 02 A6 */	mflr r0
/* 80008B4C 00005AAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80008B50 00005AB0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80008B54 00005AB4  7C 9F 23 78 */	mr r31, r4
/* 80008B58 00005AB8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80008B5C 00005ABC  7C 7E 1B 78 */	mr r30, r3
/* 80008B60 00005AC0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80008B64 00005AC4  80 03 00 08 */	lwz r0, 8(r3)
/* 80008B68 00005AC8  7C 1F 00 00 */	cmpw r31, r0
/* 80008B6C 00005ACC  40 81 00 B4 */	ble lbl_80008C20
/* 80008B70 00005AD0  57 E3 18 39 */	rlwinm. r3, r31, 3, 0, 0x1c
/* 80008B74 00005AD4  40 82 00 0C */	bne lbl_80008B80
/* 80008B78 00005AD8  3B A0 00 00 */	li r29, 0
/* 80008B7C 00005ADC  48 00 00 1C */	b lbl_80008B98
lbl_80008B80:
/* 80008B80 00005AE0  3C 80 80 3D */	lis r4, lbl_803CBE74@ha
/* 80008B84 00005AE4  38 A0 00 00 */	li r5, 0
/* 80008B88 00005AE8  38 84 BE 74 */	addi r4, r4, lbl_803CBE74@l
/* 80008B8C 00005AEC  38 84 00 37 */	addi r4, r4, 0x37
/* 80008B90 00005AF0  48 30 CC 89 */	bl __nwa__FUlPCcPCc
/* 80008B94 00005AF4  7C 7D 1B 78 */	mr r29, r3
lbl_80008B98:
/* 80008B98 00005AF8  80 1E 00 04 */	lwz r0, 4(r30)
/* 80008B9C 00005AFC  7F A4 EB 78 */	mr r4, r29
/* 80008BA0 00005B00  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80008BA4 00005B04  54 00 18 38 */	slwi r0, r0, 3
/* 80008BA8 00005B08  7C 65 02 14 */	add r3, r5, r0
/* 80008BAC 00005B0C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80008BB0 00005B10  90 61 00 08 */	stw r3, 8(r1)
/* 80008BB4 00005B14  90 61 00 0C */	stw r3, 0xc(r1)
/* 80008BB8 00005B18  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80008BBC 00005B1C  48 00 00 24 */	b lbl_80008BE0
lbl_80008BC0:
/* 80008BC0 00005B20  28 04 00 00 */	cmplwi r4, 0
/* 80008BC4 00005B24  41 82 00 14 */	beq lbl_80008BD8
/* 80008BC8 00005B28  80 05 00 00 */	lwz r0, 0(r5)
/* 80008BCC 00005B2C  90 04 00 00 */	stw r0, 0(r4)
/* 80008BD0 00005B30  80 05 00 04 */	lwz r0, 4(r5)
/* 80008BD4 00005B34  90 04 00 04 */	stw r0, 4(r4)
lbl_80008BD8:
/* 80008BD8 00005B38  38 84 00 08 */	addi r4, r4, 8
/* 80008BDC 00005B3C  38 A5 00 08 */	addi r5, r5, 8
lbl_80008BE0:
/* 80008BE0 00005B40  7C 05 18 40 */	cmplw r5, r3
/* 80008BE4 00005B44  40 82 FF DC */	bne lbl_80008BC0
/* 80008BE8 00005B48  80 1E 00 04 */	lwz r0, 4(r30)
/* 80008BEC 00005B4C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80008BF0 00005B50  54 00 18 38 */	slwi r0, r0, 3
/* 80008BF4 00005B54  7C 64 1B 78 */	mr r4, r3
/* 80008BF8 00005B58  7C 03 02 14 */	add r0, r3, r0
/* 80008BFC 00005B5C  48 00 00 08 */	b lbl_80008C04
lbl_80008C00:
/* 80008C00 00005B60  38 84 00 08 */	addi r4, r4, 8
lbl_80008C04:
/* 80008C04 00005B64  7C 04 00 40 */	cmplw r4, r0
/* 80008C08 00005B68  40 82 FF F8 */	bne lbl_80008C00
/* 80008C0C 00005B6C  28 03 00 00 */	cmplwi r3, 0
/* 80008C10 00005B70  41 82 00 08 */	beq lbl_80008C18
/* 80008C14 00005B74  48 30 CD 1D */	bl Free__7CMemoryFPCv
lbl_80008C18:
/* 80008C18 00005B78  93 BE 00 0C */	stw r29, 0xc(r30)
/* 80008C1C 00005B7C  93 FE 00 08 */	stw r31, 8(r30)
lbl_80008C20:
/* 80008C20 00005B80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80008C24 00005B84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80008C28 00005B88  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80008C2C 00005B8C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80008C30 00005B90  7C 08 03 A6 */	mtlr r0
/* 80008C34 00005B94  38 21 00 30 */	addi r1, r1, 0x30
/* 80008C38 00005B98  4E 80 00 20 */	blr

.global sub_80008c3c
sub_80008c3c:
/* 80008C3C 00005B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008C40 00005BA0  7C 08 02 A6 */	mflr r0
/* 80008C44 00005BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008C48 00005BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80008C4C 00005BAC  7C 7F 1B 78 */	mr r31, r3
/* 80008C50 00005BB0  80 83 00 00 */	lwz r4, 0(r3)
/* 80008C54 00005BB4  80 64 00 04 */	lwz r3, 4(r4)
/* 80008C58 00005BB8  34 03 FF FF */	addic. r0, r3, -1
/* 80008C5C 00005BBC  90 04 00 04 */	stw r0, 4(r4)
/* 80008C60 00005BC0  41 81 00 24 */	bgt lbl_80008C84
/* 80008C64 00005BC4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80008C68 00005BC8  38 80 00 01 */	li r4, 1
/* 80008C6C 00005BCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80008C70 00005BD0  48 00 00 29 */	bl sub_80008c98
/* 80008C74 00005BD4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80008C78 00005BD8  28 03 00 00 */	cmplwi r3, 0
/* 80008C7C 00005BDC  41 82 00 08 */	beq lbl_80008C84
/* 80008C80 00005BE0  48 30 CC B1 */	bl Free__7CMemoryFPCv
lbl_80008C84:
/* 80008C84 00005BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008C88 00005BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80008C8C 00005BEC  7C 08 03 A6 */	mtlr r0
/* 80008C90 00005BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80008C94 00005BF4  4E 80 00 20 */	blr

.global sub_80008c98
sub_80008c98:
/* 80008C98 00005BF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80008C9C 00005BFC  7C 08 02 A6 */	mflr r0
/* 80008CA0 00005C00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80008CA4 00005C04  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80008CA8 00005C08  7C 9F 23 78 */	mr r31, r4
/* 80008CAC 00005C0C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80008CB0 00005C10  7C 7E 1B 79 */	or. r30, r3, r3
/* 80008CB4 00005C14  41 82 00 FC */	beq lbl_80008DB0
/* 80008CB8 00005C18  34 1E 00 28 */	addic. r0, r30, 0x28
/* 80008CBC 00005C1C  41 82 00 44 */	beq lbl_80008D00
/* 80008CC0 00005C20  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80008CC4 00005C24  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80008CC8 00005C28  54 00 18 38 */	slwi r0, r0, 3
/* 80008CCC 00005C2C  7C 03 02 14 */	add r0, r3, r0
/* 80008CD0 00005C30  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80008CD4 00005C34  7C 64 1B 78 */	mr r4, r3
/* 80008CD8 00005C38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80008CDC 00005C3C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80008CE0 00005C40  90 61 00 28 */	stw r3, 0x28(r1)
/* 80008CE4 00005C44  48 00 00 08 */	b lbl_80008CEC
lbl_80008CE8:
/* 80008CE8 00005C48  38 84 00 08 */	addi r4, r4, 8
lbl_80008CEC:
/* 80008CEC 00005C4C  7C 04 00 40 */	cmplw r4, r0
/* 80008CF0 00005C50  40 82 FF F8 */	bne lbl_80008CE8
/* 80008CF4 00005C54  28 03 00 00 */	cmplwi r3, 0
/* 80008CF8 00005C58  41 82 00 08 */	beq lbl_80008D00
/* 80008CFC 00005C5C  48 30 CC 35 */	bl Free__7CMemoryFPCv
lbl_80008D00:
/* 80008D00 00005C60  34 1E 00 14 */	addic. r0, r30, 0x14
/* 80008D04 00005C64  41 82 00 4C */	beq lbl_80008D50
/* 80008D08 00005C68  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80008D0C 00005C6C  41 82 00 44 */	beq lbl_80008D50
/* 80008D10 00005C70  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80008D14 00005C74  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80008D18 00005C78  54 00 10 3A */	slwi r0, r0, 2
/* 80008D1C 00005C7C  7C 03 02 14 */	add r0, r3, r0
/* 80008D20 00005C80  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80008D24 00005C84  7C 64 1B 78 */	mr r4, r3
/* 80008D28 00005C88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80008D2C 00005C8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80008D30 00005C90  90 61 00 18 */	stw r3, 0x18(r1)
/* 80008D34 00005C94  48 00 00 08 */	b lbl_80008D3C
lbl_80008D38:
/* 80008D38 00005C98  38 84 00 04 */	addi r4, r4, 4
lbl_80008D3C:
/* 80008D3C 00005C9C  7C 04 00 40 */	cmplw r4, r0
/* 80008D40 00005CA0  40 82 FF F8 */	bne lbl_80008D38
/* 80008D44 00005CA4  28 03 00 00 */	cmplwi r3, 0
/* 80008D48 00005CA8  41 82 00 08 */	beq lbl_80008D50
/* 80008D4C 00005CAC  48 30 CB E5 */	bl Free__7CMemoryFPCv
lbl_80008D50:
/* 80008D50 00005CB0  28 1E 00 00 */	cmplwi r30, 0
/* 80008D54 00005CB4  41 82 00 4C */	beq lbl_80008DA0
/* 80008D58 00005CB8  34 1E 00 04 */	addic. r0, r30, 4
/* 80008D5C 00005CBC  41 82 00 44 */	beq lbl_80008DA0
/* 80008D60 00005CC0  80 1E 00 08 */	lwz r0, 8(r30)
/* 80008D64 00005CC4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80008D68 00005CC8  54 00 10 3A */	slwi r0, r0, 2
/* 80008D6C 00005CCC  7C 03 02 14 */	add r0, r3, r0
/* 80008D70 00005CD0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80008D74 00005CD4  7C 64 1B 78 */	mr r4, r3
/* 80008D78 00005CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008D7C 00005CDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80008D80 00005CE0  90 61 00 08 */	stw r3, 8(r1)
/* 80008D84 00005CE4  48 00 00 08 */	b lbl_80008D8C
lbl_80008D88:
/* 80008D88 00005CE8  38 84 00 04 */	addi r4, r4, 4
lbl_80008D8C:
/* 80008D8C 00005CEC  7C 04 00 40 */	cmplw r4, r0
/* 80008D90 00005CF0  40 82 FF F8 */	bne lbl_80008D88
/* 80008D94 00005CF4  28 03 00 00 */	cmplwi r3, 0
/* 80008D98 00005CF8  41 82 00 08 */	beq lbl_80008DA0
/* 80008D9C 00005CFC  48 30 CB 95 */	bl Free__7CMemoryFPCv
lbl_80008DA0:
/* 80008DA0 00005D00  7F E0 07 35 */	extsh. r0, r31
/* 80008DA4 00005D04  40 81 00 0C */	ble lbl_80008DB0
/* 80008DA8 00005D08  7F C3 F3 78 */	mr r3, r30
/* 80008DAC 00005D0C  48 30 CB 85 */	bl Free__7CMemoryFPCv
lbl_80008DB0:
/* 80008DB0 00005D10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80008DB4 00005D14  7F C3 F3 78 */	mr r3, r30
/* 80008DB8 00005D18  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80008DBC 00005D1C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80008DC0 00005D20  7C 08 03 A6 */	mtlr r0
/* 80008DC4 00005D24  38 21 00 40 */	addi r1, r1, 0x40
/* 80008DC8 00005D28  4E 80 00 20 */	blr

.global sub_80008dcc
sub_80008dcc:
/* 80008DCC 00005D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008DD0 00005D30  7C 08 02 A6 */	mflr r0
/* 80008DD4 00005D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008DD8 00005D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80008DDC 00005D3C  7C 7F 1B 78 */	mr r31, r3
/* 80008DE0 00005D40  80 83 00 00 */	lwz r4, 0(r3)
/* 80008DE4 00005D44  80 64 00 04 */	lwz r3, 4(r4)
/* 80008DE8 00005D48  34 03 FF FF */	addic. r0, r3, -1
/* 80008DEC 00005D4C  90 04 00 04 */	stw r0, 4(r4)
/* 80008DF0 00005D50  41 81 00 24 */	bgt lbl_80008E14
/* 80008DF4 00005D54  80 7F 00 00 */	lwz r3, 0(r31)
/* 80008DF8 00005D58  38 80 00 01 */	li r4, 1
/* 80008DFC 00005D5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80008E00 00005D60  48 00 00 29 */	bl sub_80008e28
/* 80008E04 00005D64  80 7F 00 00 */	lwz r3, 0(r31)
/* 80008E08 00005D68  28 03 00 00 */	cmplwi r3, 0
/* 80008E0C 00005D6C  41 82 00 08 */	beq lbl_80008E14
/* 80008E10 00005D70  48 30 CB 21 */	bl Free__7CMemoryFPCv
lbl_80008E14:
/* 80008E14 00005D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008E18 00005D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80008E1C 00005D7C  7C 08 03 A6 */	mtlr r0
/* 80008E20 00005D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80008E24 00005D84  4E 80 00 20 */	blr

.global sub_80008e28
sub_80008e28:
/* 80008E28 00005D88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80008E2C 00005D8C  7C 08 02 A6 */	mflr r0
/* 80008E30 00005D90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80008E34 00005D94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80008E38 00005D98  7C 9F 23 78 */	mr r31, r4
/* 80008E3C 00005D9C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80008E40 00005DA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80008E44 00005DA4  41 82 00 AC */	beq lbl_80008EF0
/* 80008E48 00005DA8  34 1E 00 10 */	addic. r0, r30, 0x10
/* 80008E4C 00005DAC  41 82 00 4C */	beq lbl_80008E98
/* 80008E50 00005DB0  34 1E 00 14 */	addic. r0, r30, 0x14
/* 80008E54 00005DB4  41 82 00 44 */	beq lbl_80008E98
/* 80008E58 00005DB8  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80008E5C 00005DBC  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80008E60 00005DC0  54 00 10 3A */	slwi r0, r0, 2
/* 80008E64 00005DC4  7C 03 02 14 */	add r0, r3, r0
/* 80008E68 00005DC8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80008E6C 00005DCC  7C 64 1B 78 */	mr r4, r3
/* 80008E70 00005DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008E74 00005DD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80008E78 00005DD8  90 61 00 08 */	stw r3, 8(r1)
/* 80008E7C 00005DDC  48 00 00 08 */	b lbl_80008E84
lbl_80008E80:
/* 80008E80 00005DE0  38 84 00 04 */	addi r4, r4, 4
lbl_80008E84:
/* 80008E84 00005DE4  7C 04 00 40 */	cmplw r4, r0
/* 80008E88 00005DE8  40 82 FF F8 */	bne lbl_80008E80
/* 80008E8C 00005DEC  28 03 00 00 */	cmplwi r3, 0
/* 80008E90 00005DF0  41 82 00 08 */	beq lbl_80008E98
/* 80008E94 00005DF4  48 30 CA 9D */	bl Free__7CMemoryFPCv
lbl_80008E98:
/* 80008E98 00005DF8  28 1E 00 00 */	cmplwi r30, 0
/* 80008E9C 00005DFC  41 82 00 44 */	beq lbl_80008EE0
/* 80008EA0 00005E00  80 1E 00 04 */	lwz r0, 4(r30)
/* 80008EA4 00005E04  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80008EA8 00005E08  54 00 20 36 */	slwi r0, r0, 4
/* 80008EAC 00005E0C  7C 03 02 14 */	add r0, r3, r0
/* 80008EB0 00005E10  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80008EB4 00005E14  7C 64 1B 78 */	mr r4, r3
/* 80008EB8 00005E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80008EBC 00005E1C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80008EC0 00005E20  90 61 00 18 */	stw r3, 0x18(r1)
/* 80008EC4 00005E24  48 00 00 08 */	b lbl_80008ECC
lbl_80008EC8:
/* 80008EC8 00005E28  38 84 00 10 */	addi r4, r4, 0x10
lbl_80008ECC:
/* 80008ECC 00005E2C  7C 04 00 40 */	cmplw r4, r0
/* 80008ED0 00005E30  40 82 FF F8 */	bne lbl_80008EC8
/* 80008ED4 00005E34  28 03 00 00 */	cmplwi r3, 0
/* 80008ED8 00005E38  41 82 00 08 */	beq lbl_80008EE0
/* 80008EDC 00005E3C  48 30 CA 55 */	bl Free__7CMemoryFPCv
lbl_80008EE0:
/* 80008EE0 00005E40  7F E0 07 35 */	extsh. r0, r31
/* 80008EE4 00005E44  40 81 00 0C */	ble lbl_80008EF0
/* 80008EE8 00005E48  7F C3 F3 78 */	mr r3, r30
/* 80008EEC 00005E4C  48 30 CA 45 */	bl Free__7CMemoryFPCv
lbl_80008EF0:
/* 80008EF0 00005E50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80008EF4 00005E54  7F C3 F3 78 */	mr r3, r30
/* 80008EF8 00005E58  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80008EFC 00005E5C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80008F00 00005E60  7C 08 03 A6 */	mtlr r0
/* 80008F04 00005E64  38 21 00 30 */	addi r1, r1, 0x30
/* 80008F08 00005E68  4E 80 00 20 */	blr

.global sub_80008f0c
sub_80008f0c:
/* 80008F0C 00005E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008F10 00005E70  7C 08 02 A6 */	mflr r0
/* 80008F14 00005E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008F18 00005E78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80008F1C 00005E7C  7C 7F 1B 78 */	mr r31, r3
/* 80008F20 00005E80  80 83 00 00 */	lwz r4, 0(r3)
/* 80008F24 00005E84  80 64 00 04 */	lwz r3, 4(r4)
/* 80008F28 00005E88  34 03 FF FF */	addic. r0, r3, -1
/* 80008F2C 00005E8C  90 04 00 04 */	stw r0, 4(r4)
/* 80008F30 00005E90  41 81 00 24 */	bgt lbl_80008F54
/* 80008F34 00005E94  80 7F 00 00 */	lwz r3, 0(r31)
/* 80008F38 00005E98  38 80 00 01 */	li r4, 1
/* 80008F3C 00005E9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80008F40 00005EA0  48 00 00 29 */	bl __dt__12CPlayerStateFv
/* 80008F44 00005EA4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80008F48 00005EA8  28 03 00 00 */	cmplwi r3, 0
/* 80008F4C 00005EAC  41 82 00 08 */	beq lbl_80008F54
/* 80008F50 00005EB0  48 30 C9 E1 */	bl Free__7CMemoryFPCv
lbl_80008F54:
/* 80008F54 00005EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008F58 00005EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80008F5C 00005EBC  7C 08 03 A6 */	mtlr r0
/* 80008F60 00005EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80008F64 00005EC4  4E 80 00 20 */	blr

.global __dt__12CPlayerStateFv
__dt__12CPlayerStateFv:
/* 80008F68 00005EC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80008F6C 00005ECC  7C 08 02 A6 */	mflr r0
/* 80008F70 00005ED0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80008F74 00005ED4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80008F78 00005ED8  7C 9F 23 78 */	mr r31, r4
/* 80008F7C 00005EDC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80008F80 00005EE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80008F84 00005EE4  41 82 01 08 */	beq lbl_8000908C
/* 80008F88 00005EE8  34 1E 01 88 */	addic. r0, r30, 0x188
/* 80008F8C 00005EEC  41 82 00 4C */	beq lbl_80008FD8
/* 80008F90 00005EF0  34 1E 01 88 */	addic. r0, r30, 0x188
/* 80008F94 00005EF4  41 82 00 44 */	beq lbl_80008FD8
/* 80008F98 00005EF8  80 1E 01 8C */	lwz r0, 0x18c(r30)
/* 80008F9C 00005EFC  80 7E 01 94 */	lwz r3, 0x194(r30)
/* 80008FA0 00005F00  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80008FA4 00005F04  90 61 00 0C */	stw r3, 0xc(r1)
/* 80008FA8 00005F08  7C 64 1B 78 */	mr r4, r3
/* 80008FAC 00005F0C  7C 03 02 14 */	add r0, r3, r0
/* 80008FB0 00005F10  90 61 00 08 */	stw r3, 8(r1)
/* 80008FB4 00005F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008FB8 00005F18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80008FBC 00005F1C  48 00 00 08 */	b lbl_80008FC4
lbl_80008FC0:
/* 80008FC0 00005F20  38 84 00 0C */	addi r4, r4, 0xc
lbl_80008FC4:
/* 80008FC4 00005F24  7C 04 00 40 */	cmplw r4, r0
/* 80008FC8 00005F28  40 82 FF F8 */	bne lbl_80008FC0
/* 80008FCC 00005F2C  28 03 00 00 */	cmplwi r3, 0
/* 80008FD0 00005F30  41 82 00 08 */	beq lbl_80008FD8
/* 80008FD4 00005F34  48 30 C9 5D */	bl Free__7CMemoryFPCv
lbl_80008FD8:
/* 80008FD8 00005F38  34 1E 01 70 */	addic. r0, r30, 0x170
/* 80008FDC 00005F3C  41 82 00 44 */	beq lbl_80009020
/* 80008FE0 00005F40  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 80008FE4 00005F44  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 80008FE8 00005F48  54 00 18 38 */	slwi r0, r0, 3
/* 80008FEC 00005F4C  7C 03 02 14 */	add r0, r3, r0
/* 80008FF0 00005F50  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80008FF4 00005F54  7C 64 1B 78 */	mr r4, r3
/* 80008FF8 00005F58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80008FFC 00005F5C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80009000 00005F60  90 61 00 18 */	stw r3, 0x18(r1)
/* 80009004 00005F64  48 00 00 08 */	b lbl_8000900C
lbl_80009008:
/* 80009008 00005F68  38 84 00 08 */	addi r4, r4, 8
lbl_8000900C:
/* 8000900C 00005F6C  7C 04 00 40 */	cmplw r4, r0
/* 80009010 00005F70  40 82 FF F8 */	bne lbl_80009008
/* 80009014 00005F74  28 03 00 00 */	cmplwi r3, 0
/* 80009018 00005F78  41 82 00 08 */	beq lbl_80009020
/* 8000901C 00005F7C  48 30 C9 15 */	bl Free__7CMemoryFPCv
lbl_80009020:
/* 80009020 00005F80  34 1E 00 24 */	addic. r0, r30, 0x24
/* 80009024 00005F84  41 82 00 58 */	beq lbl_8000907C
/* 80009028 00005F88  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 8000902C 00005F8C  38 60 00 00 */	li r3, 0
/* 80009030 00005F90  2C 05 00 00 */	cmpwi r5, 0
/* 80009034 00005F94  40 81 00 40 */	ble lbl_80009074
/* 80009038 00005F98  2C 05 00 08 */	cmpwi r5, 8
/* 8000903C 00005F9C  38 85 FF F8 */	addi r4, r5, -8
/* 80009040 00005FA0  40 81 00 20 */	ble lbl_80009060
/* 80009044 00005FA4  38 04 00 07 */	addi r0, r4, 7
/* 80009048 00005FA8  54 00 E8 FE */	srwi r0, r0, 3
/* 8000904C 00005FAC  7C 09 03 A6 */	mtctr r0
/* 80009050 00005FB0  2C 04 00 00 */	cmpwi r4, 0
/* 80009054 00005FB4  40 81 00 0C */	ble lbl_80009060
lbl_80009058:
/* 80009058 00005FB8  38 63 00 08 */	addi r3, r3, 8
/* 8000905C 00005FBC  42 00 FF FC */	bdnz lbl_80009058
lbl_80009060:
/* 80009060 00005FC0  7C 03 28 50 */	subf r0, r3, r5
/* 80009064 00005FC4  7C 09 03 A6 */	mtctr r0
/* 80009068 00005FC8  7C 03 28 00 */	cmpw r3, r5
/* 8000906C 00005FCC  40 80 00 08 */	bge lbl_80009074
lbl_80009070:
/* 80009070 00005FD0  42 00 00 00 */	bdnz lbl_80009070
lbl_80009074:
/* 80009074 00005FD4  38 00 00 00 */	li r0, 0
/* 80009078 00005FD8  90 1E 00 24 */	stw r0, 0x24(r30)
lbl_8000907C:
/* 8000907C 00005FDC  7F E0 07 35 */	extsh. r0, r31
/* 80009080 00005FE0  40 81 00 0C */	ble lbl_8000908C
/* 80009084 00005FE4  7F C3 F3 78 */	mr r3, r30
/* 80009088 00005FE8  48 30 C8 A9 */	bl Free__7CMemoryFPCv
lbl_8000908C:
/* 8000908C 00005FEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80009090 00005FF0  7F C3 F3 78 */	mr r3, r30
/* 80009094 00005FF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80009098 00005FF8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8000909C 00005FFC  7C 08 03 A6 */	mtlr r0
/* 800090A0 00006000  38 21 00 30 */	addi r1, r1, 0x30
/* 800090A4 00006004  4E 80 00 20 */	blr

.global sub_800090a8
sub_800090a8:
/* 800090A8 00006008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800090AC 0000600C  7C 08 02 A6 */	mflr r0
/* 800090B0 00006010  90 01 00 24 */	stw r0, 0x24(r1)
/* 800090B4 00006014  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800090B8 00006018  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800090BC 0000601C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800090C0 00006020  7C 9D 23 78 */	mr r29, r4
/* 800090C4 00006024  93 81 00 10 */	stw r28, 0x10(r1)
/* 800090C8 00006028  7C 7C 1B 79 */	or. r28, r3, r3
/* 800090CC 0000602C  41 82 00 58 */	beq lbl_80009124
/* 800090D0 00006030  83 FC 00 04 */	lwz r31, 4(r28)
/* 800090D4 00006034  48 00 00 34 */	b lbl_80009108
lbl_800090D8:
/* 800090D8 00006038  7F FE FB 78 */	mr r30, r31
/* 800090DC 0000603C  83 FF 00 04 */	lwz r31, 4(r31)
/* 800090E0 00006040  34 7E 00 08 */	addic. r3, r30, 8
/* 800090E4 00006044  41 82 00 14 */	beq lbl_800090F8
/* 800090E8 00006048  34 03 00 08 */	addic. r0, r3, 8
/* 800090EC 0000604C  41 82 00 0C */	beq lbl_800090F8
/* 800090F0 00006050  38 63 00 08 */	addi r3, r3, 8
/* 800090F4 00006054  4B FF F6 19 */	bl sub_8000870c
lbl_800090F8:
/* 800090F8 00006058  28 1E 00 00 */	cmplwi r30, 0
/* 800090FC 0000605C  41 82 00 0C */	beq lbl_80009108
/* 80009100 00006060  7F C3 F3 78 */	mr r3, r30
/* 80009104 00006064  48 30 C8 2D */	bl Free__7CMemoryFPCv
lbl_80009108:
/* 80009108 00006068  80 1C 00 08 */	lwz r0, 8(r28)
/* 8000910C 0000606C  7C 1F 00 40 */	cmplw r31, r0
/* 80009110 00006070  40 82 FF C8 */	bne lbl_800090D8
/* 80009114 00006074  7F A0 07 35 */	extsh. r0, r29
/* 80009118 00006078  40 81 00 0C */	ble lbl_80009124
/* 8000911C 0000607C  7F 83 E3 78 */	mr r3, r28
/* 80009120 00006080  48 30 C8 11 */	bl Free__7CMemoryFPCv
lbl_80009124:
/* 80009124 00006084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80009128 00006088  7F 83 E3 78 */	mr r3, r28
/* 8000912C 0000608C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80009130 00006090  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80009134 00006094  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80009138 00006098  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8000913C 0000609C  7C 08 03 A6 */	mtlr r0
/* 80009140 000060A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80009144 000060A4  4E 80 00 20 */	blr
