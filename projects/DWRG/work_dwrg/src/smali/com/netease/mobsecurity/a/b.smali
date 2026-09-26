.class public Lcom/netease/mobsecurity/a/b;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field private static c:Lcom/netease/mobsecurity/a/b;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/netease/mobsecurity/a/b;->a:I

    const/4 v0, 0x0

    sput v0, Lcom/netease/mobsecurity/a/b;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobsecurity/a/b;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netease/mobsecurity/a/b;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/mobsecurity/a/b;
    .locals 1

    sget-object v0, Lcom/netease/mobsecurity/a/b;->c:Lcom/netease/mobsecurity/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mobsecurity/a/b;

    invoke-direct {v0, p0}, Lcom/netease/mobsecurity/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/mobsecurity/a/b;->c:Lcom/netease/mobsecurity/a/b;

    :cond_0
    sget-object v0, Lcom/netease/mobsecurity/a/b;->c:Lcom/netease/mobsecurity/a/b;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/16 v1, 0x8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/mobsecurity/a/b;->e:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/netease/mobsecurity/a/b;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mobsecurity/a/b;->e:Ljava/util/List;

    const/4 v1, 0x5

    new-instance v2, Lcom/netease/mobsecurity/a/a/a;

    iget-object v3, p0, Lcom/netease/mobsecurity/a/b;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/netease/mobsecurity/a/a/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/mobsecurity/a/b;->e:Ljava/util/List;

    const/4 v1, 0x6

    new-instance v2, Lcom/netease/mobsecurity/a/c/b;

    iget-object v3, p0, Lcom/netease/mobsecurity/a/b;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/netease/mobsecurity/a/c/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/netease/mobsecurity/a/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsecurity/a/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mobsecurity/a/a;

    return-object v0
.end method
