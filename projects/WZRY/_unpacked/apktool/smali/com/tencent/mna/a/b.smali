.class public Lcom/tencent/mna/a/b;
.super Ljava/lang/Object;
.source "GameSetting.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:I

.field public static h:I

.field public static i:Z

.field private static j:Ljava/lang/String;

.field private static k:I

.field private static l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/a/b;->b:Z

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/a/b;->c:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/a/b;->e:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 21
    sput v1, Lcom/tencent/mna/a/b;->g:I

    .line 22
    sput v1, Lcom/tencent/mna/a/b;->h:I

    .line 23
    sput-boolean v2, Lcom/tencent/mna/a/b;->i:Z

    .line 25
    const-string v0, "0.0.0.0"

    sput-object v0, Lcom/tencent/mna/a/b;->j:Ljava/lang/String;

    .line 26
    sput v2, Lcom/tencent/mna/a/b;->k:I

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/tencent/mna/a/b;->l:Ljava/util/List;

    .line 28
    const-string v0, "0.0.0.0"

    sput-object v0, Lcom/tencent/mna/a/b;->m:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/tencent/mna/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 47
    sput p0, Lcom/tencent/mna/a/b;->k:I

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/tencent/mna/a/b;->j:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    sput-object p0, Lcom/tencent/mna/a/b;->l:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/tencent/mna/a/b;->k:I

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    sput-object p0, Lcom/tencent/mna/a/b;->m:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/tencent/mna/a/b;->l:Ljava/util/List;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/tencent/mna/a/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "0.0.0.0"

    sput-object v0, Lcom/tencent/mna/a/b;->m:Ljava/lang/String;

    .line 69
    return-void
.end method
