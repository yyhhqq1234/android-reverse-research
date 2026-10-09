.class Lcom/subao/common/e/a$1;
.super Ljava/lang/Object;
.source "AccelDataRefresher.java"

# interfaces
.implements Lcom/subao/common/e/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/e/a;->a(Landroid/content/Context;Z)Lcom/subao/common/e/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/e/a;


# direct methods
.method constructor <init>(Lcom/subao/common/e/a;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/subao/common/e/a$1;->a:Lcom/subao/common/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    invoke-static {p1}, Lcom/subao/common/h/a;->a(Ljava/util/List;)V

    .line 733
    return-void
.end method
