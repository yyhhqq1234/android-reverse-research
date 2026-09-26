.class public Lcom/netease/cloud/nos/android/pipeline/PipelineCode;
.super Ljava/lang/Object;
.source "PipelineCode.java"


# static fields
.field public static final BACK_OFFSET:I = 0xd

.field public static final CHANNEL_EXCEPTION:I = 0x2

.field public static final CHANNEL_INACTIVE:I = 0x1

.field public static final FAILED_BREAK_RESP:I = 0x4

.field public static final FAILED_READFILE:I = 0xb

.field public static final FAILED_UPLOAD_RESP:I = 0x7

.field public static final INVALID_BREAK_OFFSET:I = 0x5

.field public static final INVALID_SENDOFFSET:I = 0xa

.field public static final INVALID_UPLOAD_OFFSET:I = 0x9

.field public static final INVALID_UPLOAD_RESP:I = 0x8

.field public static final NO_BREAK_RESP:I = 0x3

.field public static final NO_UPLOAD_RESP:I = 0x6

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_REASON:I = 0xe

.field public static final UPLOAD_CANCELLED:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDes(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 34
    const-string v0, "failed with unknown reason"

    .line 35
    .local v0, "str":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 49
    :goto_0
    return-object v0

    .line 37
    :sswitch_0
    const-string v0, "file upload success"

    .line 38
    goto :goto_0

    .line 40
    :sswitch_1
    const-string v0, "channel is inactive"

    .line 41
    goto :goto_0

    .line 43
    :sswitch_2
    const-string v0, "channel exception is catched"

    .line 44
    goto :goto_0

    .line 46
    :sswitch_3
    const-string v0, "failed with unknown reason"

    goto :goto_0

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method public static isSuccess(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
