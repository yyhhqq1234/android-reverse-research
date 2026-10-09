.class public final Lcom/netease/mobile/link/z5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lcom/netease/mobile/link/z5;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mobile/link/z5;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mobile/link/z5;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized a()Lcom/netease/mobile/link/z5;
    .locals 2

    const-class v0, Lcom/netease/mobile/link/z5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/z5;->e:Lcom/netease/mobile/link/z5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/netease/mobile/link/z5;

    invoke-direct {v1}, Lcom/netease/mobile/link/z5;-><init>()V

    sput-object v1, Lcom/netease/mobile/link/z5;->e:Lcom/netease/mobile/link/z5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p1, Lcom/netease/mcount/listener/ITrackerHelper;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/netease/mcount/listener/ITrackerHelper;

    invoke-interface {v0, p1}, Lcom/netease/mcount/listener/ITrackerHelper;->getTrackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "button_name"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object p2

    const-string p3, "click"

    invoke-virtual {p2, p1, p3, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mobile/link/z5;->d:Ljava/util/HashMap;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/z5;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/netease/mcount/MCountAgent;->setBasicEventInfoMap(Ljava/util/Map;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/z5;->d:Ljava/util/HashMap;

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/z5;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/netease/mcount/MCountAgent;->setBasicEventInfoMap(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lcom/netease/mcount/MCountAgent;
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/z5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mobile/link/z5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/MCountAgent;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    return-object v0
.end method
