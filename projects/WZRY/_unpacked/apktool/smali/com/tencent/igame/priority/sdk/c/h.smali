.class public Lcom/tencent/igame/priority/sdk/c/h;
.super Lcom/tencent/igame/priority/sdk/c/a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/igame/priority/sdk/c/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 4

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/d/e;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/c/h;->b:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/igame/priority/sdk/c/h;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/d/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

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

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/d/e;->a(Ljava/net/SocketAddress;)Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    const-string v1, "igame_priority_sdk_pref_wzry_key_device_detail"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected a()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/igame/priority/sdk/c/a;->a()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c/h;->a:I

    const-string v0, "igame_priority_sdk_pref_wzry_key_device_detail"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/h;->b:Ljava/lang/String;

    const-string v0, "igame_priority_sdk_pref_wzry_key_device_id"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/h;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/igame/a/a/c;->a()I

    move-result v0

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c/h;->b:I

    return-void
.end method

.method protected a(Lcom/tencent/igame/priority/sdk/d/b/a;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/tencent/igame/priority/sdk/d/b/f;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/tencent/igame/priority/sdk/d/b/f;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/f;->a()Lcom/tencent/igame/priority/sdk/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/f;->a()Lcom/tencent/igame/priority/sdk/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/f;->a()Lcom/tencent/igame/priority/sdk/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/b;->a()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Token Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/tencent/igame/priority/sdk/b/a;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/f;->a()Lcom/tencent/igame/priority/sdk/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/igame/priority/sdk/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/f;->a()Lcom/tencent/igame/priority/sdk/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/igame/priority/sdk/a/b;->a()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/h;->b()V

    const-string v1, "igame_priority_sdk_pref_wzry_key_priority_token"

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/f;->a()Lcom/tencent/igame/priority/sdk/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/igame/priority/sdk/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "igame_priority_sdk_pref_wzry_key_priority_token_expire"

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/f;->a()Lcom/tencent/igame/priority/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/a/b;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "igame_priority_sdk_pref_wzry_key_priority_token_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v0

    const-string v1, "Request Token Result : [result]=1 [errorMsg]=Data Empty Error"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/igame/priority/sdk/b/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Token Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/tencent/igame/priority/sdk/b/a;->a(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x271b -> :sswitch_0
        0x271c -> :sswitch_0
        0x2726 -> :sswitch_0
    .end sparse-switch
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    return-void
.end method
