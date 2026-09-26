.class public final Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/codescanner/QrScannerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;

.field private b:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

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
.method public addLoginCallback(Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;)Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;->a:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;

    return-object p0
.end method

.method public addQrExtCallback(Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;)Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;->b:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;

    return-object p0
.end method

.method public build()Lcom/netease/mpay/codescanner/QrScannerOptions;
    .locals 4

    new-instance v0, Lcom/netease/mpay/codescanner/QrScannerOptions;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;->a:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;->b:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/codescanner/QrScannerOptions;-><init>(Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;Lcom/netease/mpay/codescanner/QrScannerOptions$1;)V

    return-object v0
.end method
