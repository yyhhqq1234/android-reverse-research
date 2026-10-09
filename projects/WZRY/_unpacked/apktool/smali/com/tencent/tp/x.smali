.class public Lcom/tencent/tp/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/x$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/tp/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/x$a;->a:Lcom/tencent/tp/x$a;

    sput-object v0, Lcom/tencent/tp/x;->a:Lcom/tencent/tp/x$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/tencent/tp/x;->a:Lcom/tencent/tp/x$a;

    sget-object v1, Lcom/tencent/tp/x$a;->a:Lcom/tencent/tp/x$a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/tencent/tp/x$a;->b:Lcom/tencent/tp/x$a;

    sput-object v0, Lcom/tencent/tp/x;->a:Lcom/tencent/tp/x$a;

    :cond_0
    const-string v0, "r_s_beg"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/tencent/tp/x;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "r_s_end"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/tp/x;->a:Lcom/tencent/tp/x$a;

    sget-object v1, Lcom/tencent/tp/x$a;->b:Lcom/tencent/tp/x$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tencent/tp/x$a;->c:Lcom/tencent/tp/x$a;

    sput-object v0, Lcom/tencent/tp/x;->a:Lcom/tencent/tp/x$a;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/tencent/tp/h;->a()Lcom/tencent/tp/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tp/h;->n(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r_service_name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
