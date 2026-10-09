.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKMapViewCallbackData_ValueChanged.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field static cache_leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field static cache_reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field static cache_zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field public leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field public reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field public zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->$assertionsDisabled:Z

    .line 162
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 166
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 170
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 174
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 178
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 182
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 183
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 99
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 100
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 101
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 102
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 103
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 104
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 105
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKMapViewCallbackData_ValueChanged"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :cond_0
    return-object v0

    .line 143
    :catch_0
    move-exception v1

    .line 145
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 198
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const-string v2, "centerCoordinate"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 199
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "zoomLevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 200
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const-string v2, "leftTopCoordinate"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 201
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const-string v2, "rightBottomCoordinate"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 202
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "reachToMinZoomLevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 203
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "reachToMaxZoomLevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 204
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 208
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 209
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 210
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 211
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 212
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 213
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 214
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 215
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;

    .line 115
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 116
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 117
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 118
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 119
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 120
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 121
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKMapViewCallbackData_ValueChanged"

    return-object v0
.end method

.method public getCenterCoordinate()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    return-object v0
.end method

.method public getLeftTopCoordinate()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    return-object v0
.end method

.method public getReachToMaxZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getReachToMinZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getRightBottomCoordinate()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    return-object v0
.end method

.method public getZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 187
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 188
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 189
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 190
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 191
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 192
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->cache_reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 193
    return-void
.end method

.method public setCenterCoordinate(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 41
    return-void
.end method

.method public setLeftTopCoordinate(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 61
    return-void
.end method

.method public setReachToMaxZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 91
    return-void
.end method

.method public setReachToMinZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 81
    return-void
.end method

.method public setRightBottomCoordinate(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 71
    return-void
.end method

.method public setZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 51
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 153
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 154
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->leftTopCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 155
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->rightBottomCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 156
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMinZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 157
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;->reachToMaxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 158
    return-void
.end method
