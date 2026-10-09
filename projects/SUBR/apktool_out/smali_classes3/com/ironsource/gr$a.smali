.class public final enum Lcom/ironsource/gr$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/gr$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ironsource/gr$a;

.field public static final enum c:Lcom/ironsource/gr$a;

.field public static final enum d:Lcom/ironsource/gr$a;

.field private static final synthetic e:[Lcom/ironsource/gr$a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/ironsource/gr$a;

    const-string v1, "0"

    const-string v2, "NOT_SET"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ironsource/gr$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/gr$a;->b:Lcom/ironsource/gr$a;

    new-instance v1, Lcom/ironsource/gr$a;

    const-string v2, "1"

    const-string v4, "CACHE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/ironsource/gr$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ironsource/gr$a;->c:Lcom/ironsource/gr$a;

    new-instance v2, Lcom/ironsource/gr$a;

    const-string v4, "2"

    const-string v6, "SERVER"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/ironsource/gr$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/ironsource/gr$a;->d:Lcom/ironsource/gr$a;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/ironsource/gr$a;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/ironsource/gr$a;->e:[Lcom/ironsource/gr$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ironsource/gr$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/gr$a;
    .locals 1

    const-class v0, Lcom/ironsource/gr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/gr$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/gr$a;
    .locals 1

    sget-object v0, Lcom/ironsource/gr$a;->e:[Lcom/ironsource/gr$a;

    invoke-virtual {v0}, [Lcom/ironsource/gr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/gr$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/gr$a;->a:Ljava/lang/String;

    return-object v0
.end method
