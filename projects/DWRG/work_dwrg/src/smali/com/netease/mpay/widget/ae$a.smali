.class public final enum Lcom/netease/mpay/widget/ae$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/widget/ae$a;

.field public static final enum b:Lcom/netease/mpay/widget/ae$a;

.field public static final enum c:Lcom/netease/mpay/widget/ae$a;

.field public static final enum d:Lcom/netease/mpay/widget/ae$a;

.field public static final enum e:Lcom/netease/mpay/widget/ae$a;

.field public static final enum f:Lcom/netease/mpay/widget/ae$a;

.field public static final enum g:Lcom/netease/mpay/widget/ae$a;

.field private static final synthetic h:[Lcom/netease/mpay/widget/ae$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/mpay/widget/ae$a;

    const-string v1, "SET_PASSWORD"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/widget/ae$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ae$a;->a:Lcom/netease/mpay/widget/ae$a;

    new-instance v0, Lcom/netease/mpay/widget/ae$a;

    const-string v1, "ENTER_MOBILE"

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/widget/ae$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ae$a;->b:Lcom/netease/mpay/widget/ae$a;

    new-instance v0, Lcom/netease/mpay/widget/ae$a;

    const-string v1, "MOBILE_LOGIN"

    invoke-direct {v0, v1, v5}, Lcom/netease/mpay/widget/ae$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ae$a;->c:Lcom/netease/mpay/widget/ae$a;

    new-instance v0, Lcom/netease/mpay/widget/ae$a;

    const-string v1, "MOBILE_REGISTER"

    invoke-direct {v0, v1, v6}, Lcom/netease/mpay/widget/ae$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ae$a;->d:Lcom/netease/mpay/widget/ae$a;

    new-instance v0, Lcom/netease/mpay/widget/ae$a;

    const-string v1, "MOBILE_FROZEN"

    invoke-direct {v0, v1, v7}, Lcom/netease/mpay/widget/ae$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ae$a;->e:Lcom/netease/mpay/widget/ae$a;

    new-instance v0, Lcom/netease/mpay/widget/ae$a;

    const-string v1, "GUIDE_VERIFY_SMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/ae$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ae$a;->f:Lcom/netease/mpay/widget/ae$a;

    new-instance v0, Lcom/netease/mpay/widget/ae$a;

    const-string v1, "RELATED_LOGIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/ae$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ae$a;->g:Lcom/netease/mpay/widget/ae$a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netease/mpay/widget/ae$a;

    sget-object v1, Lcom/netease/mpay/widget/ae$a;->a:Lcom/netease/mpay/widget/ae$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/widget/ae$a;->b:Lcom/netease/mpay/widget/ae$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/mpay/widget/ae$a;->c:Lcom/netease/mpay/widget/ae$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/mpay/widget/ae$a;->d:Lcom/netease/mpay/widget/ae$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/mpay/widget/ae$a;->e:Lcom/netease/mpay/widget/ae$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netease/mpay/widget/ae$a;->f:Lcom/netease/mpay/widget/ae$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netease/mpay/widget/ae$a;->g:Lcom/netease/mpay/widget/ae$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/mpay/widget/ae$a;->h:[Lcom/netease/mpay/widget/ae$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/widget/ae$a;
    .locals 1

    const-class v0, Lcom/netease/mpay/widget/ae$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/ae$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/widget/ae$a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/widget/ae$a;->h:[Lcom/netease/mpay/widget/ae$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/widget/ae$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/widget/ae$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/widget/ae$a;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
