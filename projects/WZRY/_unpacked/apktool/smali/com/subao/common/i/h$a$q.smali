.class Lcom/subao/common/i/h$a$q;
.super Ljava/lang/Object;
.source "MessageSenderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "q"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/subao/common/i/h$a$q;->a:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Lcom/subao/common/e/am;->b()Lcom/subao/common/e/am;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/i/h$a$q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/subao/common/e/am;->b(Ljava/lang/String;)V

    .line 320
    return-void
.end method
