.class public Lcom/netease/mpay/sharer/m;
.super Lcom/netease/mpay/sharer/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/sharer/m$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field protected a:Lim/yixin/sdk/api/IYXAPI;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/sharer/e;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/sharer/m;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/sharer/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/sharer/m;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lim/yixin/sdk/api/YXAPIFactory;->createYXAPI(Landroid/content/Context;Ljava/lang/String;)Lim/yixin/sdk/api/IYXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/sharer/m;->a:Lim/yixin/sdk/api/IYXAPI;

    iget-object v0, p0, Lcom/netease/mpay/sharer/m;->a:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v0}, Lim/yixin/sdk/api/IYXAPI;->registerApp()Z

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/netease/mpay/sharer/m;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/netease/mpay/sharer/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "im.yixin"

    invoke-static {p0, v0}, Lcom/netease/mpay/sharer/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    const-string v0, "im.yixin.sdk.util.YixinConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "VALUE_SDK_VERSION"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x2712

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string v0, ":"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/netease/mpay/sharer/ShareContent;I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/netease/mpay/sharer/m;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/mpay/sharer/m;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x68

    if-ne p2, v2, :cond_0

    instance-of v2, p1, Lcom/netease/mpay/sharer/UrlShareContent;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://open.yixin.im/share?appkey=yx3ae08a776bf04178a583cb745fb6aa0c&type=webpage&url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&title="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&desc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&pic="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/netease/mpay/sharer/UrlShareContent;

    iget-object v2, p1, Lcom/netease/mpay/sharer/UrlShareContent;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/sharer/m;->c:Landroid/app/Activity;

    sget-object v3, Lcom/netease/mpay/b$a;->M:Lcom/netease/mpay/b$a;

    new-instance v4, Lcom/netease/mpay/b/ac;

    invoke-direct {v4, v0}, Lcom/netease/mpay/b/ac;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v5, v5}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v2, Lim/yixin/sdk/api/SendMessageToYX$Req;

    invoke-direct {v2}, Lim/yixin/sdk/api/SendMessageToYX$Req;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netease/mpay/sharer/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->transaction:Ljava/lang/String;

    new-instance v3, Lcom/netease/mpay/sharer/m$a;

    invoke-direct {v3, p1}, Lcom/netease/mpay/sharer/m$a;-><init>(Lcom/netease/mpay/sharer/ShareContent;)V

    invoke-virtual {v3}, Lcom/netease/mpay/sharer/m$a;->a()Lim/yixin/sdk/api/YXMessage;

    move-result-object v3

    iput-object v3, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    const/16 v3, 0x67

    if-ne p2, v3, :cond_2

    :goto_1
    iput v0, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->scene:I

    iget-object v0, p0, Lcom/netease/mpay/sharer/m;->a:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v0, v2}, Lim/yixin/sdk/api/IYXAPI;->sendRequest(Lim/yixin/sdk/api/BaseReq;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
