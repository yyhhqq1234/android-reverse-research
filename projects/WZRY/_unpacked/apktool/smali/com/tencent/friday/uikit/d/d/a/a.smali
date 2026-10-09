.class public Lcom/tencent/friday/uikit/d/d/a/a;
.super Ljava/lang/Object;
.source "JMarker.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

.field private c:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

.field private d:I

.field private e:Lcom/tencent/a/a/a/g;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/a/a;->a:Landroid/content/Context;

    .line 34
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getIcon()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    .line 35
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getInfoWindow()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->c:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    .line 36
    iput p3, p0, Lcom/tencent/friday/uikit/d/d/a/a;->d:I

    .line 37
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->f:I

    .line 38
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/tencent/friday/uikit/d/d/a/b;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/a/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/a/a;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    invoke-direct {v0, v1, v2}, Lcom/tencent/friday/uikit/d/d/a/b;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;)V

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/tencent/a/a/a/g;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/a/a;->e:Lcom/tencent/a/a/a/g;

    .line 65
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;)V
    .locals 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->e:Lcom/tencent/a/a/a/g;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->e:Lcom/tencent/a/a/a/g;

    new-instance v1, Lcom/tencent/a/a/a/e;

    invoke-static {p1}, Lcom/tencent/friday/uikit/a/c/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;)D

    move-result-wide v2

    invoke-static {p2}, Lcom/tencent/friday/uikit/a/c/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/a/a/a/e;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/g;->a(Lcom/tencent/a/a/a/e;)V

    .line 96
    :cond_0
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->c:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/tencent/friday/uikit/d/d/a/c;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/a/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/a/a;->c:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;->getTableView()Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    move-result-object v2

    iget v3, p0, Lcom/tencent/friday/uikit/d/d/a/a;->d:I

    iget v4, p0, Lcom/tencent/friday/uikit/d/d/a/a;->f:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/friday/uikit/d/d/a/c;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;II)V

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->e:Lcom/tencent/a/a/a/g;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->e:Lcom/tencent/a/a/a/g;

    invoke-virtual {v0}, Lcom/tencent/a/a/a/g;->a()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/a;->e:Lcom/tencent/a/a/a/g;

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "marker.get == null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
