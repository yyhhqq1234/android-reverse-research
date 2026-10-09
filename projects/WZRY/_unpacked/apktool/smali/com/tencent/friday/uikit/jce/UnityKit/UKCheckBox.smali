.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKCheckBox.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

.field static cache_checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

.field static cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field static cache_uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

.field static cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

.field public checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

.field public id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field public uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

.field public zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->$assertionsDisabled:Z

    .line 228
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 232
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 236
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 240
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 244
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 248
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 252
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 256
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 260
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 261
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

    .line 130
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 135
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 136
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 137
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 138
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 139
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 140
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 141
    iput-object p7, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 142
    iput-object p8, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 143
    iput-object p9, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 144
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKCheckBox"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 183
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :cond_0
    return-object v0

    .line 185
    :catch_0
    move-exception v1

    .line 187
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 278
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 279
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 280
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "zIndex"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 281
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "rect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 282
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "invisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 283
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "backgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 284
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const-string v2, "backgroundImageView"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 285
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const-string/jumbo v2, "uncheckedImageView"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 286
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const-string v2, "checkedImageView"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 287
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "isChecked"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 288
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 292
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 293
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 294
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 295
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 296
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 297
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 298
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 299
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 300
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 301
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 302
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    .line 154
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 155
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 156
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 157
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 158
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 159
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 160
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 161
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 162
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 163
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKCheckBox"

    return-object v0
.end method

.method public getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getBackgroundImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    return-object v0
.end method

.method public getCheckedImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    return-object v0
.end method

.method public getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getIsChecked()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public getUncheckedImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    return-object v0
.end method

.method public getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 266
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 267
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 268
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 269
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 270
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 271
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 272
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 273
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->cache_isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 274
    return-void
.end method

.method public setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 87
    return-void
.end method

.method public setBackgroundImageView(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 97
    return-void
.end method

.method public setCheckedImageView(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 117
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 47
    return-void
.end method

.method public setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 77
    return-void
.end method

.method public setIsChecked(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 127
    return-void
.end method

.method public setRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 67
    return-void
.end method

.method public setUncheckedImageView(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 107
    return-void
.end method

.method public setZIndex(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 57
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 195
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 200
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->backgroundImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->uncheckedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    if-eqz v0, :cond_5

    .line 218
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->checkedImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 224
    :cond_6
    return-void
.end method
