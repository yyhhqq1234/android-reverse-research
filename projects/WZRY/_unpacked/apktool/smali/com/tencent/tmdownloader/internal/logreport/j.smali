.class Lcom/tencent/tmdownloader/internal/logreport/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;


# instance fields
.field final synthetic a:Lcom/tencent/tmdownloader/internal/logreport/i;


# direct methods
.method constructor <init>(Lcom/tencent/tmdownloader/internal/logreport/i;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/logreport/j;->a:Lcom/tencent/tmdownloader/internal/logreport/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged()V
    .locals 6

    .prologue
    .line 128
    const-string v0, "LogReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v2, Lcom/tencent/tmdownloader/internal/logreport/i;->b:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 132
    :try_start_0
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/c;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/c;->h()Lcom/tencent/tmdownloader/internal/logreport/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmdownloader/internal/logreport/c;->d()V

    .line 135
    :cond_0
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/g;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/g;->h()Lcom/tencent/tmdownloader/internal/logreport/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmdownloader/internal/logreport/g;->d()V

    .line 138
    :cond_1
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/d;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/d;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v4, "LogReportManager"

    const-string v5, "exception:"

    invoke-static {v4, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 149
    :cond_3
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/j;->a:Lcom/tencent/tmdownloader/internal/logreport/i;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/i;->c()V

    .line 153
    :cond_4
    return-void
.end method
