.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKLoadingView.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

.field static cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

.field static cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field static cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

.field public invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

.field public rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field public zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->$assertionsDisabled:Z

    .line 201
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 205
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 209
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 213
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 217
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 221
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    .line 225
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 229
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 230
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

    .line 118
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 123
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 124
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 125
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 126
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 127
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 128
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    .line 129
    iput-object p7, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 130
    iput-object p8, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 131
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKLoadingView"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :cond_0
    return-object v0

    .line 171
    :catch_0
    move-exception v1

    .line 173
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 247
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 248
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "zIndex"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 249
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "rect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 250
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "invisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 251
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "backgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 252
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    const-string v2, "loadingImage"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 253
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const-string v2, "imageSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 254
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "animationDuration"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 255
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 259
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 260
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 261
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 262
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 263
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 264
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 265
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 266
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 267
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 268
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    .line 141
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 142
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 143
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 144
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 145
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 146
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    .line 147
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 148
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 149
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKLoadingView"

    return-object v0
.end method

.method public getAnimationDuration()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getImageSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    return-object v0
.end method

.method public getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getLoadingImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    return-object v0
.end method

.method public getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 234
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 235
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 236
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 237
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 238
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 239
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    .line 240
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 241
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->cache_animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 242
    return-void
.end method

.method public setAnimationDuration(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 115
    return-void
.end method

.method public setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 85
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 45
    return-void
.end method

.method public setImageSize(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 105
    return-void
.end method

.method public setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 75
    return-void
.end method

.method public setLoadingImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    .line 95
    return-void
.end method

.method public setRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 65
    return-void
.end method

.method public setZIndex(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 55
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 181
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 186
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->loadingImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 195
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->imageSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 196
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->animationDuration:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 197
    return-void
.end method
