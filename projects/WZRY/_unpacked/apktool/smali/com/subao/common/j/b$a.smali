.class Lcom/subao/common/j/b$a;
.super Ljava/lang/Object;
.source "HttpBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Lcom/subao/common/j/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "GET"

    aput-object v1, v0, v2

    const-string v1, "POST"

    aput-object v1, v0, v3

    const-string v1, "PUT"

    aput-object v1, v0, v4

    const-string v1, "DELETE"

    aput-object v1, v0, v5

    sput-object v0, Lcom/subao/common/j/b$a;->a:[Ljava/lang/String;

    .line 51
    new-array v0, v6, [Lcom/subao/common/j/a$b;

    sget-object v1, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/j/a$b;->c:Lcom/subao/common/j/a$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/j/a$b;->d:Lcom/subao/common/j/a$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/subao/common/j/b$a;->b:[Lcom/subao/common/j/a$b;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/subao/common/j/a$b;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    sget-object v1, Lcom/subao/common/j/b$a;->a:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 58
    sget-object v2, Lcom/subao/common/j/b$a;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 59
    sget-object v1, Lcom/subao/common/j/b$a;->b:[Lcom/subao/common/j/a$b;

    aget-object v0, v1, v0

    .line 62
    :goto_1
    return-object v0

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
