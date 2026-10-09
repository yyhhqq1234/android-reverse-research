.class public Lcom/tencent/msdk/dns/HttpDnsCache$ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HttpDnsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/dns/HttpDnsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectivityChangeReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "Connectivity changed clean cache"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->b(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 29
    :cond_0
    return-void
.end method
