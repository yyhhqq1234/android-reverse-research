.class final enum Lcom/google/ar/core/N;
.super Lcom/google/ar/core/Session$a;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 3

    const/16 v0, 0x14

    const/16 v1, -0xf

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/ar/core/Session$a;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Internet permission is not granted"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
