.class Lcom/netease/mpay/social/f$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/social/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/social/f;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;

.field private d:I

.field private e:Lcom/sina/weibo/sdk/net/RequestListener;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/social/f;Ljava/lang/String;Ljava/util/ArrayList;ILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/social/f$a;->a:Lcom/netease/mpay/social/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/social/f$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/social/f$a;->c:Ljava/util/ArrayList;

    iput p4, p0, Lcom/netease/mpay/social/f$a;->d:I

    iput-object p5, p0, Lcom/netease/mpay/social/f$a;->e:Lcom/sina/weibo/sdk/net/RequestListener;

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
.method protected varargs a([Ljava/lang/Void;)Lcom/netease/mpay/widget/a/b$b;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget v0, p0, Lcom/netease/mpay/social/f$a;->d:I

    iget-object v1, p0, Lcom/netease/mpay/social/f$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/mpay/social/f$a;->c:Ljava/util/ArrayList;

    const v4, 0x493e0

    const/16 v5, 0x7530

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/widget/a/b;->a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;II)Lcom/netease/mpay/widget/a/b$b;
    :try_end_0
    .catch Lcom/netease/mpay/widget/a/b$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/netease/mpay/social/f$a;->e:Lcom/sina/weibo/sdk/net/RequestListener;

    new-instance v2, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/a/b$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sina/weibo/sdk/net/RequestListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    move-object v0, v6

    goto :goto_0
.end method

.method protected a(Lcom/netease/mpay/widget/a/b$b;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/netease/mpay/widget/a/b$b;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/netease/mpay/widget/a/b$b;->a:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/social/f$a;->e:Lcom/sina/weibo/sdk/net/RequestListener;

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/widget/a/b$b;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/net/RequestListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/social/f$a;->e:Lcom/sina/weibo/sdk/net/RequestListener;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/widget/a/b$b;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/net/RequestListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/social/f$a;->a([Ljava/lang/Void;)Lcom/netease/mpay/widget/a/b$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/widget/a/b$b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/social/f$a;->a(Lcom/netease/mpay/widget/a/b$b;)V

    return-void
.end method
