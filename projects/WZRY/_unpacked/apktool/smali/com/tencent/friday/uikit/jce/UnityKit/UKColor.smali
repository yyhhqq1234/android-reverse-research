.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKColor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->$assertionsDisabled:Z

    .line 132
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->cache_r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 136
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->cache_g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 140
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->cache_b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 144
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->cache_a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 145
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
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 75
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 76
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 77
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 78
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 79
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKColor"

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
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 158
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 159
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "g"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 160
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "b"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 161
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 162
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 166
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 167
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 168
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 169
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 170
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 171
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
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 89
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 90
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 91
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 92
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKColor"

    return-object v0
.end method

.method public getA()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getB()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getG()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getR()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

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
    const/4 v2, 0x1

    .line 149
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->cache_r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 150
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->cache_g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 151
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->cache_b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 152
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->cache_a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 153
    return-void
.end method

.method public setA(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 67
    return-void
.end method

.method public setB(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 57
    return-void
.end method

.method public setG(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 47
    return-void
.end method

.method public setR(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 37
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 125
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 126
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 127
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 128
    return-void
.end method
