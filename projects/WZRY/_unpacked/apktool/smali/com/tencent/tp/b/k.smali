.class public Lcom/tencent/tp/b/k;
.super Landroid/os/AsyncTask;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/tencent/tp/a/o;

.field private c:Z

.field private d:Z

.field private e:Lcom/tencent/tp/a/o$a;

.field private f:Lcom/tencent/tp/a/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/tencent/tp/b/l;

    invoke-direct {v0, p0}, Lcom/tencent/tp/b/l;-><init>(Lcom/tencent/tp/b/k;)V

    iput-object v0, p0, Lcom/tencent/tp/b/k;->e:Lcom/tencent/tp/a/o$a;

    new-instance v0, Lcom/tencent/tp/b/m;

    invoke-direct {v0, p0}, Lcom/tencent/tp/b/m;-><init>(Lcom/tencent/tp/b/k;)V

    iput-object v0, p0, Lcom/tencent/tp/b/k;->f:Lcom/tencent/tp/a/o$a;

    iput-object p1, p0, Lcom/tencent/tp/b/k;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tp/b/k;->d:Z

    invoke-direct {p0}, Lcom/tencent/tp/b/k;->a()V

    return-void
.end method

.method private a()V
    .locals 8

    const/4 v7, 0x1

    new-instance v1, Lcom/tencent/tp/TssSdkRootkitTipStr;

    invoke-direct {v1}, Lcom/tencent/tp/TssSdkRootkitTipStr;-><init>()V

    invoke-static {v1}, Lcom/tencent/tp/m;->b(Ljava/lang/Object;)V

    iget v0, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_state:I

    if-ne v0, v7, :cond_0

    iput-boolean v7, p0, Lcom/tencent/tp/b/k;->d:Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "\u91cd\u8981\u901a\u77e5"

    const-string/jumbo v3, "\u4eb2\u7231\u7684\u73a9\u5bb6\uff0c\u7cfb\u7edf\u68c0\u6d4b\u5230\u60a8\u7684\u6e38\u620f\u73af\u5883\u5b58\u5728\u5b89\u5168\u98ce\u9669\uff0c\u8bf7\u5148\u5f00\u542f\u201c\u817e\u8baf\u6e38\u620f\u5b89\u5168\u4e2d\u5fc3\u201d\u3002"

    const-string/jumbo v4, "\u7acb\u5373\u5f00\u542f"

    const-string/jumbo v0, "\u6682\u4e0d\u5f00\u542f"

    :try_start_0
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_2:[B

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_2:[B

    array-length v5, v5

    if-lez v5, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_2:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_1
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_2:[B

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_2:[B

    array-length v5, v5

    if-lez v5, :cond_2

    new-instance v3, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_2:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_2
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_2:[B

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_2:[B

    array-length v5, v5

    if-lez v5, :cond_3

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_2:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_3
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_2:[B

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_2:[B

    array-length v5, v5

    if-lez v5, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_2:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget v1, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_allow_cancel:I

    if-nez v1, :cond_5

    const/4 v5, 0x0

    :goto_2
    new-instance v0, Lcom/tencent/tp/a/o;

    iget-object v1, p0, Lcom/tencent/tp/b/k;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/tencent/tp/b/k;->e:Lcom/tencent/tp/a/o$a;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tp/a/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    iput-object v0, p0, Lcom/tencent/tp/b/k;->b:Lcom/tencent/tp/a/o;

    iget-object v0, p0, Lcom/tencent/tp/b/k;->b:Lcom/tencent/tp/a/o;

    invoke-virtual {v0, v7}, Lcom/tencent/tp/a/o;->b(Z)V

    iget-object v0, p0, Lcom/tencent/tp/b/k;->b:Lcom/tencent/tp/a/o;

    invoke-virtual {v0}, Lcom/tencent/tp/a/o;->n()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "\u91cd\u8981\u901a\u77e5"

    const-string/jumbo v3, "\u4eb2\u7231\u7684\u73a9\u5bb6\uff0c\u7cfb\u7edf\u68c0\u6d4b\u5230\u60a8\u7684\u6e38\u620f\u73af\u5883\u5b58\u5728\u5b89\u5168\u98ce\u9669\uff0c\u8bf7\u5148\u5f00\u542f\u201c\u817e\u8baf\u6e38\u620f\u5b89\u5168\u4e2d\u5fc3\u201d\u3002"

    const-string/jumbo v4, "\u7acb\u5373\u5f00\u542f"

    const-string/jumbo v0, "\u6682\u4e0d\u5f00\u542f"

    goto :goto_1

    :cond_5
    move-object v5, v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/tp/b/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tp/b/k;->c()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tp/b/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tp/b/k;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/tp/b/k;)Lcom/tencent/tp/a/o$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/b/k;->f:Lcom/tencent/tp/a/o$a;

    return-object v0
.end method

.method private b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tp/b/k;->d:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/tencent/tp/m;->d()I

    move-result v0

    if-ne v0, v2, :cond_2

    iput-boolean v2, p0, Lcom/tencent/tp/b/k;->c:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/tp/b/k;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.tpsafe.action.START_ROOKIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/tp/b/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "game-apk-name"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "new-task"

    const-string v3, "1"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/tencent/tp/b/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/tp/b/k;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tp/b/k;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/b/k;->b:Lcom/tencent/tp/a/o;

    invoke-virtual {v0}, Lcom/tencent/tp/a/o;->a()V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/tp/b/k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/tp/b/k;->a(Ljava/lang/Void;)V

    return-void
.end method
