.class Lcom/netease/ntunisdk/SdkNetease$3;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNetease;->presentQRCodeScanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNetease;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/ntunisdk/SdkNetease;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$3;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginSuccess(Lcom/netease/mpay/User;)V
    .locals 6
    .param p1, "user"    # Lcom/netease/mpay/User;

    .prologue
    const/4 v5, 0x0

    .line 877
    const-string v0, "UniSDK netease"

    const-string v1, "QrCodeScannerLoginCallback onLoginSuccess, uid=%s, token=%s, userName=%s, deviceId=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/netease/mpay/User;->uid:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/netease/mpay/User;->token:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/netease/mpay/User;->nickname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/netease/mpay/User;->devId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$3;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "WEB_UID"

    iget-object v2, p1, Lcom/netease/mpay/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$3;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "WEB_SESSION"

    iget-object v2, p1, Lcom/netease/mpay/User;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$3;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-static {v0, v5}, Lcom/netease/ntunisdk/SdkNetease;->access$400(Lcom/netease/ntunisdk/SdkNetease;I)V

    .line 883
    return-void
.end method
