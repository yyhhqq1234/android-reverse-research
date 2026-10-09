.class public Lcom/tencent/tp/b/g;
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

    new-instance v0, Lcom/tencent/tp/b/h;

    invoke-direct {v0, p0}, Lcom/tencent/tp/b/h;-><init>(Lcom/tencent/tp/b/g;)V

    iput-object v0, p0, Lcom/tencent/tp/b/g;->c:Lcom/tencent/tp/a/o$a;

    new-instance v0, Lcom/tencent/tp/b/i;

    invoke-direct {v0, p0}, Lcom/tencent/tp/b/i;-><init>(Lcom/tencent/tp/b/g;)V

    iput-object v0, p0, Lcom/tencent/tp/b/g;->d:Lcom/tencent/tp/a/o$a;

    iput-object p1, p0, Lcom/tencent/tp/b/g;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tp/b/g;)Lcom/tencent/tp/a/o;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/b/g;->b:Lcom/tencent/tp/a/o;

    return-object v0
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tp/b/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/c/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tp/b/a;

    iget-object v1, p0, Lcom/tencent/tp/b/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tp/b/a;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019"

    invoke-virtual {v0, v1}, Lcom/tencent/tp/b/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "\u9519\u8bef"

    const-string/jumbo v3, "\u7cfb\u7edf\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u94fe\u63a5\u662f\u5426\u6b63\u5e38\u3002"

    const-string/jumbo v4, "\u786e\u5b9a"

    new-instance v0, Lcom/tencent/tp/a/o;

    iget-object v1, p0, Lcom/tencent/tp/b/g;->a:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Lcom/tencent/tp/b/j;

    invoke-direct {v6, p0}, Lcom/tencent/tp/b/j;-><init>(Lcom/tencent/tp/b/g;)V

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tp/a/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    invoke-virtual {v0}, Lcom/tencent/tp/a/o;->n()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/tp/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tp/b/g;->b()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/tp/b/g;)Lcom/tencent/tp/a/o$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/b/g;->d:Lcom/tencent/tp/a/o$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v7, 0x1

    new-instance v1, Lcom/tencent/tp/TssSdkRootkitTipStr;

    invoke-direct {v1}, Lcom/tencent/tp/TssSdkRootkitTipStr;-><init>()V

    invoke-static {v1}, Lcom/tencent/tp/m;->b(Ljava/lang/Object;)V

    iget v0, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_state:I

    if-ne v0, v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "\u91cd\u8981\u901a\u77e5"

    const-string/jumbo v3, "\u4eb2\u7231\u7684\u73a9\u5bb6\uff0c\u7cfb\u7edf\u68c0\u6d4b\u5230\u60a8\u7684\u6e38\u620f\u73af\u5883\u5b58\u5728\u5b89\u5168\u98ce\u9669\uff0c\u5fc5\u987b\u5b89\u88c5\u5e76\u8fd0\u884c\u201c\u817e\u8baf\u6e38\u620f\u5b89\u5168\u4e2d\u5fc3\u201d\uff0c\u5426\u5219\u90e8\u5206\u6e38\u620f\u4f53\u9a8c\u5c06\u53d7\u5230\u9650\u5236\u3002"

    const-string/jumbo v4, "\u7acb\u5373\u5b89\u88c5"

    const-string/jumbo v0, "\u6682\u4e0d\u5b89\u88c5"

    :try_start_0
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_1:[B

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_1:[B

    array-length v5, v5

    if-lez v5, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_1:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_1
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_1:[B

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_1:[B

    array-length v5, v5

    if-lez v5, :cond_2

    new-instance v3, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_1:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_2
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_1:[B

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_1:[B

    array-length v5, v5

    if-lez v5, :cond_3

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_1:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_3
    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_1:[B

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_1:[B

    array-length v5, v5

    if-lez v5, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_1:[B

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

    iget-object v1, p0, Lcom/tencent/tp/b/g;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/tencent/tp/b/g;->c:Lcom/tencent/tp/a/o$a;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tp/a/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    iput-object v0, p0, Lcom/tencent/tp/b/g;->b:Lcom/tencent/tp/a/o;

    iget-object v0, p0, Lcom/tencent/tp/b/g;->b:Lcom/tencent/tp/a/o;

    invoke-virtual {v0, v7}, Lcom/tencent/tp/a/o;->b(Z)V

    iget-object v0, p0, Lcom/tencent/tp/b/g;->b:Lcom/tencent/tp/a/o;

    invoke-virtual {v0}, Lcom/tencent/tp/a/o;->n()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "\u91cd\u8981\u901a\u77e5"

    const-string/jumbo v3, "\u4eb2\u7231\u7684\u73a9\u5bb6\uff0c\u7cfb\u7edf\u68c0\u6d4b\u5230\u60a8\u7684\u6e38\u620f\u73af\u5883\u5b58\u5728\u5b89\u5168\u98ce\u9669\uff0c\u5fc5\u987b\u5b89\u88c5\u5e76\u8fd0\u884c\u201c\u817e\u8baf\u6e38\u620f\u5b89\u5168\u4e2d\u5fc3\u201d\uff0c\u5426\u5219\u90e8\u5206\u6e38\u620f\u4f53\u9a8c\u5c06\u53d7\u5230\u9650\u5236\u3002"

    const-string/jumbo v4, "\u7acb\u5373\u5b89\u88c5"

    const-string/jumbo v0, "\u6682\u4e0d\u5b89\u88c5"

    goto :goto_1

    :cond_5
    move-object v5, v0

    goto :goto_2
.end method
