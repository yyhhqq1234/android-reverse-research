.class Lcom/subao/common/l/c$h$b;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput p1, p0, Lcom/subao/common/l/c$h$b;->a:I

    .line 283
    iput-object p2, p0, Lcom/subao/common/l/c$h$b;->b:Ljava/lang/String;

    .line 284
    iput-object p3, p0, Lcom/subao/common/l/c$h$b;->c:Ljava/lang/String;

    .line 285
    return-void
.end method
