.class Lcom/tencent/msdk/dns/MSDKDnsResolver$c;
.super Ljava/lang/Object;
.source "MSDKDnsResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/dns/MSDKDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

.field private b:Lcom/tencent/msdk/dns/b;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V
    .locals 1

    .prologue
    .line 249
    iput-object p1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->c:Z

    .line 250
    iput-object p2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->b:Lcom/tencent/msdk/dns/b;

    .line 251
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->c:Z

    .line 255
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->c:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->b:Lcom/tencent/msdk/dns/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/msdk/dns/b;->p:J

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->b:Lcom/tencent/msdk/dns/b;

    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->b:Lcom/tencent/msdk/dns/b;

    invoke-virtual {v2}, Lcom/tencent/msdk/dns/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/dns/b;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->c:Z

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_1
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 269
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->b:Lcom/tencent/msdk/dns/b;

    iget-wide v2, v2, Lcom/tencent/msdk/dns/b;->p:J

    sub-long/2addr v0, v2

    .line 270
    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->b:Lcom/tencent/msdk/dns/b;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/msdk/dns/b;->b(J)V

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalDns is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->b:Lcom/tencent/msdk/dns/b;

    iget-object v3, v3, Lcom/tencent/msdk/dns/b;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", LocalDns cost time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->b:Lcom/tencent/msdk/dns/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
