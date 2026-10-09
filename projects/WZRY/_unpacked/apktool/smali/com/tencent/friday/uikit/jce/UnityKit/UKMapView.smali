.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKMapView.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field static cache_disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_markers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;",
            ">;"
        }
    .end annotation
.end field

.field static cache_maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field static cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field public disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public markers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;",
            ">;"
        }
    .end annotation
.end field

.field public maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field public zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->$assertionsDisabled:Z

    .line 300
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 304
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 308
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 312
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 316
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 320
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 324
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 328
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 332
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_markers:Ljava/util/ArrayList;

    .line 337
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;-><init>()V

    .line 338
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_markers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 346
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 350
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 351
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

    .line 178
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 39
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 43
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 45
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Ljava/util/ArrayList;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;",
            ">;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 39
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 43
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 45
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 183
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 184
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 185
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 186
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 187
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 188
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 189
    iput-object p7, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 190
    iput-object p8, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 191
    iput-object p9, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 192
    iput-object p10, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    .line 193
    iput-object p11, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 194
    iput-object p12, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 195
    iput-object p13, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 196
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKMapView"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 239
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :cond_0
    return-object v0

    .line 241
    :catch_0
    move-exception v1

    .line 243
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 372
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 373
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 374
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "zIndex"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 375
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "rect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 376
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "invisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 377
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "backgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 378
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const-string v2, "centerCoordinate"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 379
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "zoomLevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 380
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "minZoomLevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 381
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "maxZoomLevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 382
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    const-string v2, "markers"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 383
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "hideScale"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 384
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "disableScroll"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 385
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "disableZoom"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 386
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 390
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 391
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 392
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 393
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 394
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 395
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 396
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 397
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 398
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 399
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 400
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/util/Collection;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 401
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 402
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 403
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 404
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    if-nez p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 206
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 207
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 208
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 209
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 210
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 211
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 212
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 213
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 214
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 215
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    .line 216
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 217
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 218
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 219
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKMapView"

    return-object v0
.end method

.method public getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getCenterCoordinate()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    return-object v0
.end method

.method public getDisableScroll()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getDisableZoom()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getHideScale()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getMarkers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getMinZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 226
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 356
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 357
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 358
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 359
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 360
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 361
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 362
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 363
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 364
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_markers:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    .line 365
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 366
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 367
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->cache_disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 368
    return-void
.end method

.method public setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 95
    return-void
.end method

.method public setCenterCoordinate(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 105
    return-void
.end method

.method public setDisableScroll(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 165
    return-void
.end method

.method public setDisableZoom(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 175
    return-void
.end method

.method public setHideScale(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 155
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 55
    return-void
.end method

.method public setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 85
    return-void
.end method

.method public setMarkers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    .line 145
    return-void
.end method

.method public setMaxZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 135
    return-void
.end method

.method public setMinZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 125
    return-void
.end method

.method public setRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 75
    return-void
.end method

.method public setZIndex(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 65
    return-void
.end method

.method public setZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 115
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 251
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 256
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->centerCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->zoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_5

    .line 274
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->minZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 276
    :cond_5
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_6

    .line 278
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->maxZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->markers:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 284
    :cond_7
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_8

    .line 286
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 288
    :cond_8
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_9

    .line 290
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 292
    :cond_9
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_a

    .line 294
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 296
    :cond_a
    return-void
.end method
