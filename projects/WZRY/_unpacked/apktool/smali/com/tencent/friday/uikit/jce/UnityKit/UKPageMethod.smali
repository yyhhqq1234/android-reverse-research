.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKPageMethod.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

.field static cache_removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;


# instance fields
.field public addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

.field public removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->$assertionsDisabled:Z

    .line 162
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 166
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 170
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 174
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    .line 178
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 179
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
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 87
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 88
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 89
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 90
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    .line 91
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 92
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKPageMethod"

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
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 193
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "setRect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 194
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "setInvisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 195
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "setBackgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 196
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    const-string v2, "addView"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 197
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "removeViewByID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 198
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 202
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 203
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 204
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 205
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 206
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 207
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 208
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
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;

    .line 102
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 103
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 104
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 105
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    .line 106
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKPageMethod"

    return-object v0
.end method

.method public getAddView()Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    return-object v0
.end method

.method public getRemoveViewByID()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getSetBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getSetInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getSetRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

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

    .line 183
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 184
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 185
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 186
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    .line 187
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->cache_removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 188
    return-void
.end method

.method public setAddView(Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    .line 69
    return-void
.end method

.method public setRemoveViewByID(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 79
    return-void
.end method

.method public setSetBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 59
    return-void
.end method

.method public setSetInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 49
    return-void
.end method

.method public setSetRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 39
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 158
    :cond_4
    return-void
.end method
