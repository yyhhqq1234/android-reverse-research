.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKTriStateColor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;


# instance fields
.field public disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->$assertionsDisabled:Z

    .line 126
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->cache_normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 130
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->cache_highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 134
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->cache_disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 135
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

    .line 58
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 63
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 64
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 65
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 66
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKTriStateColor"

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
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 147
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "normalColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 148
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "highlightedColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 149
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "disabledColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 150
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 155
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 156
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 157
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 158
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
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    .line 76
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 77
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 78
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKTriStateColor"

    return-object v0
.end method

.method public getDisabledColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getHighlightedColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getNormalColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

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
    const/4 v2, 0x0

    .line 139
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->cache_normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 140
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->cache_highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 141
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->cache_disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 142
    return-void
.end method

.method public setDisabledColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 55
    return-void
.end method

.method public setHighlightedColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 45
    return-void
.end method

.method public setNormalColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 35
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->normalColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->highlightedColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->disabledColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 122
    :cond_2
    return-void
.end method
