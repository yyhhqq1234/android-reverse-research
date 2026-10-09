.class public Lcom/tencent/igame/priority/sdk/c/d;
.super Lcom/tencent/igame/priority/sdk/c/a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/igame/priority/sdk/c/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_may_ips"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/igame/priority/sdk/c;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/igame/priority/sdk/c;->b(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x2

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/b/a;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/igame/a/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    :goto_0
    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check Priority"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->b()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_4

    const-string v1, "(Use MultiSocket)"

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " Result : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " [duration]="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [wifi]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/igame/a/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Lcom/tencent/igame/priority/sdk/b/a;->a(ILjava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_may_ips"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v5, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/env/Env;->setUdpIp(Ljava/lang/String;)V

    :cond_1
    const-string v1, "igame_priority_sdk_pref_wzry_key_security_device_may_ips"

    array-length v4, v0

    if-lt v4, v8, :cond_3

    aget-object v0, v0, v5

    :goto_2
    invoke-static {v1, v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/tencent/igame/priority/sdk/d/d/a;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/igame/priority/sdk/c/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/tencent/igame/priority/sdk/d/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/d/a;->a()Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v1, ""

    goto :goto_1
.end method

.method protected a()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/igame/priority/sdk/c/a;->a()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:I

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/a/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->b:Ljava/lang/String;

    return-void
.end method

.method protected a(Lcom/tencent/igame/priority/sdk/d/b/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/tencent/igame/priority/sdk/d/b/b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tencent/igame/priority/sdk/d/b/b;

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/a/c;->a()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_ip"

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_port"

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_signature"

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "igame_priority_sdk_pref_wzry_key_corp_id"

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/b;->a()Lcom/tencent/igame/priority/sdk/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/d;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->b(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->b(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/igame/priority/sdk/c/d;->a(I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_ip"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->b(I)V

    goto :goto_0
.end method
