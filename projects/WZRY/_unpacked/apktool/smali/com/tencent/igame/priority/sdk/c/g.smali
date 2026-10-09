.class public Lcom/tencent/igame/priority/sdk/c/g;
.super Lcom/tencent/igame/priority/sdk/c/a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/igame/priority/sdk/c/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 8

    const-string v0, "igame_priority_sdk_pref_wzry_key_request_key_expire"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()J

    move-result-wide v2

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/b/a;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "igame_priority_sdk_pref_wzry_key_request_key_update"

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/e/b;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a(I)V

    :goto_0
    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request Key Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/igame/priority/sdk/b/a;->a(ILjava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "igame_priority_sdk_pref_wzry_key_request_key_expire"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tencent/igame/priority/sdk/e/b;

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/d/d;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/c/g;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/igame/priority/sdk/c/g;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/igame/priority/sdk/c/g;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/igame/priority/sdk/c/g;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/igame/priority/sdk/d/d/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/d/d;->a()Lcom/tencent/igame/priority/sdk/d/b/e;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/igame/priority/sdk/c/a;->a()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->a:I

    const-string v0, "igame_priority_sdk_pref_wzry_key_corp_id"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->a:Ljava/lang/String;

    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_signature"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->b:Ljava/lang/String;

    const-string v0, "igame_priority_sdk_pref_wzry_key_device_id"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->d:Ljava/lang/String;

    return-void
.end method

.method protected a(Lcom/tencent/igame/priority/sdk/d/b/a;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/tencent/igame/priority/sdk/d/b/e;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tencent/igame/priority/sdk/d/b/e;

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/e;->a()Lcom/tencent/igame/priority/sdk/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/e;->a()Lcom/tencent/igame/priority/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/e;->a()Lcom/tencent/igame/priority/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/a/d;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "igame_priority_sdk_pref_wzry_key_request_key"

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/e;->a()Lcom/tencent/igame/priority/sdk/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "igame_priority_sdk_pref_wzry_key_request_key_expire"

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/e;->a()Lcom/tencent/igame/priority/sdk/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/d;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "igame_priority_sdk_pref_wzry_key_request_key_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/g;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/g;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    return-void
.end method
