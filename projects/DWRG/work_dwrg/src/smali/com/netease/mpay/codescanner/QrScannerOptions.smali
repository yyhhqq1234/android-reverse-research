.class public Lcom/netease/mpay/codescanner/QrScannerOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;,
        Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;,
        Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;,
        Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;

.field private b:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;

.field private c:Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/codescanner/QrScannerOptions;->a:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;

    iput-object p2, p0, Lcom/netease/mpay/codescanner/QrScannerOptions;->b:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;

    new-instance v0, Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;

    invoke-direct {v0, p0}, Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;-><init>(Lcom/netease/mpay/codescanner/QrScannerOptions;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions;->c:Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;

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

.method synthetic constructor <init>(Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;Lcom/netease/mpay/codescanner/QrScannerOptions$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/codescanner/QrScannerOptions;-><init>(Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/QrScannerOptions;)Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions;->a:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/codescanner/QrScannerOptions;)Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions;->b:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions;->a:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions;->b:Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/QrScannerOptions;->c:Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;

    return-object v0
.end method
