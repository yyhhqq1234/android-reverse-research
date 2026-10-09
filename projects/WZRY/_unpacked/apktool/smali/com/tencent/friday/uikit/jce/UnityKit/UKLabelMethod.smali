.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKLabelMethod.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field static cache_setEllipsis:I

.field static cache_setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

.field static cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field static cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field static cache_setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field static cache_setTextAlignment:I

.field static cache_setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;


# instance fields
.field public setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

.field public setEllipsis:I

.field public setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

.field public setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

.field public setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

.field public setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

.field public setTextAlignment:I

.field public setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->$assertionsDisabled:Z

    .line 210
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 214
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 218
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 222
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 226
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 230
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 234
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setTextAlignment:I

    .line 238
    sput v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setEllipsis:I

    .line 239
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

    .line 118
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 33
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    .line 35
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKString;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 33
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    .line 35
    iput v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    .line 123
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 124
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 125
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 126
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 127
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 128
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 129
    iput p7, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    .line 130
    iput p8, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    .line 131
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKLabelMethod"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :cond_0
    return-object v0

    .line 171
    :catch_0
    move-exception v1

    .line 173
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 256
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const-string v2, "setRect"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 257
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "setInvisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 258
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "setBackgroundColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 259
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const-string v2, "setText"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 260
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const-string v2, "setTextColor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 261
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const-string v2, "setFont"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 262
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    const-string v2, "setTextAlignment"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 263
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    const-string v2, "setEllipsis"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 264
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 268
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 269
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 270
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 271
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 272
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 273
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 274
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 275
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 276
    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 277
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;

    .line 141
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 142
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 143
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 144
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 145
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 146
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 147
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    .line 148
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    iget v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    .line 149
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKLabelMethod"

    return-object v0
.end method

.method public getSetBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public getSetEllipsis()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    return v0
.end method

.method public getSetFont()Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    return-object v0
.end method

.method public getSetInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public getSetRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    return-object v0
.end method

.method public getSetText()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    return-object v0
.end method

.method public getSetTextAlignment()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    return v0
.end method

.method public getSetTextColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 244
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 245
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 246
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 247
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 248
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->cache_setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 249
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    .line 250
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    .line 251
    return-void
.end method

.method public setSetBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 65
    return-void
.end method

.method public setSetEllipsis(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    .line 115
    return-void
.end method

.method public setSetFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    .line 95
    return-void
.end method

.method public setSetInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 55
    return-void
.end method

.method public setSetRect(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 45
    return-void
.end method

.method public setSetText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    .line 75
    return-void
.end method

.method public setSetTextAlignment(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    .line 105
    return-void
.end method

.method public setSetTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    .line 85
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 204
    :cond_5
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 205
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 206
    return-void
.end method
