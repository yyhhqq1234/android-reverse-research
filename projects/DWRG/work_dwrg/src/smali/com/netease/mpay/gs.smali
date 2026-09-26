.class Lcom/netease/mpay/gs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/social/GetFriendsCallback;

.field final synthetic b:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/social/GetFriendsCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gs;->b:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gs;->a:Lcom/netease/mpay/social/GetFriendsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public onComplete(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/netease/mpay/social/i;->a(Ljava/lang/String;)Lcom/netease/mpay/social/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/social/Friend;

    invoke-direct {v1}, Lcom/netease/mpay/social/Friend;-><init>()V

    new-instance v2, Lcom/netease/mpay/e/b;

    iget-object v3, p0, Lcom/netease/mpay/gs;->b:Lcom/netease/mpay/MpayApi;

    iget-object v3, v3, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/gs;->b:Lcom/netease/mpay/MpayApi;

    iget-object v4, v4, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/gs;->b:Lcom/netease/mpay/MpayApi;

    iget-object v3, v3, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/social/Friend;->mUid:Ljava/lang/String;

    const/4 v2, 0x3

    iput v2, v1, Lcom/netease/mpay/social/Friend;->mUserType:I

    iput v5, v1, Lcom/netease/mpay/social/Friend;->mRelationType:I

    iget-object v2, v0, Lcom/netease/mpay/social/i;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/social/Friend;->mNickName:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/social/i;->A:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/mpay/social/Friend;->mAvatarUrl:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netease/mpay/social/Friend;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/netease/mpay/gs;->a:Lcom/netease/mpay/social/GetFriendsCallback;

    invoke-interface {v1, v0}, Lcom/netease/mpay/social/GetFriendsCallback;->onSuccessed([Lcom/netease/mpay/social/Friend;)V

    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2

    const-string v0, "GetFriendsCallback.onFailed"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/gs;->a:Lcom/netease/mpay/social/GetFriendsCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    return-void
.end method
