.class Lcom/tencent/msdk/dns/MSDKDnsResolver$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

.field private b:Lcom/tencent/msdk/dns/b;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->c:Z

    .line 212
    iput-object p2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    .line 213
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->c:Z

    .line 217
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->c:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/msdk/dns/b;->o:J

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Lcom/tencent/msdk/dns/b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->c:Z

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    iget-object v0, v0, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    iget-object v1, v1, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/dns/b;->d(Ljava/lang/String;)V

    .line 235
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    iget-wide v2, v2, Lcom/tencent/msdk/dns/b;->o:J

    sub-long/2addr v0, v2

    .line 236
    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/msdk/dns/b;->a(J)V

    .line 237
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 238
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->b:Lcom/tencent/msdk/dns/b;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
