.class final Lcom/google/ar/core/ImageMetadata$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/ImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/ImageMetadata$a;->a:J

    iput v2, p0, Lcom/google/ar/core/ImageMetadata$a;->b:I

    iput v2, p0, Lcom/google/ar/core/ImageMetadata$a;->c:I

    return-void
.end method
