.class final enum Lcom/google/ar/core/K;
.super Lcom/google/ar/core/Session$a;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 3

    const/16 v0, 0x12

    const/16 v1, -0x14

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/ar/core/Session$a;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You have changed the camera configuration. You must call ArImage.close for all acquired images before calling Session.resume."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
