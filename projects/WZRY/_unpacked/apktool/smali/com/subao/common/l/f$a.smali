.class public final enum Lcom/subao/common/l/f$a;
.super Ljava/lang/Enum;
.source "QosParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/l/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/l/f$a;

.field public static final enum b:Lcom/subao/common/l/f$a;

.field public static final enum c:Lcom/subao/common/l/f$a;

.field public static final enum d:Lcom/subao/common/l/f$a;

.field public static final enum e:Lcom/subao/common/l/f$a;

.field public static final enum f:Lcom/subao/common/l/f$a;

.field private static final synthetic h:[Lcom/subao/common/l/f$a;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    new-instance v0, Lcom/subao/common/l/f$a;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v4}, Lcom/subao/common/l/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/l/f$a;->a:Lcom/subao/common/l/f$a;

    .line 155
    new-instance v0, Lcom/subao/common/l/f$a;

    const-string v1, "IVTIME_TELECOM"

    invoke-direct {v0, v1, v5, v5}, Lcom/subao/common/l/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/l/f$a;->b:Lcom/subao/common/l/f$a;

    .line 161
    new-instance v0, Lcom/subao/common/l/f$a;

    const-string v1, "ZTE"

    invoke-direct {v0, v1, v6, v6}, Lcom/subao/common/l/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/l/f$a;->c:Lcom/subao/common/l/f$a;

    .line 166
    new-instance v0, Lcom/subao/common/l/f$a;

    const-string v1, "HUAWEI"

    invoke-direct {v0, v1, v7, v7}, Lcom/subao/common/l/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/l/f$a;->d:Lcom/subao/common/l/f$a;

    .line 172
    new-instance v0, Lcom/subao/common/l/f$a;

    const-string v1, "IVTIME_MOBILE"

    invoke-direct {v0, v1, v8, v8}, Lcom/subao/common/l/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/l/f$a;->e:Lcom/subao/common/l/f$a;

    .line 178
    new-instance v0, Lcom/subao/common/l/f$a;

    const-string v1, "IVTIME_TELECOM_OLD"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/l/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/l/f$a;->f:Lcom/subao/common/l/f$a;

    .line 145
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/subao/common/l/f$a;

    sget-object v1, Lcom/subao/common/l/f$a;->a:Lcom/subao/common/l/f$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/l/f$a;->b:Lcom/subao/common/l/f$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subao/common/l/f$a;->c:Lcom/subao/common/l/f$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subao/common/l/f$a;->d:Lcom/subao/common/l/f$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/subao/common/l/f$a;->e:Lcom/subao/common/l/f$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/subao/common/l/f$a;->f:Lcom/subao/common/l/f$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subao/common/l/f$a;->h:[Lcom/subao/common/l/f$a;

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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 183
    iput p3, p0, Lcom/subao/common/l/f$a;->g:I

    .line 184
    return-void
.end method

.method public static a(I)Lcom/subao/common/l/f$a;
    .locals 5

    .prologue
    .line 187
    invoke-static {}, Lcom/subao/common/l/f$a;->values()[Lcom/subao/common/l/f$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 188
    iget v4, v0, Lcom/subao/common/l/f$a;->g:I

    if-ne p0, v4, :cond_0

    .line 192
    :goto_1
    return-object v0

    .line 187
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Lcom/subao/common/l/f$a;->a:Lcom/subao/common/l/f$a;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/l/f$a;
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/subao/common/l/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/l/f$a;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/l/f$a;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/subao/common/l/f$a;->h:[Lcom/subao/common/l/f$a;

    invoke-virtual {v0}, [Lcom/subao/common/l/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/l/f$a;

    return-object v0
.end method
