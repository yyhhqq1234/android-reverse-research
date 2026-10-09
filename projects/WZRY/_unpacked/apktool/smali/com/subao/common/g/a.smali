.class public final enum Lcom/subao/common/g/a;
.super Ljava/lang/Enum;
.source "InitJNIMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/g/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/g/a;

.field public static final enum b:Lcom/subao/common/g/a;

.field public static final enum c:Lcom/subao/common/g/a;

.field public static final enum d:Lcom/subao/common/g/a;

.field private static final synthetic f:[Lcom/subao/common/g/a;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/subao/common/g/a;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v2, v2}, Lcom/subao/common/g/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/g/a;->a:Lcom/subao/common/g/a;

    .line 10
    new-instance v0, Lcom/subao/common/g/a;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v3, v3}, Lcom/subao/common/g/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/g/a;->b:Lcom/subao/common/g/a;

    .line 11
    new-instance v0, Lcom/subao/common/g/a;

    const-string v1, "VPN"

    invoke-direct {v0, v1, v4, v4}, Lcom/subao/common/g/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/g/a;->c:Lcom/subao/common/g/a;

    .line 12
    new-instance v0, Lcom/subao/common/g/a;

    const-string v1, "UDP_TCP"

    invoke-direct {v0, v1, v5, v5}, Lcom/subao/common/g/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/g/a;->d:Lcom/subao/common/g/a;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/subao/common/g/a;

    sget-object v1, Lcom/subao/common/g/a;->a:Lcom/subao/common/g/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subao/common/g/a;->b:Lcom/subao/common/g/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/g/a;->c:Lcom/subao/common/g/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/g/a;->d:Lcom/subao/common/g/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/subao/common/g/a;->f:[Lcom/subao/common/g/a;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/subao/common/g/a;->e:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/g/a;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/subao/common/g/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/g/a;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/g/a;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/subao/common/g/a;->f:[Lcom/subao/common/g/a;

    invoke-virtual {v0}, [Lcom/subao/common/g/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/g/a;

    return-object v0
.end method
