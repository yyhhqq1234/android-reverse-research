.class public final Lcom/netease/mobile/link/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mobile/link/n<",
        "Lcom/netease/mobile/link/r4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/b5;

.field public final synthetic b:Lcom/netease/mobile/link/MobileLinkActivity;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/MobileLinkActivity;Lcom/netease/mobile/link/b5;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/n3;->b:Lcom/netease/mobile/link/MobileLinkActivity;

    iput-object p2, p0, Lcom/netease/mobile/link/n3;->a:Lcom/netease/mobile/link/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/r4;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/netease/mobile/link/n3;->b:Lcom/netease/mobile/link/MobileLinkActivity;

    iget-object v0, p0, Lcom/netease/mobile/link/n3;->a:Lcom/netease/mobile/link/b5;

    sget-object v2, Lcom/netease/mobile/link/MobileLinkActivity;->TAG:Ljava/lang/String;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v2, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 3
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->n:Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    .line 5
    invoke-virtual {v0}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->isForceGuide()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/mobile/link/a5;->a(Z)V

    invoke-virtual {p1}, Lcom/netease/mobile/link/MobileLinkActivity;->b()V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->isNonForceGuide()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netease/mobile/link/z3;->b()Lcom/netease/mobile/link/z3;

    move-result-object v1

    sget v2, Lcom/netease/mobile/link/R$id;->tv_mobile_link__skip:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v0, v0, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->skipTime:I

    new-instance v3, Lcom/netease/mobile/link/o3;

    invoke-direct {v3, p1}, Lcom/netease/mobile/link/o3;-><init>(Lcom/netease/mobile/link/MobileLinkActivity;)V

    monitor-enter v1

    :try_start_0
    const-string v4, "NonForceGuideTimer init"

    const-string v5, "MobileLink"

    .line 7
    invoke-static {v5, v4}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/netease/mobile/link/z3;->e()V

    iput-object p1, v1, Lcom/netease/mobile/link/z3;->a:Landroid/app/Activity;

    iput-object v2, v1, Lcom/netease/mobile/link/z3;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v0, v1, Lcom/netease/mobile/link/z3;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 9
    invoke-virtual {p1}, Lcom/netease/mobile/link/MobileLinkActivity;->b()V

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_1
    invoke-virtual {v0}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->isGuideSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p4;->a()V

    .line 10
    invoke-virtual {p1}, Lcom/netease/mobile/link/MobileLinkActivity;->a()V

    iget-object v0, p1, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    .line 11
    new-instance v1, Lcom/netease/mobile/link/m0;

    const-class v3, Lcom/netease/mobile/link/v0;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto/16 :goto_5

    .line 13
    :cond_2
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p4;->a()V

    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/MobileLinkActivity$a;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 14
    :cond_3
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 16
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object v4

    iget-boolean v4, v4, Lcom/netease/mobile/link/t;->c:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget v2, v2, Lcom/netease/mobile/link/f6;->n:I

    if-ne v2, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/p4;->a()V

    iget-object v1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    sget-object v2, Lcom/netease/mobile/link/b5;->d:Lcom/netease/mobile/link/b5;

    iget-object v4, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    invoke-static {v2, v4}, Lcom/netease/mobile/link/p0;->a(Lcom/netease/mobile/link/b5;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    goto/16 :goto_5

    .line 17
    :cond_6
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 19
    iget v1, v1, Lcom/netease/mobile/link/f6;->m:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    .line 20
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/p4;->a()V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/netease/mobile/link/a5;->a(Z)V

    iget-object v1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    .line 21
    new-instance v2, Lcom/netease/mobile/link/m0;

    const-class v3, Lcom/netease/mobile/link/a3;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    .line 22
    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto/16 :goto_5

    :cond_8
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/a5;->i()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netease/mobile/link/a5;->a(Z)V

    sget-object v1, Lcom/netease/mobile/link/b5;->b:Lcom/netease/mobile/link/b5;

    .line 23
    iget-object v0, v0, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v0, v1, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 25
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLinkPhone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MobileLink"

    .line 26
    invoke-static {v2, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 29
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mobile/link/t;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mobile/link/a5;->j()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, "MobileLink"

    const-string v2, "startLinkPhone: YD is available"

    .line 30
    invoke-static {v1, v2}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/netease/mobile/link/m4;

    new-instance v2, Lcom/netease/mobile/link/p3;

    invoke-direct {v2, p1, v0}, Lcom/netease/mobile/link/p3;-><init>(Lcom/netease/mobile/link/MobileLinkActivity;Lcom/netease/mobile/link/f6;)V

    invoke-direct {v1, p1, v2}, Lcom/netease/mobile/link/m4;-><init>(Landroid/app/Activity;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/f5;->a()V

    goto/16 :goto_5

    :cond_a
    const-string v2, "MobileLink"

    const-string v3, "startLinkPhone: YD is not available"

    .line 32
    invoke-static {v2, v3}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mobile/link/p4;->a()V

    iget-object v0, v0, Lcom/netease/mobile/link/f6;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/netease/mobile/link/p0;->b(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    goto :goto_3

    :cond_b
    iget-object v0, p1, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/netease/mobile/link/p0;->f(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    :goto_3
    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_5

    .line 34
    :cond_c
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/p4;->a()V

    sget-object v1, Lcom/netease/mobile/link/b5;->i:Lcom/netease/mobile/link/b5;

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 35
    iget-object v1, v1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 36
    iget-boolean v1, v1, Lcom/netease/mobile/link/f6;->p:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netease/mobile/link/a5;->p:Z

    if-nez v1, :cond_d

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/mobile/link/a5;->a(Z)V

    iget-object v0, p1, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    sget-object v1, Lcom/netease/mobile/link/b5;->j:Lcom/netease/mobile/link/b5;

    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    invoke-static {v1, p1}, Lcom/netease/mobile/link/p0;->a(Lcom/netease/mobile/link/b5;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_5

    :cond_d
    iget-object v1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    invoke-static {v0, p1}, Lcom/netease/mobile/link/p0;->a(Lcom/netease/mobile/link/b5;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_5

    .line 37
    :cond_e
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p4;->a()V

    iget-object v0, p0, Lcom/netease/mobile/link/n3;->b:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 38
    iget-object v0, v0, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    .line 39
    iget p1, p1, Lcom/netease/mobile/link/v4;->c:I

    if-ne p1, v1, :cond_f

    const/16 p1, 0x67

    goto :goto_4

    :cond_f
    const/16 p1, 0x66

    :goto_4
    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/MobileLinkActivity$a;->a(I)V

    :goto_5
    return-void
.end method
