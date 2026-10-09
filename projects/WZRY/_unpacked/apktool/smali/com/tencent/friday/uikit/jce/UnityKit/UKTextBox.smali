.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKTextBox.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

.field static cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field static cache_text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field static cache_textAlignment:I

.field static cache_textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

.field public id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field public text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field public textAlignment:I

.field public textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->$assertionsDisabled:Z

    .line 222
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 226
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 230
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 234
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 238
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 242
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 246
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 250
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 254
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_textAlignment:I

    .line 255
    return-void

    :cond_0
    move v0, v1

    .line 9
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKString;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    .line 135
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 136
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 137
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 138
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 139
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 140
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 141
    iput-object p7, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 142
    iput-object p8, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 143
    iput p9, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    .line 144
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKTextBox"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 183
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :cond_0
    return-object v0

    .line 185
    :catch_0
    move-exception v1

    .line 187
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 273
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 274
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "zIndex"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 275
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "rect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 276
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "invisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 277
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "backgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 278
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 279
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string/jumbo v2, "textColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 280
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const-string v2, "font"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 281
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    const-string/jumbo v2, "textAlignment"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 282
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 286
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 287
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 288
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 289
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 290
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 291
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 292
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 293
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 294
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 295
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 296
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    .line 154
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 155
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 156
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 157
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 158
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 159
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 160
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 161
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 162
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    .line 163
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKTextBox"

    return-object v0
.end method

.method public getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getFont()Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    return-object v0
.end method

.method public getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public getText()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    return v0
.end method

.method public getTextColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 260
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 261
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 262
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 263
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 264
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 265
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 266
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->cache_font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 267
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    .line 268
    return-void
.end method

.method public setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 87
    return-void
.end method

.method public setFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 117
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 47
    return-void
.end method

.method public setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 77
    return-void
.end method

.method public setRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 67
    return-void
.end method

.method public setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 97
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    .line 127
    return-void
.end method

.method public setTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 107
    return-void
.end method

.method public setZIndex(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 57
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 195
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 200
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 209
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 217
    :cond_4
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->textAlignment:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 218
    return-void
.end method
