.class public final Lcom/netease/mobile/link/MobileLinkActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/r3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/MobileLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/MobileLinkActivity;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/MobileLinkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/MobileLinkActivity;->b:Lcom/netease/mobile/link/r3;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/netease/mobile/link/r3;->a()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/MobileLinkActivity;->b:Lcom/netease/mobile/link/r3;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/mobile/link/r3;->a(I)V

    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/MobileLinkActivity;->b:Lcom/netease/mobile/link/r3;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/netease/mobile/link/r3;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/netease/mobile/link/a5;->l:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/netease/mobile/link/f6;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    iget-boolean v0, v0, Lcom/netease/mobile/link/f6;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/MobileLinkActivity;->b:Lcom/netease/mobile/link/r3;

    if-eqz v0, :cond_4

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mobile/link/r3;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/MobileLinkActivity;->b:Lcom/netease/mobile/link/r3;

    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, v0, Lcom/netease/mobile/link/a5;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 9
    iget-object v0, v0, Lcom/netease/mobile/link/MobileLinkActivity;->b:Lcom/netease/mobile/link/r3;

    .line 10
    invoke-interface {v0}, Lcom/netease/mobile/link/r3;->a()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 11
    iget-object v0, v0, Lcom/netease/mobile/link/MobileLinkActivity;->b:Lcom/netease/mobile/link/r3;

    .line 12
    invoke-interface {v0}, Lcom/netease/mobile/link/r3;->b()V

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$a;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
