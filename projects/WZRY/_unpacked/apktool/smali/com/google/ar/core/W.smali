.class final enum Lcom/google/ar/core/W;
.super Lcom/google/ar/core/Session$a;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/ar/core/Session$a;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/google/ar/core/exceptions/SessionNotPausedException;

    invoke-direct {v0}, Lcom/google/ar/core/exceptions/SessionNotPausedException;-><init>()V

    throw v0
.end method
