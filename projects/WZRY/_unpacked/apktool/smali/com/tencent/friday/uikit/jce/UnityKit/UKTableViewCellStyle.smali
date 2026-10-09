.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKTableViewCellStyle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

.field static cache_cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

.field static cache_imageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;",
            ">;"
        }
    .end annotation
.end field

.field static cache_labels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

.field public cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

.field public imageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;",
            ">;"
        }
    .end annotation
.end field

.field public labels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->$assertionsDisabled:Z

    .line 141
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_labels:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;-><init>()V

    .line 147
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_labels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_imageViews:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;-><init>()V

    .line 153
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 158
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

    .line 70
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;",
            ">;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 75
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 76
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    .line 77
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    .line 78
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 79
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKTableViewCellStyle"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :cond_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    .line 117
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 171
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    const-string v2, "backgroundImage"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 172
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    const-string v2, "labels"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 173
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    const-string v2, "imageViews"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 174
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const-string v2, "cellSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 175
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 179
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 180
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 181
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/util/Collection;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 182
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/util/Collection;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 183
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 184
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;

    .line 89
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 90
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    .line 91
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    .line 92
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 93
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKTableViewCellStyle"

    return-object v0
.end method

.method public getBackgroundImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    return-object v0
.end method

.method public getCellSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    return-object v0
.end method

.method public getImageViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 163
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_labels:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    .line 164
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_imageViews:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    .line 165
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cache_cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 166
    return-void
.end method

.method public setBackgroundImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 37
    return-void
.end method

.method public setCellSize(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    .line 67
    return-void
.end method

.method public setImageViews(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public setLabels(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->labels:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->imageViews:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->cellSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 137
    return-void
.end method
