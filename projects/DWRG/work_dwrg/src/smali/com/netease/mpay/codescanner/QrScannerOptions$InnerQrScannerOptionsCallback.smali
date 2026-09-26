.class Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;
.implements Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/codescanner/QrScannerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerQrScannerOptionsCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/QrScannerOptions;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/QrScannerOptions;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;->a:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFetchQrCode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;->a:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/QrScannerOptions;->b(Lcom/netease/mpay/codescanner/QrScannerOptions;)Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;->a:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/QrScannerOptions;->b(Lcom/netease/mpay/codescanner/QrScannerOptions;)Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;->onFetchQrCode(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFetchQrCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/User;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;->a:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/QrScannerOptions;->a(Lcom/netease/mpay/codescanner/QrScannerOptions;)Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;->a:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/QrScannerOptions;->a(Lcom/netease/mpay/codescanner/QrScannerOptions;)Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    return-void
.end method
