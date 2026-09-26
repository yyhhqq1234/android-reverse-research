.class Lcom/netease/mpay/he;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/MpayApi$a;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/netease/mpay/QrCodeScannerCallback;

.field final synthetic c:Lcom/netease/mpay/codescanner/QrScannerOptions;

.field final synthetic d:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Ljava/util/HashMap;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/he;->d:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/he;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/netease/mpay/he;->b:Lcom/netease/mpay/QrCodeScannerCallback;

    iput-object p4, p0, Lcom/netease/mpay/he;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

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
.method public a()V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/mpay/he;->a:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/he;->d:Lcom/netease/mpay/MpayApi;

    iget-object v2, p0, Lcom/netease/mpay/he;->d:Lcom/netease/mpay/MpayApi;

    invoke-static {v2}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/he;->b:Lcom/netease/mpay/QrCodeScannerCallback;

    iget-object v4, p0, Lcom/netease/mpay/he;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, ""

    invoke-static {v1}, Lcom/netease/mpay/do;->b(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
