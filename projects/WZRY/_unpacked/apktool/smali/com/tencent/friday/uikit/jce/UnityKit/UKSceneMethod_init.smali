.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKSceneMethod_init.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

.field static cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;


# instance fields
.field public datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

.field public rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->$assertionsDisabled:Z

    .line 105
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->cache_datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 109
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 110
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

    .line 46
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 51
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 52
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 53
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKSceneMethod_init"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :cond_0
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    .line 89
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 121
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const-string v2, "datumScreenSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 122
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "rect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 123
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 128
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 129
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 130
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    .line 63
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 64
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 65
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKSceneMethod_init"

    return-object v0
.end method

.method public getDatumScreenSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    return-object v0
.end method

.method public getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->cache_datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 115
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 116
    return-void
.end method

.method public setDatumScreenSize(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 33
    return-void
.end method

.method public setRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 43
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->datumScreenSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 97
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 101
    :cond_0
    return-void
.end method
