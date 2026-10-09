.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;
.super Ljava/lang/Object;
.source "UKTargetType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final Button:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final CheckBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final ImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final Label:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final LoadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final MapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final Page:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final Scene:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final TableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final TextBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final ViewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

.field public static final _Button:I = 0x4

.field public static final _CheckBox:I = 0xa

.field public static final _ImageView:I = 0x5

.field public static final _Label:I = 0x3

.field public static final _LoadingView:I = 0x6

.field public static final _MapView:I = 0x7

.field public static final _Page:I = 0x1

.field public static final _Scene:I = 0x0

.field public static final _TableView:I = 0x8

.field public static final _TextBox:I = 0x9

.field public static final _ViewGroup:I = 0x2

.field private static __values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;


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
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->$assertionsDisabled:Z

    .line 11
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 16
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const-string v3, "Scene"

    invoke-direct {v0, v2, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->Scene:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 18
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const-string v2, "Page"

    invoke-direct {v0, v1, v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->Page:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 20
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const-string v1, "ViewGroup"

    invoke-direct {v0, v4, v4, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->ViewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 22
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const-string v1, "Label"

    invoke-direct {v0, v5, v5, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->Label:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 24
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const-string v1, "Button"

    invoke-direct {v0, v6, v6, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->Button:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 26
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "ImageView"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->ImageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 28
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "LoadingView"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->LoadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 30
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "MapView"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->MapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 32
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "TableView"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->TableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 34
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "TextBox"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->TextBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    .line 36
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "CheckBox"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->CheckBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__T:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__T:Ljava/lang/String;

    .line 77
    iput p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__value:I

    .line 78
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    aput-object p0, v0, p1

    .line 79
    return-void
.end method

.method public static convert(I)Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 42
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 44
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    aget-object v0, v1, v0

    .line 48
    :goto_1
    return-object v0

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    sget-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 55
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__values:[Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;

    aget-object v0, v1, v0

    .line 61
    :goto_1
    return-object v0

    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    sget-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTargetType;->__value:I

    return v0
.end method
