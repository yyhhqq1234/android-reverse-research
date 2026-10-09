.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKFont.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field static cache_fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field public fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->$assertionsDisabled:Z

    .line 108
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->cache_fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 112
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->cache_fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 113
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

    .line 46
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 51
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 52
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 53
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKFont"

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
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 124
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "fontSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 125
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const-string v2, "fontName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 126
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 131
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 132
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 133
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
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 63
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 64
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 65
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKFont"

    return-object v0
.end method

.method public getFontName()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    return-object v0
.end method

.method public getFontSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
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
    const/4 v2, 0x0

    .line 117
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->cache_fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 118
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->cache_fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 119
    return-void
.end method

.method public setFontName(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 43
    return-void
.end method

.method public setFontSize(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 33
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontSize:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->fontName:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 104
    :cond_1
    return-void
.end method
