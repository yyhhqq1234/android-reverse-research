.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKImage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_data:[B

.field static cache_filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field static cache_imageType:I

.field static cache_ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

.field static cache_url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;


# instance fields
.field public data:[B

.field public filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field public imageType:I

.field public ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

.field public url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->$assertionsDisabled:Z

    .line 159
    sput v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_imageType:I

    .line 163
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 167
    new-array v0, v1, [B

    check-cast v0, [B

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_data:[B

    .line 169
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_data:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    .line 173
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 177
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    .line 178
    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    .line 23
    iput-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 25
    iput-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    .line 27
    iput-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 29
    iput-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    .line 83
    return-void
.end method

.method public constructor <init>(ILcom/tencent/friday/uikit/jce/UnityKit/UKString;[BLcom/tencent/friday/uikit/jce/UnityKit/UKString;Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    .line 23
    iput-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 25
    iput-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    .line 27
    iput-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 29
    iput-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    .line 87
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    .line 88
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 89
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    .line 90
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 91
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    .line 92
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKImage"

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
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 192
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    const-string v2, "imageType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 193
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const-string v2, "filePath"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 194
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 195
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 196
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    const-string v2, "ninePatchConfig"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 197
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 201
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 202
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 203
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 204
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple([BZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 205
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 206
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 207
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
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    .line 102
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    .line 103
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 104
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    .line 105
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 106
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKImage"

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    return-object v0
.end method

.method public getFilePath()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    return v0
.end method

.method public getNinePatchConfig()Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    return-object v0
.end method

.method public getUrl()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    .line 183
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 184
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_data:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    .line 185
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 186
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->cache_ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    .line 187
    return-void
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    .line 59
    return-void
.end method

.method public setFilePath(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 49
    return-void
.end method

.method public setImageType(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    .line 39
    return-void
.end method

.method public setNinePatchConfig(Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    .line 79
    return-void
.end method

.method public setUrl(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 69
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->imageType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 139
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->filePath:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->data:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->url:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->ninePatchConfig:Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 155
    :cond_3
    return-void
.end method
