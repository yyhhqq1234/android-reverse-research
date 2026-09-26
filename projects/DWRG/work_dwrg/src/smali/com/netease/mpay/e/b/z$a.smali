.class public final enum Lcom/netease/mpay/e/b/z$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/e/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/e/b/z$a;

.field public static final enum b:Lcom/netease/mpay/e/b/z$a;

.field public static final enum c:Lcom/netease/mpay/e/b/z$a;

.field public static final enum d:Lcom/netease/mpay/e/b/z$a;

.field public static final enum e:Lcom/netease/mpay/e/b/z$a;

.field private static final synthetic f:[Lcom/netease/mpay/e/b/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/e/b/z$a;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/e/b/z$a;->a:Lcom/netease/mpay/e/b/z$a;

    new-instance v0, Lcom/netease/mpay/e/b/z$a;

    const-string v1, "UN_INSTALL"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/e/b/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/e/b/z$a;->b:Lcom/netease/mpay/e/b/z$a;

    new-instance v0, Lcom/netease/mpay/e/b/z$a;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/e/b/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/e/b/z$a;->c:Lcom/netease/mpay/e/b/z$a;

    new-instance v0, Lcom/netease/mpay/e/b/z$a;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lcom/netease/mpay/e/b/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/e/b/z$a;->d:Lcom/netease/mpay/e/b/z$a;

    new-instance v0, Lcom/netease/mpay/e/b/z$a;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v6}, Lcom/netease/mpay/e/b/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/e/b/z$a;->e:Lcom/netease/mpay/e/b/z$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netease/mpay/e/b/z$a;

    sget-object v1, Lcom/netease/mpay/e/b/z$a;->a:Lcom/netease/mpay/e/b/z$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/e/b/z$a;->b:Lcom/netease/mpay/e/b/z$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/e/b/z$a;->c:Lcom/netease/mpay/e/b/z$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/mpay/e/b/z$a;->d:Lcom/netease/mpay/e/b/z$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/mpay/e/b/z$a;->e:Lcom/netease/mpay/e/b/z$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netease/mpay/e/b/z$a;->f:[Lcom/netease/mpay/e/b/z$a;

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

.method static a(I)Lcom/netease/mpay/e/b/z$a;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/netease/mpay/e/b/z$a;->values()[Lcom/netease/mpay/e/b/z$a;

    move-result-object v0

    aget-object v0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/netease/mpay/e/b/z$a;->a:Lcom/netease/mpay/e/b/z$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/e/b/z$a;
    .locals 1

    const-class v0, Lcom/netease/mpay/e/b/z$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/z$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/e/b/z$a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b/z$a;->f:[Lcom/netease/mpay/e/b/z$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/e/b/z$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/e/b/z$a;

    return-object v0
.end method
