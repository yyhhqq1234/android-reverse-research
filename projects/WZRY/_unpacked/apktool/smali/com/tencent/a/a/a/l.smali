.class public abstract Lcom/tencent/a/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/a/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(IIILcom/tencent/a/b/h/a$a;[Ljava/lang/Object;)Lcom/tencent/a/a/a/j;
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/tencent/a/a/a/l;->a(III[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v0

    new-instance v1, Lcom/tencent/a/a/a/j;

    invoke-static {v0, p4}, Lcom/tencent/a/b/h/d;->a(Ljava/net/URL;Lcom/tencent/a/b/h/a$a;)[B

    move-result-object v0

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/tencent/a/a/a/j;-><init>(III[B)V

    return-object v1
.end method

.method public varargs abstract a(III[Ljava/lang/Object;)Ljava/net/URL;
.end method
