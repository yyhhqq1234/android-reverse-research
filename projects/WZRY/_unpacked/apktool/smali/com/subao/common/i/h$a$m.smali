.class abstract Lcom/subao/common/i/h$a$m;
.super Lcom/subao/common/i/h$a$b;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "m"
.end annotation


# instance fields
.field final synthetic f:Lcom/subao/common/i/h$a;


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 617
    iput-object p1, p0, Lcom/subao/common/i/h$a$m;->f:Lcom/subao/common/i/h$a;

    .line 618
    const/4 v3, 0x1

    const-wide/16 v4, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/i/h$a$b;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;IJ)V

    .line 619
    return-void
.end method
