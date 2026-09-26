.class public Lcom/netease/mobsecurity/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mobsecurity/a/c/a;


# instance fields
.field a:Lcom/netease/mobsecurity/factory/b;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobsecurity/a/c/b;->b:Landroid/content/Context;

    new-instance v0, Lcom/netease/mobsecurity/factory/b;

    invoke-direct {v0, p1}, Lcom/netease/mobsecurity/factory/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mobsecurity/a/c/b;->a:Lcom/netease/mobsecurity/factory/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mobsecurity/a/d;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mobsecurity/SecException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v1, ""

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/netease/mobsecurity/a/d;->b:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget v3, p1, Lcom/netease/mobsecurity/a/d;->c:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    iget-object v0, p1, Lcom/netease/mobsecurity/a/d;->b:Ljava/util/Map;

    const-string v3, "input"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v4

    move v0, v2

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/netease/mobsecurity/a/d;->a:Ljava/lang/String;

    iget v3, p1, Lcom/netease/mobsecurity/a/d;->c:I

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/netease/mobsecurity/a/c/b;->a([Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v3, p1, Lcom/netease/mobsecurity/a/d;->c:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_2

    iget v3, p1, Lcom/netease/mobsecurity/a/d;->d:I

    iget-object v0, p1, Lcom/netease/mobsecurity/a/d;->b:Ljava/util/Map;

    const-string v5, "input"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    move v0, v4

    goto :goto_0
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mobsecurity/SecException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/mobsecurity/a/c/b;->a:Lcom/netease/mobsecurity/factory/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/mobsecurity/factory/b;->a([Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
