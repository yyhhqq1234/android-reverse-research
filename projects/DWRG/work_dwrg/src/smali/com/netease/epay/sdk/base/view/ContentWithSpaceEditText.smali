.class public Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;
.super Lcom/netease/epay/sdk/base/view/CleanUpEditText;
.source "ContentWithSpaceEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText$ContentSpaceType;
    }
.end annotation


# static fields
.field public static final TYPE_CARD:I = 0x1

.field public static final TYPE_COMMON:I = -0x1

.field public static final TYPE_IDCARD:I = 0x2

.field public static final TYPE_OILCARD:I = 0x7

.field public static final TYPE_PHONE:I


# instance fields
.field private before:I

.field private contentType:I

.field private count:I

.field private digits:Ljava/lang/String;

.field private maxLength:I

.field private start:I

.field private watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/view/CleanUpEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    .line 116
    new-instance v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText$1;-><init>(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->watcher:Landroid/text/TextWatcher;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->parseAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/view/CleanUpEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    .line 116
    new-instance v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText$1;-><init>(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->watcher:Landroid/text/TextWatcher;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->parseAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    .prologue
    .line 28
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->start:I

    return v0
.end method

.method static synthetic access$002(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->start:I

    return p1
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    .prologue
    .line 28
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->before:I

    return v0
.end method

.method static synthetic access$102(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->before:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    .prologue
    .line 28
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->count:I

    return v0
.end method

.method static synthetic access$202(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->count:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->isSpace(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->watcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    .prologue
    .line 28
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    return v0
.end method

.method private getRightPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    packed-switch v0, :pswitch_data_0

    .line 246
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    .line 237
    :pswitch_0
    const-string v0, "^\\d{11}$"

    .line 248
    :goto_1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_0

    .line 240
    :pswitch_1
    const-string v0, "^\\d{14,20}$"

    goto :goto_1

    .line 243
    :pswitch_2
    const-string v0, "(^\\d{15}$)|(\\d{17}([0-9]|X|x)$)"

    goto :goto_1

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initType()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 68
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    if-nez v0, :cond_0

    .line 69
    const/16 v0, 0xd

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    .line 70
    const-string v0, "0123456789 "

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->digits:Ljava/lang/String;

    .line 71
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setInputType(I)V

    .line 89
    :goto_0
    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 90
    return-void

    .line 72
    :cond_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    if-ne v0, v2, :cond_1

    .line 73
    const/16 v0, 0x1f

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    .line 74
    const-string v0, "0123456789 "

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->digits:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setInputType(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    if-ne v0, v1, :cond_2

    .line 77
    const/16 v0, 0x14

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    .line 78
    iput-object v3, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->digits:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setInputType(I)V

    goto :goto_0

    .line 80
    :cond_2
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 81
    const/16 v0, 0x25

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    .line 82
    iput-object v3, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->digits:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setInputType(I)V

    goto :goto_0

    .line 85
    :cond_3
    const/16 v0, 0x64

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    .line 86
    iput-object v3, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->digits:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setInputType(I)V

    goto :goto_0
.end method

.method private isSpace(I)Z
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 252
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->isSpacePhone(I)Z

    move-result v0

    .line 261
    :goto_0
    return v0

    .line 254
    :cond_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 255
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->isSpaceCard(I)Z

    move-result v0

    goto :goto_0

    .line 256
    :cond_1
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 257
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->isSpaceIDCard(I)Z

    move-result v0

    goto :goto_0

    .line 258
    :cond_2
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 259
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->isSpaceCard(I)Z

    move-result v0

    goto :goto_0

    .line 261
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpaceCard(I)Z
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 269
    if-lez p1, :cond_0

    rem-int/lit8 v0, p1, 0x5

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpaceIDCard(I)Z
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 273
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpacePhone(I)Z
    .locals 1
    .param p1, "length"    # I

    .prologue
    const/4 v0, 0x4

    .line 265
    if-lt p1, v0, :cond_1

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setSingleLine()V

    .line 61
    sget-object v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ContentWithSpaceEditText:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ContentWithSpaceEditText_epaysdk_type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setContentType(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public checkTextWrong(Z)Z
    .locals 3
    .param p1, "isShowToast"    # Z

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getTextWithoutSpace()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getRightPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 212
    :cond_1
    if-eqz p1, :cond_2

    .line 214
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    packed-switch v0, :pswitch_data_0

    .line 225
    const-string v0, "\u8f93\u5165\u5185\u5bb9"

    .line 228
    :goto_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :pswitch_0
    const-string v0, "\u624b\u673a\u53f7"

    goto :goto_1

    .line 219
    :pswitch_1
    const-string v0, "\u94f6\u884c\u5361\u53f7"

    goto :goto_1

    .line 222
    :pswitch_2
    const-string v0, "\u8eab\u4efd\u8bc1\u53f7"

    goto :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTextWithoutSpace()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Lcom/netease/epay/sdk/base/view/CleanUpEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContentType(I)V
    .locals 1
    .param p1, "contentType"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    .line 108
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->initType()V

    .line 109
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 95
    :cond_0
    const/4 p1, 0x2

    .line 99
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/view/CleanUpEditText;->setInputType(I)V

    .line 101
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->digits:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->digits:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 104
    :cond_2
    return-void

    .line 96
    :cond_3
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->contentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 192
    if-gez p1, :cond_1

    .line 193
    const/4 p1, 0x0

    .line 199
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/view/CleanUpEditText;->setSelection(I)V

    .line 200
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    .line 196
    :cond_2
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    if-le p1, v0, :cond_0

    .line 197
    iget p1, p0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->maxLength:I

    goto :goto_0
.end method
