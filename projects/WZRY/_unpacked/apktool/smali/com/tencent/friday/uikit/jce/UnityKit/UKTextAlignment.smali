.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;
.super Ljava/lang/Object;
.source "UKTextAlignment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BottomCenter:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final BottomLeft:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final BottomRight:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final Center:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final CenterLeft:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final CenterRight:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final Default:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final TopCenter:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final TopLeft:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final TopRight:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

.field public static final _BottomCenter:I = 0x8

.field public static final _BottomLeft:I = 0x7

.field public static final _BottomRight:I = 0x9

.field public static final _Center:I = 0x5

.field public static final _CenterLeft:I = 0x4

.field public static final _CenterRight:I = 0x6

.field public static final _Default:I = 0x0

.field public static final _TopCenter:I = 0x2

.field public static final _TopLeft:I = 0x1

.field public static final _TopRight:I = 0x3

.field private static __values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->$assertionsDisabled:Z

    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 16
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const-string v3, "Default"

    invoke-direct {v0, v2, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->Default:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 18
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const-string v2, "TopLeft"

    invoke-direct {v0, v1, v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->TopLeft:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 20
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const-string v1, "TopCenter"

    invoke-direct {v0, v4, v4, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->TopCenter:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 22
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const-string v1, "TopRight"

    invoke-direct {v0, v5, v5, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->TopRight:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 24
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const-string v1, "CenterLeft"

    invoke-direct {v0, v6, v6, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->CenterLeft:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 26
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "Center"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->Center:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 28
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "CenterRight"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->CenterRight:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 30
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "BottomLeft"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->BottomLeft:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 32
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "BottomCenter"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->BottomCenter:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    .line 34
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "BottomRight"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->BottomRight:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__T:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__T:Ljava/lang/String;

    .line 75
    iput p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__value:I

    .line 76
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    aput-object p0, v0, p1

    .line 77
    return-void
.end method

.method public static convert(I)Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 40
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 42
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    aget-object v0, v1, v0

    .line 46
    :goto_1
    return-object v0

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    sget-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 53
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;

    aget-object v0, v1, v0

    .line 59
    :goto_1
    return-object v0

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    sget-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextAlignment;->__value:I

    return v0
.end method
