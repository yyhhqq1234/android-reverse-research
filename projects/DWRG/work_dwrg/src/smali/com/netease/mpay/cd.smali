.class public Lcom/netease/mpay/cd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/cd$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

.field private b:Lcom/netease/mpay/cd$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/netease/mpay/cd$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/cd;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/netease/mpay/cd;->b:Lcom/netease/mpay/cd$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/server/response/b;)V
    .locals 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/netease/mpay/server/response/b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/server/response/b;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/server/response/b;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/core/EpayHelper;->initUserByToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/netease/mpay/server/response/b;->e:Ljava/lang/String;

    iget-wide v1, p1, Lcom/netease/mpay/server/response/b;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mpay/server/response/b;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/core/EpayHelper;->initPlatform(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/netease/mpay/server/response/b;->h:Ljava/lang/String;

    iget-wide v1, p1, Lcom/netease/mpay/server/response/b;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/core/EpayHelper;->initSession(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/cd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p1, Lcom/netease/mpay/server/response/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/core/EpayHelper;->fakeUnionPay(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/j;)V
    .locals 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/netease/mpay/server/response/j;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/server/response/j;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/server/response/j;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/core/EpayHelper;->initUserByToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/netease/mpay/server/response/j;->e:Ljava/lang/String;

    iget-wide v1, p1, Lcom/netease/mpay/server/response/j;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mpay/server/response/j;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/core/EpayHelper;->initPlatform(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/netease/mpay/server/response/j;->h:Ljava/lang/String;

    iget-wide v1, p1, Lcom/netease/mpay/server/response/j;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/core/EpayHelper;->initSession(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/cd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p1, Lcom/netease/mpay/server/response/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/core/EpayHelper;->pay(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/netease/epay/sdk/base/event/EpayEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iget v1, p1, Lcom/netease/epay/sdk/base/event/EpayEvent;->biztype:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cd;->b:Lcom/netease/mpay/cd$a;

    invoke-interface {v0}, Lcom/netease/mpay/cd$a;->b()V

    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/cd;->b:Lcom/netease/mpay/cd$a;

    invoke-interface {v0}, Lcom/netease/mpay/cd$a;->a()V

    goto :goto_0
.end method
