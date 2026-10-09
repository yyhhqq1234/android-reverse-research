.class Lcom/subao/common/b/b$a;
.super Ljava/lang/Object;
.source "AuthExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subao/common/b/b$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/b/b$1;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/subao/common/b/b$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/subao/common/b/b$a;)Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/subao/common/b/b$a;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/subao/common/b/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/subao/common/b/b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/subao/common/b/b$a;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/subao/common/b/b$a;->c:I

    return v0
.end method

.method static synthetic d(Lcom/subao/common/b/b$a;)[B
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/subao/common/b/b$a;->d:[B

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/subao/common/b/b$a;->a:Z

    .line 178
    iput-object v1, p0, Lcom/subao/common/b/b$a;->b:Ljava/lang/String;

    .line 179
    iput v0, p0, Lcom/subao/common/b/b$a;->c:I

    .line 180
    iput-object v1, p0, Lcom/subao/common/b/b$a;->d:[B

    .line 181
    return-void
.end method
