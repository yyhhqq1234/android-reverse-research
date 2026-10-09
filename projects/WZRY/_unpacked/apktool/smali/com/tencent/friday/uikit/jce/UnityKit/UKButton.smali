.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKButton.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

.field static cache_disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_ellipsis:I

.field static cache_font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

.field static cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field static cache_text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field static cache_textAlignment:I

.field static cache_textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

.field static cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# instance fields
.field public backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

.field public disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public ellipsis:I

.field public font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

.field public id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field public text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field public textAlignment:I

.field public textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

.field public zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->$assertionsDisabled:Z

    .line 276
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 280
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 284
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 288
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 292
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 296
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 300
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 304
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_textAlignment:I

    .line 308
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_ellipsis:I

    .line 312
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 316
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    .line 320
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 321
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

    .line 166
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 35
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    .line 37
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    .line 39
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 41
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    .line 43
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKString;Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;IILcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 35
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    .line 37
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    .line 39
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 41
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    .line 43
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 171
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 172
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 173
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 174
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 175
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 176
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 177
    iput-object p7, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 178
    iput p8, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    .line 179
    iput p9, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    .line 180
    iput-object p10, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 181
    iput-object p11, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    .line 182
    iput-object p12, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 183
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKButton"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 225
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :cond_0
    return-object v0

    .line 227
    :catch_0
    move-exception v1

    .line 229
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 341
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 342
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 343
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string/jumbo v2, "zIndex"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 344
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "rect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 345
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "invisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 346
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "backgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 347
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 348
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const-string v2, "font"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 349
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    const-string/jumbo v2, "textAlignment"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 350
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    const-string v2, "ellipsis"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 351
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "disabled"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 352
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    const-string/jumbo v2, "textColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 353
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    const-string v2, "backgroundImage"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 354
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 358
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 359
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 360
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 361
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 362
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 363
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 364
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 365
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 366
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 367
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 368
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 369
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 370
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 371
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 187
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 193
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 194
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 195
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 196
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 197
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 198
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 199
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 200
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    .line 201
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    .line 202
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 203
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    .line 204
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 205
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKButton"

    return-object v0
.end method

.method public getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getBackgroundImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    return-object v0
.end method

.method public getDisabled()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getEllipsis()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    return v0
.end method

.method public getFont()Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    return-object v0
.end method

.method public getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public getText()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    return v0
.end method

.method public getTextColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    return-object v0
.end method

.method public getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 326
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 327
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 328
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 329
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 330
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 331
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 332
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    .line 333
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    .line 334
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 335
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    .line 336
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->cache_backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 337
    return-void
.end method

.method public setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 93
    return-void
.end method

.method public setBackgroundImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    .line 163
    return-void
.end method

.method public setDisabled(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 143
    return-void
.end method

.method public setEllipsis(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    .line 133
    return-void
.end method

.method public setFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 113
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 53
    return-void
.end method

.method public setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 83
    return-void
.end method

.method public setRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 73
    return-void
.end method

.method public setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 103
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    .line 123
    return-void
.end method

.method public setTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    .line 153
    return-void
.end method

.method public setZIndex(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 63
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 237
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->zIndex:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->rect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 242
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->invisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->text:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->font:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 258
    :cond_4
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textAlignment:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 259
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->ellipsis:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 260
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->disabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    if-eqz v0, :cond_6

    .line 266
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->textColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 268
    :cond_6
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    if-eqz v0, :cond_7

    .line 270
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->backgroundImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 272
    :cond_7
    return-void
.end method
