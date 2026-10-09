.class public final Lcom/tencent/trbt/videosdk/wzry/JceCmd;
.super Ljava/lang/Object;
.source "JceCmd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final WZRYGetVideoCfg:Lcom/tencent/trbt/videosdk/wzry/JceCmd;

.field public static final WZRYVideoProd:Lcom/tencent/trbt/videosdk/wzry/JceCmd;

.field public static final _WZRYGetVideoCfg:I = 0xb54

.field public static final _WZRYVideoProd:I = 0xb55

.field private static __values:[Lcom/tencent/trbt/videosdk/wzry/JceCmd;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->$assertionsDisabled:Z

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__values:[Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    .line 16
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    const/16 v3, 0xb54

    const-string v4, "WZRYGetVideoCfg"

    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/trbt/videosdk/wzry/JceCmd;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->WZRYGetVideoCfg:Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    .line 18
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    const/16 v2, 0xb55

    const-string v3, "WZRYVideoProd"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/trbt/videosdk/wzry/JceCmd;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->WZRYVideoProd:Lcom/tencent/trbt/videosdk/wzry/JceCmd;

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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__T:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__T:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__value:I

    .line 60
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__values:[Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    aput-object p0, v0, p1

    .line 61
    return-void
.end method

.method public static convert(I)Lcom/tencent/trbt/videosdk/wzry/JceCmd;
    .locals 2
    .param p0, "val"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    .local v0, "__i":I
    :goto_0
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__values:[Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 24
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__values:[Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 26
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__values:[Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    aget-object v1, v1, v0

    .line 30
    :goto_1
    return-object v1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    sget-boolean v1, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 30
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)Lcom/tencent/trbt/videosdk/wzry/JceCmd;
    .locals 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    .local v0, "__i":I
    :goto_0
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__values:[Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 37
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__values:[Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__values:[Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    aget-object v1, v1, v0

    .line 43
    :goto_1
    return-object v1

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    sget-boolean v1, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 43
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->__value:I

    return v0
.end method
