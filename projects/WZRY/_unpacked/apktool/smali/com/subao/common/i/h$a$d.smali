.class Lcom/subao/common/i/h$a$d;
.super Lcom/subao/common/i/h$a$c;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic e:Lcom/subao/common/i/h$a;


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Lcom/subao/common/i/p$c;)V
    .locals 1

    .prologue
    .line 889
    iput-object p1, p0, Lcom/subao/common/i/h$a$d;->e:Lcom/subao/common/i/h$a;

    .line 890
    const-string v0, "DelayQualityV2Feedback"

    invoke-direct {p0, p1, v0, p2}, Lcom/subao/common/i/h$a$c;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;Lcom/subao/common/c;)V

    .line 891
    return-void
.end method
