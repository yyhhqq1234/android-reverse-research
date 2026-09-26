.class public final enum Lcom/netease/mpay/f/a/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/f/a/a$a;

.field public static final enum b:Lcom/netease/mpay/f/a/a$a;

.field public static final enum c:Lcom/netease/mpay/f/a/a$a;

.field public static final enum d:Lcom/netease/mpay/f/a/a$a;

.field public static final enum e:Lcom/netease/mpay/f/a/a$a;

.field public static final enum f:Lcom/netease/mpay/f/a/a$a;

.field public static final enum g:Lcom/netease/mpay/f/a/a$a;

.field public static final enum h:Lcom/netease/mpay/f/a/a$a;

.field public static final enum i:Lcom/netease/mpay/f/a/a$a;

.field public static final enum j:Lcom/netease/mpay/f/a/a$a;

.field public static final enum k:Lcom/netease/mpay/f/a/a$a;

.field public static final enum l:Lcom/netease/mpay/f/a/a$a;

.field private static final synthetic m:[Lcom/netease/mpay/f/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "LOGIN_EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->a:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "BIND_ACCOUNT_EXIST"

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->b:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->c:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "RETRY_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->d:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "WEB_VERIFY_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->e:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "MOBILE_LOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->f:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "MOBILE_FROZEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->g:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "SET_PASS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->h:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "SMS_VERIFY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->i:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "PASS_VERIFY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->j:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "FORCE_SMS_LOGIN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->k:Lcom/netease/mpay/f/a/a$a;

    new-instance v0, Lcom/netease/mpay/f/a/a$a;

    const-string v1, "OTHER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/f/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->l:Lcom/netease/mpay/f/a/a$a;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/netease/mpay/f/a/a$a;

    sget-object v1, Lcom/netease/mpay/f/a/a$a;->a:Lcom/netease/mpay/f/a/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/f/a/a$a;->b:Lcom/netease/mpay/f/a/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/mpay/f/a/a$a;->c:Lcom/netease/mpay/f/a/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/mpay/f/a/a$a;->d:Lcom/netease/mpay/f/a/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/mpay/f/a/a$a;->e:Lcom/netease/mpay/f/a/a$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netease/mpay/f/a/a$a;->f:Lcom/netease/mpay/f/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netease/mpay/f/a/a$a;->g:Lcom/netease/mpay/f/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netease/mpay/f/a/a$a;->h:Lcom/netease/mpay/f/a/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netease/mpay/f/a/a$a;->i:Lcom/netease/mpay/f/a/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netease/mpay/f/a/a$a;->j:Lcom/netease/mpay/f/a/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netease/mpay/f/a/a$a;->k:Lcom/netease/mpay/f/a/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netease/mpay/f/a/a$a;->l:Lcom/netease/mpay/f/a/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/mpay/f/a/a$a;->m:[Lcom/netease/mpay/f/a/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/f/a/a$a;
    .locals 1

    const-class v0, Lcom/netease/mpay/f/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/f/a/a$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/f/a/a$a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/f/a/a$a;->m:[Lcom/netease/mpay/f/a/a$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/f/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/f/a/a$a;

    return-object v0
.end method
