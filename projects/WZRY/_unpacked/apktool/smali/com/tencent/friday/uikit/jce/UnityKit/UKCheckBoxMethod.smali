.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKCheckBoxMethod.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;


# instance fields
.field public setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->$assertionsDisabled:Z

    .line 144
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 148
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 152
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 156
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->cache_setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 157
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
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 75
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 76
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 77
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 78
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 79
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKCheckBoxMethod"

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
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 170
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "setRect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 171
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "setInvisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 172
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "setBackgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 173
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "setChecked"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 174
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 178
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 179
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 180
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 181
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 182
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 183
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
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;

    .line 89
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 90
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 91
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 92
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKCheckBoxMethod"

    return-object v0
.end method

.method public getSetBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getSetChecked()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getSetInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getSetRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 162
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 163
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 164
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->cache_setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 165
    return-void
.end method

.method public setSetBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 57
    return-void
.end method

.method public setSetChecked(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 67
    return-void
.end method

.method public setSetInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 47
    return-void
.end method

.method public setSetRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 37
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 140
    :cond_3
    return-void
.end method
