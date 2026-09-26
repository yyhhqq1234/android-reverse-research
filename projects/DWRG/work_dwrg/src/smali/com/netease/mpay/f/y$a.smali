.class public final enum Lcom/netease/mpay/f/y$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/f/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/f/y$a;

.field public static final enum b:Lcom/netease/mpay/f/y$a;

.field public static final enum c:Lcom/netease/mpay/f/y$a;

.field public static final enum d:Lcom/netease/mpay/f/y$a;

.field public static final enum e:Lcom/netease/mpay/f/y$a;

.field public static final enum f:Lcom/netease/mpay/f/y$a;

.field private static final synthetic g:[Lcom/netease/mpay/f/y$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/mpay/f/y$a;

    const-string v1, "PREFETCH_HISTORY"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/f/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/y$a;->a:Lcom/netease/mpay/f/y$a;

    new-instance v0, Lcom/netease/mpay/f/y$a;

    const-string v1, "FETCH_NEW"

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/f/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/y$a;->b:Lcom/netease/mpay/f/y$a;

    new-instance v0, Lcom/netease/mpay/f/y$a;

    const-string v1, "FETCH_MORE_HISTORY_REMOTE"

    invoke-direct {v0, v1, v5}, Lcom/netease/mpay/f/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/y$a;->c:Lcom/netease/mpay/f/y$a;

    new-instance v0, Lcom/netease/mpay/f/y$a;

    const-string v1, "FETCH_HISTORY_REMOTE"

    invoke-direct {v0, v1, v6}, Lcom/netease/mpay/f/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/y$a;->d:Lcom/netease/mpay/f/y$a;

    new-instance v0, Lcom/netease/mpay/f/y$a;

    const-string v1, "FETCH_HISTORY_LOCAL"

    invoke-direct {v0, v1, v7}, Lcom/netease/mpay/f/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/y$a;->e:Lcom/netease/mpay/f/y$a;

    new-instance v0, Lcom/netease/mpay/f/y$a;

    const-string v1, "UPLOAD_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/f/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/y$a;->f:Lcom/netease/mpay/f/y$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netease/mpay/f/y$a;

    sget-object v1, Lcom/netease/mpay/f/y$a;->a:Lcom/netease/mpay/f/y$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/f/y$a;->b:Lcom/netease/mpay/f/y$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/mpay/f/y$a;->c:Lcom/netease/mpay/f/y$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/mpay/f/y$a;->d:Lcom/netease/mpay/f/y$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/mpay/f/y$a;->e:Lcom/netease/mpay/f/y$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netease/mpay/f/y$a;->f:Lcom/netease/mpay/f/y$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/mpay/f/y$a;->g:[Lcom/netease/mpay/f/y$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/f/y$a;
    .locals 1

    const-class v0, Lcom/netease/mpay/f/y$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/f/y$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/f/y$a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/f/y$a;->g:[Lcom/netease/mpay/f/y$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/f/y$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/f/y$a;

    return-object v0
.end method
