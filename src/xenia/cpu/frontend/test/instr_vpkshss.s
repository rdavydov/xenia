test_vpkshss_0:
  #_ REGISTER_IN v3 [00000001, 00020003, 00040005, 00060007]
  #_ REGISTER_IN v4 [00080009, 000A000B, 000C000D, 000E000F]
  vpkshss v5, v3, v4
  blr
  #_ REGISTER_OUT v3 [00000001, 00020003, 00040005, 00060007]
  #_ REGISTER_OUT v4 [00080009, 000A000B, 000C000D, 000E000F]
  #_ REGISTER_OUT v5 [00010203, 04050607, 08090A0B, 0C0D0E0F]

test_vpkshss_1:
  #_ REGISTER_IN v3 [7FFF8000, 00020003, 00040005, 00060007]
  #_ REGISTER_IN v4 [7FFF8000, 000A000B, 000C000D, 000E000F]
  vpkshss v5, v3, v4
  blr
  #_ REGISTER_OUT v3 [7FFF8000, 00020003, 00040005, 00060007]
  #_ REGISTER_OUT v4 [7FFF8000, 000A000B, 000C000D, 000E000F]
  #_ REGISTER_OUT v5 [7F800203, 04050607, 7F800A0B, 0C0D0E0F]