.class public final Lcom/netease/mobile/link/q0;
.super Lcom/netease/mobile/link/h5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/h5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/netease/mobile/link/h5;->d:Ljava/lang/String;

    const-string v1, "dimen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v0

    iget v2, p0, Lcom/netease/mobile/link/h5;->b:I

    .line 1
    invoke-virtual {v0}, Lcom/netease/mobile/link/j5;->b()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    iget-object v4, v4, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    iget-object v5, v4, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    iget-object v4, v4, Lcom/netease/mobile/link/k5$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v3, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :try_start_0
    iget-object v3, v0, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    iget-object v3, v3, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    iget-object v3, v3, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, v0, Lcom/netease/mobile/link/j5;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/TextView;

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method
