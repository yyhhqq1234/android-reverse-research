.class public Lcom/tencent/friday/uikit/d/d/g;
.super Ljava/lang/Object;
.source "JTableView.java"


# instance fields
.field private a:Lcom/tencent/friday/uikit/d/d/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/friday/uikit/d/d/g;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/friday/uikit/d/d/g;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V

    .line 31
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V
    .locals 1

    .prologue
    .line 37
    if-nez p2, :cond_0

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getHorizontal()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getHorizontal()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    :cond_1
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/friday/uikit/d/d/b/e;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/g;->a:Lcom/tencent/friday/uikit/d/d/b/a;

    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/friday/uikit/d/d/b/b;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/g;->a:Lcom/tencent/friday/uikit/d/d/b/a;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/tencent/friday/uikit/d/d/b/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/g;->a:Lcom/tencent/friday/uikit/d/d/b/a;

    return-object v0
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/g;->a:Lcom/tencent/friday/uikit/d/d/b/a;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/g;->a:Lcom/tencent/friday/uikit/d/d/b/a;

    invoke-interface {v0, p1}, Lcom/tencent/friday/uikit/d/d/b/a;->setOuterItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public b()Landroid/widget/AdapterView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/g;->a:Lcom/tencent/friday/uikit/d/d/b/a;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/g;->a:Lcom/tencent/friday/uikit/d/d/b/a;

    invoke-interface {v0}, Lcom/tencent/friday/uikit/d/d/b/a;->getView()Landroid/widget/AdapterView;

    move-result-object v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/g;->a:Lcom/tencent/friday/uikit/d/d/b/a;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, -0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/g;->a:Lcom/tencent/friday/uikit/d/d/b/a;

    invoke-interface {v0}, Lcom/tencent/friday/uikit/d/d/b/a;->getId()I

    move-result v0

    goto :goto_0
.end method
