.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKLabel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_ellipsis:I

.field static cache_font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

.field static cache_highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field static cache_text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field static cache_textAlignment:I

.field static cache_textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public ellipsis:I

.field public font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

.field public highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

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
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->$assertionsDisabled:Z

    .line 258
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 262
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 266
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 270
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 274
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 278
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 282
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 286
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 290
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 294
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_textAlignment:I

    .line 298
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_ellipsis:I

    .line 299
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

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 39
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    .line 41
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKString;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 39
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    .line 41
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    .line 159
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 160
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 161
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 162
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 163
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 164
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 165
    iput-object p7, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 166
    iput-object p8, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 167
    iput-object p9, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 168
    iput p10, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    .line 169
    iput p11, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    .line 170
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKLabel"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 211
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    :cond_0
    return-object v0

    .line 213
    :catch_0
    move-exception v1

    .line 215
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 319
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 320
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "zIndex"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 321
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "rect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 322
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "invisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 323
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "backgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 324
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 325
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string/jumbo v2, "textColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 326
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "highlightedTextColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 327
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const-string v2, "font"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 328
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    const-string/jumbo v2, "textAlignment"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 329
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    const-string v2, "ellipsis"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 330
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 334
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 335
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 336
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 337
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 338
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 339
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 340
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 341
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 342
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 343
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 344
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 345
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 346
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 180
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 181
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 182
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 183
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 184
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 185
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 186
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 187
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 188
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 189
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    .line 190
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    .line 191
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKLabel"

    return-object v0
.end method

.method public getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getEllipsis()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    return v0
.end method

.method public getFont()Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    return-object v0
.end method

.method public getHighlightedTextColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public getText()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    return v0
.end method

.method public getTextColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 198
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 304
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 305
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 306
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 307
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 308
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 309
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 310
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 311
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->cache_font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 312
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    .line 313
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    .line 314
    return-void
.end method

.method public setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 91
    return-void
.end method

.method public setEllipsis(I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    .line 151
    return-void
.end method

.method public setFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 131
    return-void
.end method

.method public setHighlightedTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 121
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 51
    return-void
.end method

.method public setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 81
    return-void
.end method

.method public setRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 71
    return-void
.end method

.method public setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 101
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    .line 141
    return-void
.end method

.method public setTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 111
    return-void
.end method

.method public setZIndex(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 61
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 223
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 228
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->highlightedTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    if-eqz v0, :cond_6

    .line 250
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 252
    :cond_6
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->textAlignment:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 253
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->ellipsis:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 254
    return-void
.end method
