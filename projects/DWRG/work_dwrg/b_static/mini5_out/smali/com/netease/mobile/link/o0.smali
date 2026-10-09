.class public final Lcom/netease/mobile/link/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/o0$a;,
        Lcom/netease/mobile/link/o0$b;
    }
.end annotation


# static fields
.field public static b:Lcom/netease/mobile/link/o0;


# instance fields
.field public a:Lcom/netease/mobile/link/o0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mobile/link/o0;->a:Lcom/netease/mobile/link/o0$a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/netease/mobile/link/o0;
    .locals 2

    const-class v0, Lcom/netease/mobile/link/o0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/o0;->b:Lcom/netease/mobile/link/o0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/o0;

    invoke-direct {v1}, Lcom/netease/mobile/link/o0;-><init>()V

    sput-object v1, Lcom/netease/mobile/link/o0;->b:Lcom/netease/mobile/link/o0;

    :cond_0
    sget-object v1, Lcom/netease/mobile/link/o0;->b:Lcom/netease/mobile/link/o0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/netease/mobile/link/widget/editor/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FEPresentController: dismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/netease/mobile/link/widget/editor/a;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/o0;->a:Lcom/netease/mobile/link/o0$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/o0$a;->a(Lcom/netease/mobile/link/widget/editor/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mobile/link/o0;->a:Lcom/netease/mobile/link/o0$a;

    invoke-virtual {p1}, Lcom/netease/mobile/link/o0$a;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/netease/mobile/link/o0;->a:Lcom/netease/mobile/link/o0$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
