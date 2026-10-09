.class Lcom/subao/common/l/c$h$a;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:I

.field public final b:Lcom/subao/common/i/n$a;


# direct methods
.method constructor <init>(ILcom/subao/common/i/n$a;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p1, p0, Lcom/subao/common/l/c$h$a;->a:I

    .line 272
    iput-object p2, p0, Lcom/subao/common/l/c$h$a;->b:Lcom/subao/common/i/n$a;

    .line 273
    return-void
.end method
