.class public final Lcom/netease/mobile/link/x;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public a:Lcom/netease/mobile/link/y;

.field public b:Lcom/netease/mobile/link/z;

.field public c:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/netease/mobile/link/x;->b:Lcom/netease/mobile/link/z;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/netease/mobile/link/x;->c:Landroid/app/Activity;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    iget-object p1, p0, Lcom/netease/mobile/link/x;->a:Lcom/netease/mobile/link/y;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/netease/mobile/link/x;->c:Landroid/app/Activity;

    .line 1
    iget-object v2, p1, Lcom/netease/mobile/link/y;->c:Lcom/netease/mobile/link/m0;

    .line 2
    :try_start_0
    iget-object v3, v2, Lcom/netease/mobile/link/m0;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/mobile/link/z;

    iput-object v1, v3, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    iput-object p1, v3, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    iput-object v2, v3, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    move-object v3, v0

    .line 3
    :goto_0
    iput-object v3, p0, Lcom/netease/mobile/link/x;->b:Lcom/netease/mobile/link/z;

    iget-object p1, p0, Lcom/netease/mobile/link/x;->c:Landroid/app/Activity;

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {v3, p1, p2, p3}, Lcom/netease/mobile/link/z;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/netease/mobile/link/x;->b:Lcom/netease/mobile/link/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/mobile/link/x;->b:Lcom/netease/mobile/link/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mobile/link/z;->h()V

    :cond_0
    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object v0, p0, Lcom/netease/mobile/link/x;->b:Lcom/netease/mobile/link/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {v0}, Lcom/netease/mobile/link/z;->k()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/netease/mobile/link/x;->b:Lcom/netease/mobile/link/z;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/mobile/link/z;->j()V

    iget-object v0, p0, Lcom/netease/mobile/link/x;->b:Lcom/netease/mobile/link/z;

    invoke-virtual {v0}, Lcom/netease/mobile/link/z;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mobile/link/x;->c:Landroid/app/Activity;

    instance-of v2, v1, Lcom/netease/mobile/link/MobileLinkActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/netease/mobile/link/MobileLinkActivity;

    invoke-virtual {v1, v0}, Lcom/netease/mobile/link/MobileLinkActivity;->setPageName(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mobile/link/x;->c:Landroid/app/Activity;

    .line 1
    invoke-virtual {v1}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/netease/mcount/MCountAgent;->logPageSwitch(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
