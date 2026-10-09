.class synthetic Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor$1;
.super Ljava/lang/Object;
.source "WXQrCodeLoginRefactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tencent$mm$opensdk$diffdev$OAuthErrCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->values()[Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor$1;->$SwitchMap$com$tencent$mm$opensdk$diffdev$OAuthErrCode:[I

    :try_start_0
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor$1;->$SwitchMap$com$tencent$mm$opensdk$diffdev$OAuthErrCode:[I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor$1;->$SwitchMap$com$tencent$mm$opensdk$diffdev$OAuthErrCode:[I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_Cancel:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor$1;->$SwitchMap$com$tencent$mm$opensdk$diffdev$OAuthErrCode:[I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor$1;->$SwitchMap$com$tencent$mm$opensdk$diffdev$OAuthErrCode:[I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NetworkErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor$1;->$SwitchMap$com$tencent$mm$opensdk$diffdev$OAuthErrCode:[I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_JsonDecodeErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor$1;->$SwitchMap$com$tencent$mm$opensdk$diffdev$OAuthErrCode:[I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_Timeout:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
