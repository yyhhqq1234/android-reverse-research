.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKCheckBoxCallbackData_ValueChanged.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;


# instance fields
.field public isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->$assertionsDisabled:Z

    .line 87
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->cache_isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 88
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 39
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 40
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKCheckBoxCallbackData_ValueChanged"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 71
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :cond_0
    return-object v0

    .line 73
    :catch_0
    move-exception v1

    .line 75
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 98
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "isChecked"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 99
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 104
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 105
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 49
    :cond_0
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;

    .line 50
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v1, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 51
    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKCheckBoxCallbackData_ValueChanged"

    return-object v0
.end method

.method public getIsChecked()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->cache_isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 93
    return-void
.end method

.method public setIsChecked(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 31
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;->isChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 83
    return-void
.end method
