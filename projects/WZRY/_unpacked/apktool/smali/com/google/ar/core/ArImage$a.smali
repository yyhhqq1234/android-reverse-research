.class final Lcom/google/ar/core/ArImage$a;
.super La/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/ArImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private final synthetic c:Lcom/google/ar/core/ArImage;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/ArImage;JI)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/ArImage$a;->c:Lcom/google/ar/core/ArImage;

    invoke-direct {p0}, La/a/b;-><init>()V

    iput-wide p2, p0, Lcom/google/ar/core/ArImage$a;->a:J

    iput p4, p0, Lcom/google/ar/core/ArImage$a;->b:I

    return-void
.end method


# virtual methods
.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/ArImage$a;->c:Lcom/google/ar/core/ArImage;

    iget-wide v2, p0, Lcom/google/ar/core/ArImage$a;->a:J

    iget v1, p0, Lcom/google/ar/core/ArImage$a;->b:I

    invoke-static {v0, v2, v3, v1}, Lcom/google/ar/core/ArImage;->access$200(Lcom/google/ar/core/ArImage;JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final getPixelStride()I
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/ArImage$a;->c:Lcom/google/ar/core/ArImage;

    iget-wide v2, p0, Lcom/google/ar/core/ArImage$a;->a:J

    iget v1, p0, Lcom/google/ar/core/ArImage$a;->b:I

    invoke-static {v0, v2, v3, v1}, Lcom/google/ar/core/ArImage;->access$100(Lcom/google/ar/core/ArImage;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.Plane.getPixelStride()."

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method public final getRowStride()I
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/ArImage$a;->c:Lcom/google/ar/core/ArImage;

    iget-wide v2, p0, Lcom/google/ar/core/ArImage$a;->a:J

    iget v1, p0, Lcom/google/ar/core/ArImage$a;->b:I

    invoke-static {v0, v2, v3, v1}, Lcom/google/ar/core/ArImage;->access$000(Lcom/google/ar/core/ArImage;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.Plane.getRowStride()."

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method
