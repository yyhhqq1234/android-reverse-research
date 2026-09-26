.class final Lcom/netease/codescanner/camera/a$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/codescanner/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/codescanner/camera/a;


# direct methods
.method private constructor <init>(Lcom/netease/codescanner/camera/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/codescanner/camera/a$a;->a:Lcom/netease/codescanner/camera/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/codescanner/camera/a;Lcom/netease/codescanner/camera/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/codescanner/camera/a$a;-><init>(Lcom/netease/codescanner/camera/a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/a$a;->a:Lcom/netease/codescanner/camera/a;

    invoke-static {v0}, Lcom/netease/codescanner/camera/a;->a(Lcom/netease/codescanner/camera/a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/netease/codescanner/camera/a$a;->a:Lcom/netease/codescanner/camera/a;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/netease/codescanner/camera/a$a;->a:Lcom/netease/codescanner/camera/a;

    invoke-static {v0}, Lcom/netease/codescanner/camera/a;->b(Lcom/netease/codescanner/camera/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/camera/a$a;->a:Lcom/netease/codescanner/camera/a;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/a;->a()V

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/codescanner/camera/a$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
