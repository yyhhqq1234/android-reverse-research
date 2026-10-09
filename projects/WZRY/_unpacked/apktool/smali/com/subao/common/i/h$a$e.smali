.class abstract Lcom/subao/common/i/h$a$e;
.super Lcom/subao/common/i/h$a$b;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "e"
.end annotation


# instance fields
.field final synthetic d:Lcom/subao/common/i/h$a;


# direct methods
.method protected constructor <init>(Lcom/subao/common/i/h$a;)V
    .locals 2

    .prologue
    .line 899
    iput-object p1, p0, Lcom/subao/common/i/h$a$e;->d:Lcom/subao/common/i/h$a;

    .line 900
    const-string v0, "Event"

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/subao/common/i/h$a$b;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;I)V

    .line 901
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    const-string v0, "/v3/report/client/event"

    return-object v0
.end method
