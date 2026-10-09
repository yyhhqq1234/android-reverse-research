.class public Lcom/tencent/igame/priority/sdk/c/f;
.super Lcom/tencent/igame/priority/sdk/c/a;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/igame/priority/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/igame/priority/sdk/env/Env;->getHeartbeatDelay()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/igame/priority/sdk/c/f;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/igame/priority/sdk/c/f;-><init>(Landroid/content/Context;)V

    iput-wide p2, p0, Lcom/tencent/igame/priority/sdk/c/f;->b:J

    return-void
.end method


# virtual methods
.method protected a()Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 4

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/d/c;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/f;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/igame/priority/sdk/d/d/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "igame_priority_sdk_pref_wzry_key_security_device_ip"

    invoke-static {v2}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "igame_priority_sdk_pref_wzry_key_security_device_port"

    invoke-static {v3}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/igame/priority/sdk/e/b;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/d/c;->a(Ljava/net/SocketAddress;)Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/igame/priority/sdk/c/a;->a()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c/f;->a:I

    const-string v0, "igame_priority_sdk_pref_wzry_key_device_id"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/f;->a:Ljava/lang/String;

    return-void
.end method

.method protected a(Lcom/tencent/igame/priority/sdk/d/b/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/f;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x271b -> :sswitch_0
        0x271c -> :sswitch_0
        0x271e -> :sswitch_1
        0x2726 -> :sswitch_0
    .end sparse-switch
.end method

.method protected b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/tencent/igame/priority/sdk/c/f;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/c;->a(IJ)V

    return-void
.end method
