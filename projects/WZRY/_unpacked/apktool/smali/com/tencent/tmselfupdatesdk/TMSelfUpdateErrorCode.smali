.class public Lcom/tencent/tmselfupdatesdk/TMSelfUpdateErrorCode;
.super Lcom/tencent/tmassistantbase/common/TMAssistantDownloadErrorCode;
.source "ProGuard"


# static fields
.field public static final SelfUpdateSDKErrorCode_CheckUpdate_FAILED:I = -0xc

.field public static final SelfUpdateSDKErrorCode_CheckUpdate_RESPONSE_IS_NULL:I = -0xd

.field public static final SelfUpdateSDKErrorCode_DownloadSDKTaskState_FAILED:I = -0x11

.field public static final SelfUpdateSDKErrorCode_DwonloadSDKServiceInvalid:I = -0x10

.field public static final SelfUpdateSDKErrorCode_GenNewApk_newapk_isnotinstall:I = -0xb

.field public static final SelfUpdateSDKErrorCode_GenNewApk_newgenapk_not_found:I = -0x3

.field public static final SelfUpdateSDKErrorCode_GenNewApk_openoldapk_failed_io:I = -0x1

.field public static final SelfUpdateSDKErrorCode_GenNewApk_patchfile_data_error:I = -0x8

.field public static final SelfUpdateSDKErrorCode_GenNewApk_patchfile_not_found:I = -0x2

.field public static final SelfUpdateSDKErrorCode_GenNewApk_read_patch_classnotfound:I = -0x6

.field public static final SelfUpdateSDKErrorCode_GenNewApk_read_patch_io:I = -0x5

.field public static final SelfUpdateSDKErrorCode_GenNewApk_readitemcount_io:I = -0x4

.field public static final SelfUpdateSDKErrorCode_GenNewApk_write_cdfh_io:I = -0x7

.field public static final SelfUpdateSDKErrorCode_GenNewApk_write_endofcdr:I = -0x9

.field public static final SelfUpdateSDKErrorCode_GenNewApk_write_lfh:I = -0xa

.field public static final SelfUpdateSDKErrorCode_GetDownloadTaskState_IS_NULL:I = -0x13

.field public static final SelfUpdateSDKErrorCode_NONE:I = 0x0

.field public static final SelfUpdateSDKErrorCode_NO_Update:I = -0xf

.field public static final SelfUpdateSDKErrorCode_New_Pakage_EXISTS:I = -0xe

.field public static final SelfUpdateSDKErrorCode_TMAssistantDownloadSDKClient_IS_NULL:I = -0x12

.field public static final SelfUpdateSDKErrorCode_UNKNOWN_EXCEPTION:I = -0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tencent/tmassistantbase/common/TMAssistantDownloadErrorCode;-><init>()V

    return-void
.end method
