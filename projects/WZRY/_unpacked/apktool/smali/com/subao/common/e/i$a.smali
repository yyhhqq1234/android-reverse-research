.class Lcom/subao/common/e/i$a;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/subao/common/e/i;

.field private final d:J


# direct methods
.method private constructor <init>(Lcom/subao/common/e/i;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/subao/common/e/i$a;->c:Lcom/subao/common/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/subao/common/e/i$a;->a:Ljava/lang/Object;

    .line 127
    iput-object p3, p0, Lcom/subao/common/e/i$a;->b:Ljava/lang/Object;

    .line 128
    iput-wide p4, p0, Lcom/subao/common/e/i$a;->d:J

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/e/i;Ljava/lang/Object;Ljava/lang/Object;JLcom/subao/common/e/i$1;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/subao/common/e/i$a;-><init>(Lcom/subao/common/e/i;Ljava/lang/Object;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic a(Lcom/subao/common/e/i$a;)J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/subao/common/e/i$a;->d:J

    return-wide v0
.end method
