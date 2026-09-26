.class public Lcom/netease/mpay/auth/WeixinHandlerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/auth/WeixinHandlerActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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

.method private a(Lcom/netease/mpay/auth/WeixinHandlerActivity$a;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;->a:I

    iget-object v2, p1, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mpay/auth/b$c;->a(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/netease/mpay/auth/WeixinHandlerActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/netease/mpay/widget/RIdentifier;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netease/mpay/auth/WeixinHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity;->b:Landroid/content/res/Resources;

    invoke-static {}, Lcom/netease/mpay/auth/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/netease/mpay/auth/WeixinHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->state:Ljava/lang/String;

    new-instance v1, Lcom/netease/mpay/auth/b$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/auth/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/auth/b$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;

    iget-object v1, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity;->b:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v3, v1}, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;-><init>(Lcom/netease/mpay/auth/WeixinHandlerActivity;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/auth/WeixinHandlerActivity;->a(Lcom/netease/mpay/auth/WeixinHandlerActivity$a;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->errCode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;

    iget-object v1, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity;->b:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v3, v1}, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;-><init>(Lcom/netease/mpay/auth/WeixinHandlerActivity;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/auth/WeixinHandlerActivity;->a(Lcom/netease/mpay/auth/WeixinHandlerActivity$a;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;-><init>(Lcom/netease/mpay/auth/WeixinHandlerActivity;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/auth/WeixinHandlerActivity;->a(Lcom/netease/mpay/auth/WeixinHandlerActivity$a;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity;->b:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->aw:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;-><init>(Lcom/netease/mpay/auth/WeixinHandlerActivity;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/auth/WeixinHandlerActivity;->a(Lcom/netease/mpay/auth/WeixinHandlerActivity$a;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity;->b:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->aw:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;-><init>(Lcom/netease/mpay/auth/WeixinHandlerActivity;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/auth/WeixinHandlerActivity;->a(Lcom/netease/mpay/auth/WeixinHandlerActivity$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
