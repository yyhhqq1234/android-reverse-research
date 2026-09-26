.class final enum Lcom/netease/mpay/bz$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/bz$a;

.field public static final enum b:Lcom/netease/mpay/bz$a;

.field public static final enum c:Lcom/netease/mpay/bz$a;

.field public static final enum d:Lcom/netease/mpay/bz$a;

.field private static final synthetic e:[Lcom/netease/mpay/bz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/bz$a;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/bz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/bz$a;->a:Lcom/netease/mpay/bz$a;

    new-instance v0, Lcom/netease/mpay/bz$a;

    const-string v1, "EPAY_PREPARE"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/bz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/bz$a;->b:Lcom/netease/mpay/bz$a;

    new-instance v0, Lcom/netease/mpay/bz$a;

    const-string v1, "EPAY_PAYING"

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/bz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/bz$a;->c:Lcom/netease/mpay/bz$a;

    new-instance v0, Lcom/netease/mpay/bz$a;

    const-string v1, "EPAY_RESULT"

    invoke-direct {v0, v1, v5}, Lcom/netease/mpay/bz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/bz$a;->d:Lcom/netease/mpay/bz$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/mpay/bz$a;

    sget-object v1, Lcom/netease/mpay/bz$a;->a:Lcom/netease/mpay/bz$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/bz$a;->b:Lcom/netease/mpay/bz$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/bz$a;->c:Lcom/netease/mpay/bz$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/mpay/bz$a;->d:Lcom/netease/mpay/bz$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netease/mpay/bz$a;->e:[Lcom/netease/mpay/bz$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/bz$a;
    .locals 1

    const-class v0, Lcom/netease/mpay/bz$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/bz$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/bz$a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/bz$a;->e:[Lcom/netease/mpay/bz$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/bz$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/bz$a;

    return-object v0
.end method
