.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKView;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKView.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field static cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field public zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->$assertionsDisabled:Z

    .line 156
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 160
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 164
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 168
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 172
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 173
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

    .line 82
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 87
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 88
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 89
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 90
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 91
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 92
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKView"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 127
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :cond_0
    return-object v0

    .line 129
    :catch_0
    move-exception v1

    .line 131
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 187
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 188
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "zIndex"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 189
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "rect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 190
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "invisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 191
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "backgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 192
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 196
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 197
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 198
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 199
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 200
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 201
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 202
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;

    .line 102
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 103
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 104
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 105
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 106
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 107
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKView"

    return-object v0
.end method

.method public getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 114
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 178
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 179
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 180
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 181
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 182
    return-void
.end method

.method public setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 79
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 39
    return-void
.end method

.method public setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 69
    return-void
.end method

.method public setRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 59
    return-void
.end method

.method public setZIndex(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 49
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 139
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 144
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKView;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 152
    :cond_2
    return-void
.end method
