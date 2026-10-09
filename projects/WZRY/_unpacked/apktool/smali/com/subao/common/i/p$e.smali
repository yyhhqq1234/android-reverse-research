.class public final enum Lcom/subao/common/i/p$e;
.super Ljava/lang/Enum;
.source "Message_Link.java"

# interfaces
.implements Lcom/subao/common/i/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/i/p$e;",
        ">;",
        "Lcom/subao/common/i/c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/i/p$e;

.field public static final enum b:Lcom/subao/common/i/p$e;

.field public static final enum c:Lcom/subao/common/i/p$e;

.field public static final enum d:Lcom/subao/common/i/p$e;

.field public static final enum e:Lcom/subao/common/i/p$e;

.field public static final enum f:Lcom/subao/common/i/p$e;

.field private static final synthetic h:[Lcom/subao/common/i/p$e;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    new-instance v0, Lcom/subao/common/i/p$e;

    const-string v1, "UNKNOWN_NETWORKTYPE"

    invoke-direct {v0, v1, v4, v4}, Lcom/subao/common/i/p$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/p$e;->a:Lcom/subao/common/i/p$e;

    .line 22
    new-instance v0, Lcom/subao/common/i/p$e;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5, v5}, Lcom/subao/common/i/p$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/p$e;->b:Lcom/subao/common/i/p$e;

    .line 23
    new-instance v0, Lcom/subao/common/i/p$e;

    const-string v1, "MOBILE_2G"

    invoke-direct {v0, v1, v6, v6}, Lcom/subao/common/i/p$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/p$e;->c:Lcom/subao/common/i/p$e;

    .line 24
    new-instance v0, Lcom/subao/common/i/p$e;

    const-string v1, "MOBILE_3G"

    invoke-direct {v0, v1, v7, v7}, Lcom/subao/common/i/p$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/p$e;->d:Lcom/subao/common/i/p$e;

    .line 25
    new-instance v0, Lcom/subao/common/i/p$e;

    const-string v1, "MOBILE_4G"

    invoke-direct {v0, v1, v8, v8}, Lcom/subao/common/i/p$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/p$e;->e:Lcom/subao/common/i/p$e;

    .line 26
    new-instance v0, Lcom/subao/common/i/p$e;

    const-string v1, "MOBILE_5G"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/i/p$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/p$e;->f:Lcom/subao/common/i/p$e;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/subao/common/i/p$e;

    sget-object v1, Lcom/subao/common/i/p$e;->a:Lcom/subao/common/i/p$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/i/p$e;->b:Lcom/subao/common/i/p$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subao/common/i/p$e;->c:Lcom/subao/common/i/p$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subao/common/i/p$e;->d:Lcom/subao/common/i/p$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/subao/common/i/p$e;->e:Lcom/subao/common/i/p$e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/subao/common/i/p$e;->f:Lcom/subao/common/i/p$e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subao/common/i/p$e;->h:[Lcom/subao/common/i/p$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/subao/common/i/p$e;->g:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/i/p$e;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/subao/common/i/p$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/i/p$e;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/i/p$e;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/subao/common/i/p$e;->h:[Lcom/subao/common/i/p$e;

    invoke-virtual {v0}, [Lcom/subao/common/i/p$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/i/p$e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/subao/common/i/p$e;->g:I

    return v0
.end method
