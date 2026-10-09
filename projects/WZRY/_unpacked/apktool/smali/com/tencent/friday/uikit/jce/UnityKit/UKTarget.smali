.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKTarget.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_targetType:I


# instance fields
.field public targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public targetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->$assertionsDisabled:Z

    .line 102
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->cache_targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 106
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->cache_targetType:I

    .line 107
    return-void

    :cond_0
    move v0, v1

    .line 9
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    .line 51
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 52
    iput p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    .line 53
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKTarget"

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
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 118
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "targetID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 119
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    const-string/jumbo v2, "targetType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 120
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 125
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 126
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 127
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
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;

    .line 63
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 64
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    .line 65
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKTarget"

    return-object v0
.end method

.method public getTargetID()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    return v0
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

    .line 111
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->cache_targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 112
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    .line 113
    return-void
.end method

.method public setTargetID(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 33
    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    .line 43
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 97
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->targetType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 98
    return-void
.end method
