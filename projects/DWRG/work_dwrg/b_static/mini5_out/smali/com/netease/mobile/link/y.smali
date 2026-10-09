.class public final Lcom/netease/mobile/link/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Activity;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mobile/link/m0;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/netease/mobile/link/m0;

.field public d:Lcom/netease/mobile/link/x;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobile/link/y;->a:Landroid/app/Activity;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/mobile/link/y;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/netease/mobile/link/m0;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobile/link/y;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mobile/link/h6;->b(Landroid/app/Activity;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mobile/link/y;->c:Lcom/netease/mobile/link/m0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/netease/mobile/link/y;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mobile/link/h6;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/netease/mobile/link/y;->a:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 1
    new-instance v1, Lcom/netease/mobile/link/x;

    invoke-direct {v1}, Lcom/netease/mobile/link/x;-><init>()V

    .line 2
    iput-object p0, v1, Lcom/netease/mobile/link/x;->a:Lcom/netease/mobile/link/y;

    .line 3
    iget-object v2, p0, Lcom/netease/mobile/link/y;->d:Lcom/netease/mobile/link/x;

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_4

    iget-object v2, p0, Lcom/netease/mobile/link/y;->c:Lcom/netease/mobile/link/m0;

    iget-object v3, v2, Lcom/netease/mobile/link/m0;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 4
    const-class v3, Lcom/netease/mobile/link/o6;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/netease/mobile/link/m0;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/netease/mobile/link/y;->d:Lcom/netease/mobile/link/x;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/netease/mobile/link/y;->d:Lcom/netease/mobile/link/x;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 6
    iget-object v0, v1, Lcom/netease/mobile/link/x;->b:Lcom/netease/mobile/link/z;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/netease/mobile/link/z;->i()V

    goto :goto_2

    .line 7
    :cond_5
    sget v2, Lcom/netease/mobile/link/R$id;->fl_mobile_link__content:I

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_6
    :goto_2
    iput-object p1, p0, Lcom/netease/mobile/link/y;->c:Lcom/netease/mobile/link/m0;

    iput-object v1, p0, Lcom/netease/mobile/link/y;->d:Lcom/netease/mobile/link/x;

    iget-object v0, p0, Lcom/netease/mobile/link/y;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
