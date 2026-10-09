.class public final enum Lcom/ironsource/wu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/wu;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/ironsource/wu;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "a",
        "b",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/wu;

.field public static final enum b:Lcom/ironsource/wu;

.field private static final synthetic c:[Lcom/ironsource/wu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ironsource/wu;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/wu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/wu;->a:Lcom/ironsource/wu;

    new-instance v0, Lcom/ironsource/wu;

    const-string v1, "BIDDER_SENSITIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/wu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/wu;->b:Lcom/ironsource/wu;

    invoke-static {}, Lcom/ironsource/wu;->a()[Lcom/ironsource/wu;

    move-result-object v0

    sput-object v0, Lcom/ironsource/wu;->c:[Lcom/ironsource/wu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/ironsource/wu;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ironsource/wu;

    sget-object v1, Lcom/ironsource/wu;->a:Lcom/ironsource/wu;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/wu;->b:Lcom/ironsource/wu;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/wu;
    .locals 1

    const-class v0, Lcom/ironsource/wu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/wu;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/wu;
    .locals 1

    sget-object v0, Lcom/ironsource/wu;->c:[Lcom/ironsource/wu;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/wu;

    return-object v0
.end method
