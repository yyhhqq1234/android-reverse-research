.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKMapViewMethod.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_addMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;",
            ">;"
        }
    .end annotation
.end field

.field static cache_clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

.field static cache_removeMarkerByIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            ">;"
        }
    .end annotation
.end field

.field static cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field static cache_setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

.field static cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field static cache_setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public addMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;",
            ">;"
        }
    .end annotation
.end field

.field public clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

.field public removeMarkerByIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            ">;"
        }
    .end annotation
.end field

.field public setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

.field public setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

.field public setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field public setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->$assertionsDisabled:Z

    .line 288
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 292
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 296
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 300
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 304
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_addMarkers:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;-><init>()V

    .line 310
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_addMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_removeMarkerByIDs:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    .line 316
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_removeMarkerByIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    .line 324
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    .line 328
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 332
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 336
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 337
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

    .line 166
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    .line 39
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 41
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 43
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            ">;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    .line 39
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 41
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 43
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 171
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 172
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 173
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 174
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 175
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 176
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    .line 177
    iput-object p7, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    .line 178
    iput-object p8, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    .line 179
    iput-object p9, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    .line 180
    iput-object p10, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 181
    iput-object p11, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 182
    iput-object p12, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 183
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKMapViewMethod"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 225
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :cond_0
    return-object v0

    .line 227
    :catch_0
    move-exception v1

    .line 229
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 357
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 358
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "setRect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 359
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "setInvisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 360
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "setBackgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 361
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const-string v2, "setCenterCoordinate"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 362
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "setZoomLevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 363
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    const-string v2, "addMarkers"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 364
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    const-string v2, "removeMarkerByIDs"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 365
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    const-string v2, "clearAllMarkers"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 366
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    const-string v2, "setMarkerPosition"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 367
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "setHideScale"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 368
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "setDisableScroll"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 369
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "setDisableZoom"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 370
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 374
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 375
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 376
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 377
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 378
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 379
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 380
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/util/Collection;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 381
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/util/Collection;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 382
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 383
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 384
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 385
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 386
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 387
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 187
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;

    .line 193
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 194
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 195
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 196
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 197
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 198
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    .line 199
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    .line 200
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    .line 201
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    .line 202
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 203
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 204
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 205
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKMapViewMethod"

    return-object v0
.end method

.method public getAddMarkers()Ljava/util/ArrayList;
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
    .line 97
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClearAllMarkers()Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    return-object v0
.end method

.method public getRemoveMarkerByIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSetBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getSetCenterCoordinate()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    return-object v0
.end method

.method public getSetDisableScroll()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getSetDisableZoom()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getSetHideScale()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getSetInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getSetMarkerPosition()Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    return-object v0
.end method

.method public getSetRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public getSetZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 342
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 343
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 344
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 345
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 346
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_addMarkers:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    .line 347
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_removeMarkerByIDs:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    .line 348
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    .line 349
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    .line 350
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 351
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 352
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->cache_setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 353
    return-void
.end method

.method public setAddMarkers(Ljava/util/ArrayList;)V
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
    .line 102
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    .line 103
    return-void
.end method

.method public setClearAllMarkers(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    .line 123
    return-void
.end method

.method public setRemoveMarkerByIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method public setSetBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 73
    return-void
.end method

.method public setSetCenterCoordinate(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 83
    return-void
.end method

.method public setSetDisableScroll(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 153
    return-void
.end method

.method public setSetDisableZoom(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 163
    return-void
.end method

.method public setSetHideScale(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 143
    return-void
.end method

.method public setSetInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 63
    return-void
.end method

.method public setSetMarkerPosition(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    .line 133
    return-void
.end method

.method public setSetRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 53
    return-void
.end method

.method public setSetZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 93
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 262
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    if-eqz v0, :cond_7

    .line 266
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    if-eqz v0, :cond_8

    .line 270
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_9

    .line 274
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 276
    :cond_9
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_a

    .line 278
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 280
    :cond_a
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 284
    :cond_b
    return-void
.end method
