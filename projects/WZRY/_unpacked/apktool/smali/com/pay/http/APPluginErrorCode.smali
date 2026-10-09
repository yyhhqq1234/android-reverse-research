.class public Lcom/pay/http/APPluginErrorCode;
.super Ljava/lang/Object;
.source "APPluginErrorCode.java"


# static fields
.field public static final ERROR_APP_REGETKEYERROR:I = 0x1389

.field public static final ERROR_APP_SYSTEM:I = 0x7d0

.field public static final ERROR_APP_SYSTEM_KEYNULL:I = 0x7d1

.field public static final ERROR_APP_TENPAY:I = 0xbb8

.field public static final ERROR_APP_TENPAY_RET3:I = 0xbbb

.field public static final ERROR_APP_TENPAY_RET4:I = 0xbbc

.field public static final ERROR_APP_TENPAY_RET5:I = 0xbbd

.field public static final ERROR_APP_WECHAT:I = 0xfa0

.field public static final ERROR_APP_WECHAT_RET:I = 0xfa1

.field public static final ERROR_NETWORK_CONTENTNULL:I = 0x3ec

.field public static final ERROR_NETWORK_CONTIMEOUT:I = 0x3e9

.field public static final ERROR_NETWORK_HTTPSTIMES:I = 0x44c

.field public static final ERROR_NETWORK_JOSNFORMT:I = 0x3eb

.field public static final ERROR_NETWORK_READTIMEOUT:I = 0x3ea

.field public static final ERROR_NETWORK_SYSTEM:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCode(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(100-100-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
