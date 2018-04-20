LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

SOURCE_PATH = $(LOCAL_PATH)/../../..

libhevc_source_dir := $(SOURCE_PATH)

## Arch-common settings
LOCAL_MODULE := libhevcdec

ifeq ($(LIBHEVC_EXECUTABLES),true)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_CFLAGS +=  -D_LIB -DMULTICORE -fPIE -pie
LOCAL_LDFLAGS += -pie -fPIE
else
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_CFLAGS += -D_LIB -DMULTICORE -fPIC
endif


LOCAL_CFLAGS += -O2 -DANDROID

LOCAL_C_INCLUDES := $(SOURCE_PATH)/decoder $(SOURCE_PATH)/common

libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_quant_tables.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_inter_pred_filters.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_weighted_pred.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_padding.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_deblk_edge_filter.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_deblk_tables.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_cabac_tables.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_common_tables.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_intra_pred_filters.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_chroma_intra_pred_filters.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_mem_fns.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_sao.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_trans_tables.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_recon.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_itrans.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_itrans_recon.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_iquant_recon.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_iquant_itrans_recon.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_itrans_recon_32x32.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_itrans_recon_16x16.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_itrans_recon_8x8.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_chroma_itrans_recon.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_chroma_iquant_recon.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_chroma_iquant_itrans_recon.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_chroma_recon.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_chroma_itrans_recon_16x16.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_chroma_itrans_recon_8x8.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_buf_mgr.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_disp_mgr.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ihevc_dpb_mgr.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/common/ithread.c



libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_version.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_api.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_decode.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_nal.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_bitstream.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_parse_headers.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_parse_slice_header.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_parse_slice.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_parse_residual.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_cabac.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_intra_pred_mode_prediction.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_process_slice.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_utils.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_job_queue.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_ref_list.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_get_mv.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_mv_pred.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_mv_merge.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_iquant_itrans_recon_ctb.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_itrans_recon_dc.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_common_tables.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_boundary_strength.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_deblk.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_inter_pred.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_sao.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_ilf_padding.c
libhevcd_srcs_c   +=  $(SOURCE_PATH)/decoder/ihevcd_fmt_conv.c

ifeq ($(LIBHEVC_EXECUTABLES),true)
LOCAL_CFLAGS += -DMD5_DISABLE
LOCAL_CFLAGS += -DPRINT_PICSIZE
libhevcd_srcs_c   +=  $(SOURCE_PATH)/test/decoder/main.c
endif

LOCAL_SRC_FILES := $(libhevcd_srcs_c) $(libhevcd_srcs_asm)


# Load the arch-specific settings


ifeq ($(LIBHEVC_ARM),true)
include $(LOCAL_PATH)/decoder.arm.mk
LOCAL_SRC_FILES += $(LOCAL_SRC_FILES_arm) 
LOCAL_CFLAGS += $(LOCAL_CFLAGS_arm) 
LOCAL_C_INCLUDES += $(LOCAL_C_INCLUDES_arm)
endif

ifeq ($(LIBHEVC_ARM64),true)
include $(LOCAL_PATH)/decoder.arm64.mk
LOCAL_SRC_FILES += $(LOCAL_SRC_FILES_arm64) 
LOCAL_CFLAGS += $(LOCAL_CFLAGS_arm64) 
LOCAL_C_INCLUDES += $(LOCAL_C_INCLUDES_arm64)
endif

ifeq ($(LIBHEVC_X86),true)
include $(LOCAL_PATH)/decoder.x86.mk
LOCAL_SRC_FILES += $(LOCAL_SRC_FILES_x86) 
LOCAL_CFLAGS += $(LOCAL_CFLAGS_x86) 
LOCAL_C_INCLUDES += $(LOCAL_C_INCLUDES_x86)
endif

ifeq ($(LIBHEVC_X64),true)
include $(LOCAL_PATH)/decoder.x86_64.mk
LOCAL_SRC_FILES += $(LOCAL_SRC_FILES_x86_64) 
LOCAL_CFLAGS += $(LOCAL_CFLAGS_x86_64) 
LOCAL_C_INCLUDES += $(LOCAL_C_INCLUDES_x86_64)
endif


ifeq ($(LIBHEVC_EXECUTABLES),true)
include $(BUILD_EXECUTABLE)
else
include $(BUILD_STATIC_LIBRARY)
endif

