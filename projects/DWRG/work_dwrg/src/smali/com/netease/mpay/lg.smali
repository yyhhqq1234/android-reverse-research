.class public Lcom/netease/mpay/lg;
.super Lcom/netease/mpay/widget/b/c;


# instance fields
.field private e:Lcom/netease/mpay/b/aa;

.field private f:Lcom/netease/mpay/e/b;

.field private g:Lcom/netease/mpay/e/b/o;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/b/c;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/aa;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/aa;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    iget-object v0, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/lg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dv:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/widget/b/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/lg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    invoke-virtual {v2}, Lcom/netease/mpay/b/aa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/lg;->f:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/lg;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    invoke-virtual {v1}, Lcom/netease/mpay/b/aa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/lg;->g:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/lg;->g:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lg;->g:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    iget-object v0, v0, Lcom/netease/mpay/b/aa;->a:Lcom/netease/mpay/MobileBindCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    iget-object v0, v0, Lcom/netease/mpay/b/aa;->a:Lcom/netease/mpay/MobileBindCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netease/mpay/MobileBindCallback;->onFinish(Lcom/netease/mpay/User;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/lg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/netease/mpay/lg;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/f/an;

    iget-object v2, p0, Lcom/netease/mpay/lg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    invoke-virtual {v3}, Lcom/netease/mpay/b/aa;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    invoke-virtual {v4}, Lcom/netease/mpay/b/aa;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/mpay/f/an$a;->D:Lcom/netease/mpay/f/an$a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/f/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/f/an;)V

    goto :goto_0
.end method

.method public closeWindow()V
    .locals 4

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    iget-object v0, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    iget-object v0, v0, Lcom/netease/mpay/b/aa;->a:Lcom/netease/mpay/MobileBindCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    iget-object v0, v0, Lcom/netease/mpay/b/aa;->a:Lcom/netease/mpay/MobileBindCallback;

    new-instance v1, Lcom/netease/mpay/User;

    iget-object v2, p0, Lcom/netease/mpay/lg;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/lg;->g:Lcom/netease/mpay/e/b/o;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/MobileBindCallback;->onFinish(Lcom/netease/mpay/User;)V

    :cond_0
    return-void
.end method

.method public onVerifyRelatedMobile(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "mobile_bind_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/lg;->g:Lcom/netease/mpay/e/b/o;

    iget v1, v1, Lcom/netease/mpay/e/b/o;->k:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/lg;->g:Lcom/netease/mpay/e/b/o;

    iput v0, v1, Lcom/netease/mpay/e/b/o;->k:I

    iget-object v0, p0, Lcom/netease/mpay/lg;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/lg;->g:Lcom/netease/mpay/e/b/o;

    iget-object v2, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    invoke-virtual {v2}, Lcom/netease/mpay/b/aa;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/lg;->g:Lcom/netease/mpay/e/b/o;

    iget-boolean v3, v3, Lcom/netease/mpay/e/b/o;->m:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected s()Lcom/netease/mpay/widget/b/c$e;
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, p0, Lcom/netease/mpay/lg;->e:Lcom/netease/mpay/b/aa;

    invoke-virtual {v1}, Lcom/netease/mpay/b/aa;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/b/c$e;-><init>(Lcom/netease/mpay/b/a$a;)V

    return-object v0
.end method
