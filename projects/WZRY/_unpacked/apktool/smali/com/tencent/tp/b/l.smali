.class Lcom/tencent/tp/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/a/o$a;


# instance fields
.field final synthetic a:Lcom/tencent/tp/b/k;


# direct methods
.method constructor <init>(Lcom/tencent/tp/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/b/l;->a:Lcom/tencent/tp/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "rootkit:launch_0_0"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/b/l;->a:Lcom/tencent/tp/b/k;

    invoke-static {v0}, Lcom/tencent/tp/b/k;->a(Lcom/tencent/tp/b/k;)V

    return-void
.end method

.method public b()V
    .locals 7

    const-string v0, "rootkit:launch_0_1"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "\u91cd\u8981\u901a\u77e5"

    const-string/jumbo v2, "\u53d6\u6d88\u5f00\u542f\u201c\u817e\u8baf\u6e38\u620f\u5b89\u5168\u4e2d\u5fc3\u201d\uff0c\u60a8\u7684\u90e8\u5206\u6e38\u620f\u4f53\u9a8c\u5c06\u53d7\u5230\u9650\u5236\uff0c\u8bf7\u518d\u6b21\u786e\u8ba4\u3002"

    const-string/jumbo v3, "\u7acb\u5373\u5f00\u542f"

    const-string/jumbo v0, "\u6682\u4e0d\u5f00\u542f"

    new-instance v4, Lcom/tencent/tp/TssSdkRootkitTipStr;

    invoke-direct {v4}, Lcom/tencent/tp/TssSdkRootkitTipStr;-><init>()V

    invoke-static {v4}, Lcom/tencent/tp/m;->b(Ljava/lang/Object;)V

    :try_start_0
    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_4:[B

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_4:[B

    array-length v5, v5

    if-lez v5, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_title_4:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_0
    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_4:[B

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_4:[B

    array-length v5, v5

    if-lez v5, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_msg_4:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_1
    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_4:[B

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_4:[B

    array-length v5, v5

    if-lez v5, :cond_2

    new-instance v3, Ljava/lang/String;

    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_left_4:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_2
    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_4:[B

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_4:[B

    array-length v5, v5

    if-lez v5, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v4, v4, Lcom/tencent/tp/TssSdkRootkitTipStr;->m_right_4:[B

    const-string/jumbo v5, "utf-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/tp/b/l;->a:Lcom/tencent/tp/b/k;

    iget-object v0, v0, Lcom/tencent/tp/b/k;->b:Lcom/tencent/tp/a/o;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/tencent/tp/a/o;->c(Z)V

    iget-object v0, p0, Lcom/tencent/tp/b/l;->a:Lcom/tencent/tp/b/k;

    iget-object v0, v0, Lcom/tencent/tp/b/k;->b:Lcom/tencent/tp/a/o;

    iget-object v5, p0, Lcom/tencent/tp/b/l;->a:Lcom/tencent/tp/b/k;

    invoke-static {v5}, Lcom/tencent/tp/b/k;->b(Lcom/tencent/tp/b/k;)Lcom/tencent/tp/a/o$a;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tp/a/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "\u91cd\u8981\u901a\u77e5"

    const-string/jumbo v2, "\u53d6\u6d88\u5f00\u542f\u201c\u817e\u8baf\u6e38\u620f\u5b89\u5168\u4e2d\u5fc3\u201d\uff0c\u60a8\u7684\u90e8\u5206\u6e38\u620f\u4f53\u9a8c\u5c06\u53d7\u5230\u9650\u5236\uff0c\u8bf7\u518d\u6b21\u786e\u8ba4\u3002"

    const-string/jumbo v3, "\u7acb\u5373\u5f00\u542f"

    const-string/jumbo v4, "\u6682\u4e0d\u5f00\u542f"

    goto :goto_0
.end method
