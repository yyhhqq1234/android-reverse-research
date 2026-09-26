.class public Lcom/netease/codescanner/CodeScanConfig;
.super Ljava/lang/Object;


# instance fields
.field public camera_updateIntervalMs:J

.field public decode_formats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public decode_frameHeight:I

.field public decode_frameWidth:I

.field public decode_generateErrorPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0xfa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/CodeScanConfig;->decode_formats:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/codescanner/CodeScanConfig;->decode_generateErrorPreview:Z

    iput v1, p0, Lcom/netease/codescanner/CodeScanConfig;->decode_frameWidth:I

    iput v1, p0, Lcom/netease/codescanner/CodeScanConfig;->decode_frameHeight:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/netease/codescanner/CodeScanConfig;->camera_updateIntervalMs:J

    sget-object v0, Lcom/netease/codescanner/b;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/netease/codescanner/CodeScanConfig;->decode_formats:Ljava/util/Collection;

    return-void
.end method
