.class public Lcom/tencent/tp/b/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tp/a/o;

.field private c:Lcom/tencent/tp/a/o$a;

.field private d:Lcom/tencent/tp/a/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tp/b/o;

    invoke-direct {v0, p0}, Lcom/tencent/tp/b/o;-><init>(Lcom/tencent/tp/b/n;)V

    iput-object v0, p0, Lcom/tencent/tp/b/n;->c:Lcom/tencent/tp/a/o$a;

    new-instance v0, Lcom/tencent/tp/b/p;

    invoke-direct {v0, p0}, Lcom/tencent/tp/b/p;-><init>(Lcom/tencent/tp/b/n;)V

    iput-object v0, p0, Lcom/tencent/tp/b/n;->d:Lcom/tencent/tp/a/o$a;

    iput-object p1, p0, Lcom/tencent/tp/b/n;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tp/b/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tp/b/n;->b()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/tp/b/n;)Lcom/tencent/tp/a/o;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/b/n;->b:Lcom/tencent/tp/a/o;

    return-object v0
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.tpsafe.action.START_ROOKIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "force_update"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/tp/b/n;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/tp/m;->b()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/tp/b/n;)Lcom/tencent/tp/a/o$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/b/n;->d:Lcom/tencent/tp/a/o$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v2, "\u91cd\u8981\u901a\u77e5"

    const-string/jumbo v3, "\u4eb2\u7231\u7684\u73a9\u5bb6\uff0c\u7cfb\u7edf\u68c0\u6d4b\u5230\u60a8\u5b89\u88c5\u7684\u201c\u817e\u8baf\u6e38\u620f\u5b89\u5168\u4e2d\u5fc3\u201d\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u7acb\u5373\u5347\u7ea7\u3002"

    const-string/jumbo v4, "\u7acb\u5373\u5347\u7ea7"

    const-string/jumbo v0, "\u6682\u4e0d\u5347\u7ea7"

    new-instance v1, Lcom/tencent/tp/TssSdkRootkitTipStr;

    invoke-direct {v1}, Lcom/tencent/tp/TssSdkRootkitTipStr;-><init>()V

    invoke-static {v1}, Lcom/tencent/tp/m;->b(Ljava/lang/Object;)V

    :try_start_0
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_5:[B

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_5:[B

    array-length v5, v5

    if-lez v5, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_5:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_0
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_5:[B

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_5:[B

    array-length v5, v5

    if-lez v5, :cond_1

    new-instance v3, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_5:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_1
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_5:[B

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_5:[B

    array-length v5, v5

    if-lez v5, :cond_2

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_5:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_2
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_5:[B

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_5:[B

    array-length v5, v5

    if-lez v5, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_5:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iget v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_force_update:I

    if-ne v5, v7, :cond_5

    const/4 v5, 0x0

    :goto_1
    iget v0, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_update_canceled:I

    if-ne v0, v7, :cond_4

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "\u91cd\u8981\u901a\u77e5"

    const-string/jumbo v3, "\u4eb2\u7231\u7684\u73a9\u5bb6\uff0c\u7cfb\u7edf\u68c0\u6d4b\u5230\u60a8\u5b89\u88c5\u7684\u201c\u817e\u8baf\u6e38\u620f\u5b89\u5168\u4e2d\u5fc3\u201d\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u7acb\u5373\u5347\u7ea7\u3002"

    const-string/jumbo v4, "\u7acb\u5373\u5347\u7ea7"

    const-string/jumbo v0, "\u6682\u4e0d\u5347\u7ea7"

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/tencent/tp/a/o;

    iget-object v1, p0, Lcom/tencent/tp/b/n;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/tencent/tp/b/n;->c:Lcom/tencent/tp/a/o$a;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tp/a/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    iput-object v0, p0, Lcom/tencent/tp/b/n;->b:Lcom/tencent/tp/a/o;

    iget-object v0, p0, Lcom/tencent/tp/b/n;->b:Lcom/tencent/tp/a/o;

    invoke-virtual {v0, v7}, Lcom/tencent/tp/a/o;->b(Z)V

    iget-object v0, p0, Lcom/tencent/tp/b/n;->b:Lcom/tencent/tp/a/o;

    invoke-virtual {v0}, Lcom/tencent/tp/a/o;->n()V

    goto :goto_2

    :cond_5
    move-object v5, v0

    goto :goto_1
.end method
