.class Lcom/netease/ntunisdk/SdkNetease$4;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;


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
    .line 868
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$4;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchQrCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "qrCoce"    # Ljava/lang/String;

    .prologue
    .line 871
    const-string v0, "UniSDK netease"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QrCodeScannerExtCallback onFetchQrCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$4;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const/16 v1, 0x15

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/SdkNetease;->access$500(Lcom/netease/ntunisdk/SdkNetease;ILjava/lang/String;)V

    .line 873
    return-void
.end method
