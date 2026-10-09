.class public final Lcom/netease/mobile/link/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/netease/mobile/link/h5;
    .locals 1

    const-string v0, "background"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "src"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "popupBackground"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "drawableBottom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "drawableTop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "drawableLeft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "drawableRight"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "textColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "textColorHint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "textColorLink"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "divider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/mobile/link/i0;

    invoke-direct {v0}, Lcom/netease/mobile/link/i0;-><init>()V

    goto :goto_3

    :cond_2
    const-string v0, "textSize"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "textCursorDrawable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/netease/mobile/link/v5;

    invoke-direct {v0}, Lcom/netease/mobile/link/v5;-><init>()V

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    :goto_0
    new-instance v0, Lcom/netease/mobile/link/q0;

    invoke-direct {v0}, Lcom/netease/mobile/link/q0;-><init>()V

    goto :goto_3

    :cond_6
    :goto_1
    new-instance v0, Lcom/netease/mobile/link/u5;

    invoke-direct {v0}, Lcom/netease/mobile/link/u5;-><init>()V

    goto :goto_3

    :cond_7
    :goto_2
    new-instance v0, Lcom/netease/mobile/link/j;

    invoke-direct {v0}, Lcom/netease/mobile/link/j;-><init>()V

    :goto_3
    iput-object p0, v0, Lcom/netease/mobile/link/h5;->a:Ljava/lang/String;

    iput p1, v0, Lcom/netease/mobile/link/h5;->b:I

    iput-object p2, v0, Lcom/netease/mobile/link/h5;->c:Ljava/lang/String;

    iput-object p3, v0, Lcom/netease/mobile/link/h5;->d:Ljava/lang/String;

    return-object v0
.end method
