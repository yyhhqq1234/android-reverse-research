.class public final enum Lcom/applovin/impl/sdk/g$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum b:Lcom/applovin/impl/sdk/g$c;

.field public static final enum c:Lcom/applovin/impl/sdk/g$c;

.field public static final enum d:Lcom/applovin/impl/sdk/g$c;

.field public static final enum f:Lcom/applovin/impl/sdk/g$c;

.field public static final enum g:Lcom/applovin/impl/sdk/g$c;

.field public static final enum h:Lcom/applovin/impl/sdk/g$c;

.field public static final i:Ljava/util/Set;

.field private static final synthetic j:[Lcom/applovin/impl/sdk/g$c;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/applovin/impl/sdk/g$c;

    const/4 v1, 0x0

    const-string v2, "load"

    const-string v3, "LOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/g$c;->b:Lcom/applovin/impl/sdk/g$c;

    .line 2
    new-instance v0, Lcom/applovin/impl/sdk/g$c;

    const/4 v1, 0x1

    const-string v2, "show"

    const-string v3, "SHOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/g$c;->c:Lcom/applovin/impl/sdk/g$c;

    .line 3
    new-instance v0, Lcom/applovin/impl/sdk/g$c;

    const/4 v1, 0x2

    const-string v2, "hide"

    const-string v3, "HIDE"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/g$c;->d:Lcom/applovin/impl/sdk/g$c;

    .line 4
    new-instance v0, Lcom/applovin/impl/sdk/g$c;

    const/4 v1, 0x3

    const-string v2, "click"

    const-string v3, "CLICK"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/g$c;->f:Lcom/applovin/impl/sdk/g$c;

    .line 5
    new-instance v0, Lcom/applovin/impl/sdk/g$c;

    const/4 v1, 0x4

    const-string v2, "destroy"

    const-string v3, "DESTROY"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/g$c;->g:Lcom/applovin/impl/sdk/g$c;

    .line 6
    new-instance v0, Lcom/applovin/impl/sdk/g$c;

    const/4 v1, 0x5

    const-string v2, "show_error"

    const-string v3, "SHOW_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/g$c;->h:Lcom/applovin/impl/sdk/g$c;

    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/g$c;->a()[Lcom/applovin/impl/sdk/g$c;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/g$c;->j:[Lcom/applovin/impl/sdk/g$c;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/applovin/impl/sdk/g$c;->values()[Lcom/applovin/impl/sdk/g$c;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/applovin/impl/sdk/g$c;->i:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/applovin/impl/sdk/g$c;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/sdk/g$c;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/applovin/impl/sdk/g$c;

    .line 1
    sget-object v1, Lcom/applovin/impl/sdk/g$c;->b:Lcom/applovin/impl/sdk/g$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/g$c;->c:Lcom/applovin/impl/sdk/g$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/g$c;->d:Lcom/applovin/impl/sdk/g$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/g$c;->f:Lcom/applovin/impl/sdk/g$c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/g$c;->g:Lcom/applovin/impl/sdk/g$c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/g$c;->h:Lcom/applovin/impl/sdk/g$c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/g$c;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/sdk/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/g$c;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/sdk/g$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/sdk/g$c;->j:[Lcom/applovin/impl/sdk/g$c;

    invoke-virtual {v0}, [Lcom/applovin/impl/sdk/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/sdk/g$c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/g$c;->a:Ljava/lang/String;

    return-object v0
.end method
