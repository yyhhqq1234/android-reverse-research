.class public final Lcom/netease/mobile/link/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/MobileLinkActivity;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/MobileLinkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/m3;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p4;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGuideInLogin onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobileLink"

    .line 1
    invoke-static {p2, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mobile/link/m3;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 3
    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    const/16 p2, 0x66

    .line 4
    invoke-virtual {p1, p2}, Lcom/netease/mobile/link/MobileLinkActivity$a;->a(I)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGuideInLogin onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iput-object p1, v0, Lcom/netease/mobile/link/a5;->n:Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->n:Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    .line 6
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    .line 8
    invoke-interface {v2}, Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;->getUserConfig()Lcom/netease/mobile/link/relatelogin/UserConfig;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u914d\u7f6e\uff1a\u5173\u8054\u767b\u5f55\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/netease/mobile/link/relatelogin/UserConfig;->mMobileRelatedLogin:Z

    const-string v5, "\u5df2\u5f00\u542f"

    const-string v6, "\u672a\u5f00\u542f"

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u914d\u7f6e\uff1a\u5141\u8bb8\u4fee\u6539\u72b6\u6001\uff1a"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v2, Lcom/netease/mobile/link/relatelogin/UserConfig;->mAllowUpdateRlStatus:Z

    const-string v8, "\u662f"

    const-string v9, "\u5426"

    if-eqz v7, :cond_1

    move-object v7, v8

    goto :goto_1

    :cond_1
    move-object v7, v9

    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u914d\u7f6e\uff1a\u9700\u8981\u5f15\u5bfc\u5173\u8054\u624b\u673a\uff1a"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v2, Lcom/netease/mobile/link/relatelogin/UserConfig;->mGuideRelatedMobile:Z

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v8, v9

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u7528\u6237\uff1a\u5173\u8054\u767b\u5f55\uff1a"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/netease/mobile/link/relatelogin/UserConfig;->mRelatedLoginEnabled:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v6

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->isForceGuide()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "\u5f3a\u5236"

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->isNonForceGuide()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "\u975e\u5f3a\u5236"

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->isGuideSwitch()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u5f15\u5bfc\u5f00\u542f"

    goto :goto_4

    :cond_6
    const-string v0, "\u4e0d\u5f15\u5bfc"

    :goto_4
    const-string v2, "\u7528\u6237\uff1a\u5f15\u5bfc\u7c7b\u578b\uff1a"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->isNonGuide()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mobile/link/p4;->a()V

    iget-object p1, p0, Lcom/netease/mobile/link/m3;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 11
    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    .line 12
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/MobileLinkActivity$a;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/netease/mobile/link/m3;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    sget-object v0, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    sget-object v1, Lcom/netease/mobile/link/MobileLinkActivity;->TAG:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/MobileLinkActivity;->a(Lcom/netease/mobile/link/b5;)V

    :goto_5
    return-void
.end method
