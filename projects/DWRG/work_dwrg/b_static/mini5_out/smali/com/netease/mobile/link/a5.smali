.class public final Lcom/netease/mobile/link/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static r:Lcom/netease/mobile/link/a5;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/netease/mobile/link/f;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/netease/mobile/link/f6;

.field public h:Z

.field public i:Lcom/netease/mobile/link/t;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

.field public o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

.field public p:Z

.field public q:Lcom/netease/mobile/link/relatelogin/OnRelatedLoginDisabledCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mobile/link/a5;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/mobile/link/a5;->l:Z

    iput-boolean v0, p0, Lcom/netease/mobile/link/a5;->m:Z

    new-instance v0, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    invoke-direct {v0}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;-><init>()V

    iput-object v0, p0, Lcom/netease/mobile/link/a5;->n:Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    new-instance v0, Lcom/netease/mobile/link/s3;

    invoke-direct {v0}, Lcom/netease/mobile/link/s3;-><init>()V

    iput-object v0, p0, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    return-void
.end method

.method public static e()Lcom/netease/mobile/link/a5;
    .locals 2

    const-class v0, Lcom/netease/mobile/link/a5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/a5;->r:Lcom/netease/mobile/link/a5;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/a5;

    invoke-direct {v1}, Lcom/netease/mobile/link/a5;-><init>()V

    sput-object v1, Lcom/netease/mobile/link/a5;->r:Lcom/netease/mobile/link/a5;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/netease/mobile/link/a5;->r:Lcom/netease/mobile/link/a5;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()Lcom/netease/mobile/link/f;
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/a5;->b:Lcom/netease/mobile/link/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mobile/link/f;

    iget-object v1, p0, Lcom/netease/mobile/link/a5;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/mobile/link/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mobile/link/a5;->b:Lcom/netease/mobile/link/f;

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/a5;->b:Lcom/netease/mobile/link/f;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "game_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobile/link/a5;->c:Ljava/lang/String;

    const-string v0, "yd_business_id"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobile/link/a5;->f:Ljava/lang/String;

    const-string v0, "app_channel"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobile/link/a5;->e:Ljava/lang/String;

    const-string v0, "login_channel"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobile/link/a5;->d:Ljava/lang/String;

    new-instance v0, Lcom/netease/mobile/link/f6;

    invoke-direct {v0}, Lcom/netease/mobile/link/f6;-><init>()V

    const-string v2, "uid"

    .line 1
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->a:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->b:Ljava/lang/String;

    const-string v2, "ticket"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->e:Ljava/lang/String;

    const-string v2, "is_mpay_ticket"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/netease/mobile/link/f6;->f:Z

    const/4 v2, -0x1

    const-string v4, "login_type"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/netease/mobile/link/f6;->m:I

    const-string v2, "bind_status"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/netease/mobile/link/f6;->n:I

    const-string v2, "link_mobile"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->h:Ljava/lang/String;

    const-string v2, "inputed_link_mobile"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    const-string v2, "history_mobile"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->j:Ljava/lang/String;

    const-string v2, "yd_phone_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->k:Ljava/lang/String;

    const-string v2, "yd_pre_num"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->l:Ljava/lang/String;

    const-string v2, "update_ticket"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mobile/link/f6;->o:Ljava/lang/String;

    const-string v1, "need_reverify"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/netease/mobile/link/f6;->p:Z

    .line 2
    iget-object p1, v0, Lcom/netease/mobile/link/f6;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/netease/mobile/link/f6;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    .line 3
    iput-object v0, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    :cond_3
    return-void
.end method

.method public final a(Lcom/netease/mobile/link/UserData;)V
    .locals 2

    iget-object v0, p1, Lcom/netease/mobile/link/UserData;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/netease/mobile/link/UserData;->ticket:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/netease/mobile/link/UserData;->uid:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mobile/link/f6;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netease/mobile/link/UserData;->ticket:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    iget-object v1, v1, Lcom/netease/mobile/link/f6;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netease/mobile/link/UserData;->forceUpdateTicket:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    iget-object v1, v1, Lcom/netease/mobile/link/f6;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Lcom/netease/mobile/link/f6;

    invoke-direct {v0}, Lcom/netease/mobile/link/f6;-><init>()V

    iput-object v0, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    iget-object v1, p1, Lcom/netease/mobile/link/UserData;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mobile/link/f6;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mobile/link/UserData;->ticket:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mobile/link/f6;->e:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/netease/mobile/link/UserData;->isMpayTicket:Z

    iput-boolean v1, v0, Lcom/netease/mobile/link/f6;->f:Z

    iget-object v1, p1, Lcom/netease/mobile/link/UserData;->roleId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mobile/link/f6;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mobile/link/UserData;->hostId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mobile/link/f6;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/UserData;->forceUpdateTicket:Ljava/lang/String;

    iput-object p1, v0, Lcom/netease/mobile/link/f6;->g:Ljava/lang/String;

    const/4 p1, 0x0

    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter setLogout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 7
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-boolean p1, p0, Lcom/netease/mobile/link/a5;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter setReturnSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 4
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-boolean p1, p0, Lcom/netease/mobile/link/a5;->l:Z

    return-void
.end method

.method public final b()Lcom/netease/mobile/link/t;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/a5;->i:Lcom/netease/mobile/link/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mobile/link/t;

    invoke-direct {v0}, Lcom/netease/mobile/link/t;-><init>()V

    iput-object v0, p0, Lcom/netease/mobile/link/a5;->i:Lcom/netease/mobile/link/t;

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/a5;->i:Lcom/netease/mobile/link/t;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/a5;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netease/mobile/link/f6;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netease/mobile/link/f6;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netease/mobile/link/f6;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 4

    iget-object v0, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1
    iget v0, v0, Lcom/netease/mobile/link/f6;->m:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mobile/link/f6;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/a5;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/h6;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
