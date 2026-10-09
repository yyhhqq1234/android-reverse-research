.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKCallbackTarget.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_callbackType:I

.field static cache_targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_targetType:I


# instance fields
.field public callbackType:I

.field public targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public targetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->$assertionsDisabled:Z

    .line 117
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->cache_targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 121
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->cache_targetType:I

    .line 125
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->cache_callbackType:I

    .line 126
    return-void

    :cond_0
    move v0, v1

    .line 9
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    .line 25
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    .line 25
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    .line 63
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 64
    iput p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    .line 65
    iput p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    .line 66
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKCallbackTarget"

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
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 138
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "targetID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 139
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    const-string/jumbo v2, "targetType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 140
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    const-string v2, "callbackType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 141
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 146
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 147
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 148
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 149
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
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    .line 76
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 77
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    .line 78
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    .line 79
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKCallbackTarget"

    return-object v0
.end method

.method public getCallbackType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    return v0
.end method

.method public getTargetID()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    return v0
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
    const/4 v2, 0x1

    .line 130
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->cache_targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 131
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    .line 132
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    .line 133
    return-void
.end method

.method public setCallbackType(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    .line 55
    return-void
.end method

.method public setTargetID(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 35
    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    .line 45
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 111
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->targetType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 112
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->callbackType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 113
    return-void
.end method
