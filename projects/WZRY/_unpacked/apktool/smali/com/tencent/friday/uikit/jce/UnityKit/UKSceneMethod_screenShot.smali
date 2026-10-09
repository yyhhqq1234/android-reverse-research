.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKSceneMethod_screenShot.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_imageType:I

.field static cache_scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;


# instance fields
.field public imageType:I

.field public reserved:I

.field public scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->$assertionsDisabled:Z

    .line 120
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->cache_imageType:I

    .line 124
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->cache_scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    .line 125
    return-void

    :cond_0
    move v0, v1

    .line 9
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    .line 23
    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    .line 59
    return-void
.end method

.method public constructor <init>(IILcom/tencent/friday/uikit/jce/UnityKit/UKFloat;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    .line 23
    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    .line 63
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    .line 64
    iput p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    .line 65
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    .line 66
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKSceneMethod_screenShot"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :cond_0
    return-object v0

    .line 101
    :catch_0
    move-exception v1

    .line 103
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 137
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    const-string v2, "reserved"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 138
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    const-string v2, "imageType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 139
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    const-string v2, "scale"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 140
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 144
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 145
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 146
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 147
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 148
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    .line 76
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    .line 77
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    .line 78
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    .line 79
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKSceneMethod_screenShot"

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    return v0
.end method

.method public getReserved()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    return v0
.end method

.method public getScale()Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    .line 130
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    .line 131
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->cache_scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    .line 132
    return-void
.end method

.method public setImageType(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    .line 45
    return-void
.end method

.method public setReserved(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    .line 35
    return-void
.end method

.method public setScale(Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    .line 55
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->reserved:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 111
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->imageType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 112
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->scale:Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 116
    :cond_0
    return-void
.end method
