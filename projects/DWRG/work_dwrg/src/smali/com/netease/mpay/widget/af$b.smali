.class public Lcom/netease/mpay/widget/af$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/af$b$a;,
        Lcom/netease/mpay/widget/af$b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/widget/af$a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AdapterView;Ljava/util/List;ILcom/netease/mpay/widget/af$a$a;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/widget/af$b;-><init>(Landroid/content/Context;Landroid/widget/AdapterView;Ljava/util/List;ILcom/netease/mpay/widget/af$a$a;Lcom/netease/mpay/widget/af$b$b;)V

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

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AdapterView;Ljava/util/List;ILcom/netease/mpay/widget/af$a$a;Lcom/netease/mpay/widget/af$b$b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/netease/mpay/widget/af$b;->b:Z

    new-instance v0, Lcom/netease/mpay/widget/af$a;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/netease/mpay/widget/af$a;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/netease/mpay/widget/af$a$a;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/af$b;->a:Lcom/netease/mpay/widget/af$a;

    iget-object v0, p0, Lcom/netease/mpay/widget/af$b;->a:Lcom/netease/mpay/widget/af$a;

    invoke-virtual {p2, v0}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    if-nez p6, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/netease/mpay/widget/af$b;->b:Z

    instance-of v0, p2, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "auto-load-more feature only supports AdapterView descendent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/widget/AbsListView;

    new-instance v1, Lcom/netease/mpay/widget/ag;

    invoke-direct {v1, p0, p6, p2}, Lcom/netease/mpay/widget/ag;-><init>(Lcom/netease/mpay/widget/af$b;Lcom/netease/mpay/widget/af$b$b;Landroid/widget/AdapterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/widget/af$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/widget/af$b;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/widget/af$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/widget/af$b;->b:Z

    return p1
.end method


# virtual methods
.method public a()Lcom/netease/mpay/widget/af$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/af$b;->a:Lcom/netease/mpay/widget/af$a;

    return-object v0
.end method
