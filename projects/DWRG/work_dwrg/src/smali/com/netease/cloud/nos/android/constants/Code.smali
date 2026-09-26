.class public Lcom/netease/cloud/nos/android/constants/Code;
.super Ljava/lang/Object;
.source "Code.java"


# static fields
.field public static final BAD_REQUEST:I = 0x190

.field public static final CACHE_EXPIRED:I = 0x194

.field public static final CALLBACK_ERROR:I = 0x208

.field public static final CONNECTION_REFUSED:I = 0x385

.field public static final CONNECTION_RESET:I = 0x386

.field public static final CONNECTION_TIMEOUT:I = 0x384

.field public static final HTTP_EXCEPTION:I = 0x31f

.field public static final HTTP_NO_RESPONSE:I = 0x383

.field public static final HTTP_SUCCESS:I = 0xc8

.field public static final INVALID_LBS_DATA:I = 0x2bc

.field public static final INVALID_OFFSET:I = 0x2bb

.field public static final INVALID_RESPONSE_DATA:I = 0x2bd

.field public static final INVALID_TOKEN:I = 0x193

.field public static final LBS_ERROR:I = 0x190

.field public static final MONITOR_CANCELED:I = 0x2

.field public static final MONITOR_FAIL:I = 0x1

.field public static final MONITOR_SUCCESS:I = 0x0

.field public static final SERVER_ERROR:I = 0x1f4

.field public static final SOCKET_TIMEOUT:I = 0x387

.field public static final SSL_FAILED:I = 0x388

.field public static final UNKNOWN_REASON:I = 0x3e7

.field public static final UPLOADING_CANCEL:I = 0x258


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
    .line 40
    const-string v0, "could not upload file with unknown reason, please contact with us"

    .line 41
    .local v0, "str":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 70
    :goto_0
    return-object v0

    .line 43
    :sswitch_0
    const-string v0, "file upload success"

    .line 44
    goto :goto_0

    .line 46
    :sswitch_1
    const-string v0, "bad request, please confirm the sdk usage"

    .line 47
    goto :goto_0

    .line 49
    :sswitch_2
    const-string v0, "could not upload file with invalid token, please change your token before uploading"

    .line 50
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v0, "could not upload file with server inner error, please contact with us"

    .line 53
    goto :goto_0

    .line 55
    :sswitch_4
    const-string v0, "could not upload file with http exception, please wait for network recover"

    .line 56
    goto :goto_0

    .line 58
    :sswitch_5
    const-string v0, "could not upload file with no http response, please contact with us"

    .line 59
    goto :goto_0

    .line 61
    :sswitch_6
    const-string v0, "could not upload file with callback error."

    .line 62
    goto :goto_0

    .line 64
    :sswitch_7
    const-string v0, "could not upload file with invalid break point offset."

    .line 65
    goto :goto_0

    .line 67
    :sswitch_8
    const-string v0, "could not upload file with unknown reason, please contact with us"

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x193 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x208 -> :sswitch_6
        0x2bb -> :sswitch_7
        0x31f -> :sswitch_4
        0x383 -> :sswitch_5
        0x3e7 -> :sswitch_8
    .end sparse-switch
.end method

.method public static isOK(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 32
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
