.class Lcom/subao/common/b/b$d;
.super Ljava/lang/Object;
.source "AuthExecutor.java"

# interfaces
.implements Lcom/subao/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/intf/RequestTrialCallback;


# direct methods
.method private constructor <init>(Lcom/subao/common/intf/RequestTrialCallback;)V
    .locals 0
    .param p1    # Lcom/subao/common/intf/RequestTrialCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p1, p0, Lcom/subao/common/b/b$d;->a:Lcom/subao/common/intf/RequestTrialCallback;

    .line 770
    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/intf/RequestTrialCallback;Lcom/subao/common/b/b$1;)V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/subao/common/b/b$d;-><init>(Lcom/subao/common/intf/RequestTrialCallback;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/subao/common/c/f$a$a;I)V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/subao/common/b/b$d;->a:Lcom/subao/common/intf/RequestTrialCallback;

    if-nez v0, :cond_0

    .line 786
    :goto_0
    return-void

    .line 778
    :cond_0
    if-gez p2, :cond_1

    .line 779
    const/16 v0, 0x3ee

    .line 785
    :goto_1
    iget-object v1, p0, Lcom/subao/common/b/b$d;->a:Lcom/subao/common/intf/RequestTrialCallback;

    invoke-interface {v1, v0}, Lcom/subao/common/intf/RequestTrialCallback;->onRequestTrialResult(I)V

    goto :goto_0

    .line 780
    :cond_1
    const/16 v0, 0xc9

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/subao/common/c/f$a$a;->b:Lcom/subao/common/c/f$a$a;

    if-ne v0, p1, :cond_2

    .line 781
    const/4 v0, 0x0

    goto :goto_1

    .line 783
    :cond_2
    const/16 v0, 0x3f0

    goto :goto_1
.end method
