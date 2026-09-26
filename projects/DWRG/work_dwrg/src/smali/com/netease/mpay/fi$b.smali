.class Lcom/netease/mpay/fi$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/fi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/fi$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/fi$a;)V
    .locals 2
    .param p1    # Lcom/netease/mpay/fi$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/fi$b;->a:Lcom/netease/mpay/fi$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Lcom/netease/mpay/server/response/x;)Lcom/netease/mpay/view/b$b;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    sget-object v0, Lcom/netease/mpay/fk;->a:[I

    iget-object v4, p0, Lcom/netease/mpay/fi$b;->a:Lcom/netease/mpay/fi$a;

    invoke-virtual {v4}, Lcom/netease/mpay/fi$a;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object v3

    :pswitch_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->dr:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->C:I

    if-eqz p2, :cond_8

    iget-boolean v1, p2, Lcom/netease/mpay/server/response/x;->d:Z

    if-eqz v1, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->i:I

    :cond_0
    iget-boolean v1, p2, Lcom/netease/mpay/server/response/x;->d:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dy:I

    :goto_1
    move v4, v1

    move v1, v0

    :goto_2
    new-instance v0, Lcom/netease/mpay/view/b$b;

    if-lez v1, :cond_6

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const/4 v6, 0x0

    if-lez v4, :cond_7

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    move-object v4, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/view/b$b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_0

    :cond_1
    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dq:I

    goto :goto_1

    :pswitch_1
    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->dx:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->B:I

    if-eqz p2, :cond_9

    iget-boolean v0, p2, Lcom/netease/mpay/server/response/x;->g:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->dg:I

    :goto_5
    move v1, v4

    move v4, v0

    goto :goto_2

    :cond_2
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->dn:I

    goto :goto_5

    :pswitch_2
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->du:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->D:I

    if-eqz p2, :cond_8

    iget-boolean v4, p2, Lcom/netease/mpay/server/response/x;->e:Z

    if-nez v4, :cond_3

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dq:I

    move v4, v1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    iget v6, p2, Lcom/netease/mpay/server/response/x;->f:I

    if-ne v4, v6, :cond_4

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dC:I

    move v4, v1

    move v1, v0

    goto :goto_2

    :cond_4
    iget v4, p2, Lcom/netease/mpay/server/response/x;->f:I

    if-ne v2, v4, :cond_5

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dB:I

    move v4, v1

    move v1, v0

    goto :goto_2

    :cond_5
    iget v4, p2, Lcom/netease/mpay/server/response/x;->f:I

    if-nez v4, :cond_8

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dD:I

    move v4, v1

    move v1, v0

    goto :goto_2

    :pswitch_3
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->dw:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->E:I

    move v4, v1

    move v1, v0

    goto :goto_2

    :cond_6
    move-object v1, v3

    goto :goto_3

    :cond_7
    move-object v7, v3

    goto :goto_4

    :cond_8
    move v4, v1

    move v1, v0

    goto :goto_2

    :cond_9
    move v9, v1

    move v1, v4

    move v4, v9

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
