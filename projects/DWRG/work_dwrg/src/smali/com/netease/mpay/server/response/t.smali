.class public Lcom/netease/mpay/server/response/t;
.super Ljava/lang/Object;


# static fields
.field static h:Ljava/util/HashMap;

.field static i:Ljava/util/ArrayList;


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I


# direct methods
.method private constructor <init>(I)V
    .locals 8

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    return-void
.end method

.method private constructor <init>(IZZIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/mpay/server/response/t;->a:I

    iput-boolean p2, p0, Lcom/netease/mpay/server/response/t;->b:Z

    iput-boolean p3, p0, Lcom/netease/mpay/server/response/t;->c:Z

    iput p4, p0, Lcom/netease/mpay/server/response/t;->d:I

    iput p5, p0, Lcom/netease/mpay/server/response/t;->e:I

    iput p6, p0, Lcom/netease/mpay/server/response/t;->f:I

    iput p7, p0, Lcom/netease/mpay/server/response/t;->g:I

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

.method public static a(Landroid/content/Context;I)Lcom/netease/mpay/server/response/t;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/netease/mpay/server/response/t;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/mpay/server/response/t;->h:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/netease/mpay/server/response/t;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/mpay/server/response/t;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/t;

    :goto_0
    return-object v0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lcom/netease/mpay/server/response/t;

    invoke-direct {v0, p1}, Lcom/netease/mpay/server/response/t;-><init>(I)V

    :goto_1
    sget-object v1, Lcom/netease/mpay/server/response/t;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/netease/mpay/server/response/t;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/netease/mpay/server/response/t;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v3, v5

    :goto_2
    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->R:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->t:I

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->as:I

    sget v7, Lcom/netease/mpay/widget/RIdentifier$e;->aB:I

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :sswitch_1
    new-instance v0, Lcom/netease/mpay/server/response/t;

    invoke-static {v5}, Lcom/netease/mpay/server/response/t;->b(I)Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v5

    :goto_3
    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->V:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->x:I

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->av:I

    sget v7, Lcom/netease/mpay/widget/RIdentifier$e;->aE:I

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_3

    :sswitch_2
    new-instance v0, Lcom/netease/mpay/server/response/t;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/netease/mpay/server/response/t;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v5

    :goto_4
    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->S:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->u:I

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->at:I

    sget v7, Lcom/netease/mpay/widget/RIdentifier$e;->aC:I

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_4

    :sswitch_3
    new-instance v0, Lcom/netease/mpay/server/response/t;

    invoke-static {p0}, Lcom/netease/mpay/server/response/t;->c(Landroid/content/Context;)Z

    move-result v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->P:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->r:I

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->aq:I

    sget v7, Lcom/netease/mpay/widget/RIdentifier$e;->az:I

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    goto :goto_1

    :sswitch_4
    new-instance v0, Lcom/netease/mpay/server/response/t;

    invoke-static {p0}, Lcom/netease/mpay/server/response/t;->b(Landroid/content/Context;)Z

    move-result v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->Q:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->s:I

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->ar:I

    sget v7, Lcom/netease/mpay/widget/RIdentifier$e;->aA:I

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    goto :goto_1

    :sswitch_5
    new-instance v0, Lcom/netease/mpay/server/response/t;

    invoke-static {p0}, Lcom/netease/mpay/auth/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/netease/mpay/server/response/t;->b(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v3, v5

    :goto_5
    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->U:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->w:I

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->au:I

    sget v7, Lcom/netease/mpay/widget/RIdentifier$e;->aD:I

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    goto/16 :goto_1

    :cond_5
    move v3, v2

    goto :goto_5

    :sswitch_6
    new-instance v0, Lcom/netease/mpay/server/response/t;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/netease/mpay/server/response/t;->b(I)Z

    move-result v1

    if-nez v1, :cond_6

    move v3, v5

    :goto_6
    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->dJ:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->y:I

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->aw:I

    sget v7, Lcom/netease/mpay/widget/RIdentifier$e;->aF:I

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    goto/16 :goto_1

    :cond_6
    move v3, v2

    goto :goto_6

    :sswitch_7
    new-instance v0, Lcom/netease/mpay/server/response/t;

    invoke-static {p0}, Lcom/netease/mpay/auth/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/netease/mpay/server/response/t;->b(I)Z

    move-result v1

    if-nez v1, :cond_7

    move v3, v5

    :goto_7
    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->W:I

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->z:I

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->ax:I

    sget v7, Lcom/netease/mpay/widget/RIdentifier$e;->aG:I

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    goto/16 :goto_1

    :cond_7
    move v3, v2

    goto :goto_7

    :sswitch_8
    new-instance v3, Lcom/netease/mpay/server/response/t;

    sget v7, Lcom/netease/mpay/widget/RIdentifier$h;->T:I

    sget v8, Lcom/netease/mpay/widget/RIdentifier$e;->v:I

    move v4, p1

    move v6, v5

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/netease/mpay/server/response/t;-><init>(IZZIIII)V

    move-object v0, v3

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_6
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x7 -> :sswitch_2
        0x9 -> :sswitch_7
        0xa -> :sswitch_5
        0x2711 -> :sswitch_8
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/ar;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/ar;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/netease/mpay/widget/ar$a;->c:Lcom/netease/mpay/widget/ar$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/ar;->a(Lcom/netease/mpay/widget/ar$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    sget-object v0, Lcom/netease/mpay/server/response/t;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/mpay/server/response/t;->i:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/netease/mpay/server/response/t;->i:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netease/mpay/server/response/t;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netease/mpay/server/response/t;->h:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/t;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/netease/mpay/server/response/t;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/server/response/t;->c:Z

    :cond_1
    sget-object v1, Lcom/netease/mpay/server/response/t;->h:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static b(I)Z
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/netease/mpay/server/response/t;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/netease/mpay/server/response/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/ar;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/ar;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/netease/mpay/server/response/t;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netease/mpay/widget/ar$a;->c:Lcom/netease/mpay/widget/ar$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/ar;->b(Lcom/netease/mpay/widget/ar$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netease/mpay/widget/ar$a;->b:Lcom/netease/mpay/widget/ar$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/ar;->b(Lcom/netease/mpay/widget/ar$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    :try_start_0
    const-string v0, "com.google.android.gms.common.api.GoogleApiClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/ar;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/ar;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/netease/mpay/server/response/t;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netease/mpay/widget/ar$a;->a:Lcom/netease/mpay/widget/ar$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/ar;->b(Lcom/netease/mpay/widget/ar$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    :try_start_0
    const-string v0, "com.facebook.FacebookSdkVersion"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
