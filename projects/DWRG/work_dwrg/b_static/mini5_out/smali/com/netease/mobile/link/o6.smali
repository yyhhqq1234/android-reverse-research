.class public final Lcom/netease/mobile/link/o6;
.super Lcom/netease/mobile/link/z;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/p6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 5
    iget-object p3, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object p3, p3, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    sget-object v0, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netease/mobile/link/z3;->b()Lcom/netease/mobile/link/z3;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/netease/mobile/link/z3;->a(Z)V

    .line 6
    :goto_0
    sget p3, Lcom/netease/mobile/link/R$layout;->mobile_link__web_page:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/netease/mobile/link/R$id;->mobile_link__action_home:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/netease/mobile/link/o6$a;

    invoke-direct {p3, p0}, Lcom/netease/mobile/link/o6$a;-><init>(Lcom/netease/mobile/link/o6;)V

    invoke-virtual {p3}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object p3, p3, Lcom/netease/mobile/link/m0;->a:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/mobile/link/o6;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 6

    sget v0, Lcom/netease/mobile/link/R$id;->mobile_link__web:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netease/mobile/link/web/WebViewEx;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mobile/link/h6;->b(Landroid/content/Context;)Z

    move-result p1

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Lcom/netease/mobile/link/q;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v4

    .line 1
    iget-boolean v4, v4, Lcom/netease/mobile/link/a5;->m:Z

    .line 2
    invoke-direct {v3, p1, v4}, Lcom/netease/mobile/link/q;-><init>(ZZ)V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p0

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/netease/mobile/link/web/WebViewEx;->registered(Landroid/app/Activity;Landroid/content/res/AssetManager;Lcom/netease/mobile/link/q;Ljava/util/ArrayList;Lcom/netease/mobile/link/p6;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__web_page:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/mobile/link/z;->f()V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    sget-object v1, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netease/mobile/link/z3;->b()Lcom/netease/mobile/link/z3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/z3;->a(Z)V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/mobile/link/z;->k()V

    .line 2
    invoke-virtual {p0}, Lcom/netease/mobile/link/o6;->l()V

    return-void
.end method

.method public final j()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/mobile/link/o6;->l()V

    return-void
.end method

.method public final l()V
    .locals 9

    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mobile/link/R$bool;->mobile_link__config_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mobile/link/a4;->b(Landroid/content/Context;)Lcom/netease/mobile/link/a4;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/netease/mobile/link/a4$a;

    new-instance v6, Lcom/netease/mobile/link/a4$a;

    iget-object v7, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v8, Lcom/netease/mobile/link/R$id;->mobile_link__action_home:I

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/netease/mobile/link/a4$a;-><init>(Landroid/view/View;I)V

    aput-object v6, v5, v2

    new-instance v2, Lcom/netease/mobile/link/a4$a;

    iget-object v6, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v7, Lcom/netease/mobile/link/R$id;->mobile_link__content:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v2, v6, v7}, Lcom/netease/mobile/link/a4$a;-><init>(Landroid/view/View;I)V

    aput-object v2, v5, v3

    invoke-virtual {v0, v1, v4, v5}, Lcom/netease/mobile/link/a4;->a(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mobile/link/a4$a;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mobile/link/a4;->b(Landroid/content/Context;)Lcom/netease/mobile/link/a4;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/mobile/link/a4;->a(Landroid/content/Context;Landroid/view/Window;)V

    :cond_3
    :goto_2
    return-void
.end method
