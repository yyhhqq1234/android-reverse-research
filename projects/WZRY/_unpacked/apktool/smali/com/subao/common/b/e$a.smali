.class Lcom/subao/common/b/e$a;
.super Ljava/lang/Object;
.source "AuthService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/j/n;


# direct methods
.method private constructor <init>(Lcom/subao/common/j/n;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/subao/common/b/e$a;->a:Lcom/subao/common/j/n;

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/j/n;Lcom/subao/common/b/e$1;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/subao/common/b/e$a;-><init>(Lcom/subao/common/j/n;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/subao/common/b/e$a;->a:Lcom/subao/common/j/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/subao/common/j/n;->a(Lcom/subao/common/j/a$c;)V

    .line 248
    return-void
.end method
