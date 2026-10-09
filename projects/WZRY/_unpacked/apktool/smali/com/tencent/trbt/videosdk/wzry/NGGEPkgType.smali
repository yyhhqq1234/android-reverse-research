.class public final Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;
.super Ljava/lang/Object;
.source "NGGEPkgType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final E_PKGTYPE_CMD:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

.field public static final E_PKGTYPE_HANDSHAKE:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

.field public static final E_PKGTYPE_HEARBEAT_BACKGROUND:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

.field public static final E_PKGTYPE_HEARBEAT_FOREGROUND:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

.field public static final E_PKGTYPE_HEARBEAT_UNKNOWN:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

.field public static final E_PKGTYPE_PUSH:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

.field public static final E_PKGTYPE_RAW_PAYLOAD:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

.field public static final _E_PKGTYPE_CMD:I = 0x6

.field public static final _E_PKGTYPE_HANDSHAKE:I = 0x4

.field public static final _E_PKGTYPE_HEARBEAT_BACKGROUND:I = 0x2

.field public static final _E_PKGTYPE_HEARBEAT_FOREGROUND:I = 0x1

.field public static final _E_PKGTYPE_HEARBEAT_UNKNOWN:I = 0x3

.field public static final _E_PKGTYPE_PUSH:I = 0x7

.field public static final _E_PKGTYPE_RAW_PAYLOAD:I = 0x5

.field private static __values:[Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;


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

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9
    const-class v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->$assertionsDisabled:Z

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__values:[Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    .line 16
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    const-string v3, "E_PKGTYPE_HEARBEAT_FOREGROUND"

    invoke-direct {v0, v2, v1, v3}, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->E_PKGTYPE_HEARBEAT_FOREGROUND:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    .line 18
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    const-string v2, "E_PKGTYPE_HEARBEAT_BACKGROUND"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->E_PKGTYPE_HEARBEAT_BACKGROUND:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    .line 20
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    const-string v1, "E_PKGTYPE_HEARBEAT_UNKNOWN"

    invoke-direct {v0, v4, v5, v1}, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->E_PKGTYPE_HEARBEAT_UNKNOWN:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    .line 22
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    const-string v1, "E_PKGTYPE_HANDSHAKE"

    invoke-direct {v0, v5, v6, v1}, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->E_PKGTYPE_HANDSHAKE:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    .line 24
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    const/4 v1, 0x5

    const-string v2, "E_PKGTYPE_RAW_PAYLOAD"

    invoke-direct {v0, v6, v1, v2}, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->E_PKGTYPE_RAW_PAYLOAD:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    .line 26
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const-string v3, "E_PKGTYPE_CMD"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->E_PKGTYPE_CMD:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    .line 28
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    const/4 v1, 0x6

    const/4 v2, 0x7

    const-string v3, "E_PKGTYPE_PUSH"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->E_PKGTYPE_PUSH:Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "val"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__T:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__T:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__value:I

    .line 70
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__values:[Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    aput-object p0, v0, p1

    .line 71
    return-void
.end method

.method public static convert(I)Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;
    .locals 2
    .param p0, "val"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    .local v0, "__i":I
    :goto_0
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__values:[Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 34
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__values:[Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 36
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__values:[Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    aget-object v1, v1, v0

    .line 40
    :goto_1
    return-object v1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    sget-boolean v1, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 40
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;
    .locals 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "__i":I
    :goto_0
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__values:[Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 47
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__values:[Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__values:[Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;

    aget-object v1, v1, v0

    .line 53
    :goto_1
    return-object v1

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    sget-boolean v1, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 53
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGEPkgType;->__value:I

    return v0
.end method
